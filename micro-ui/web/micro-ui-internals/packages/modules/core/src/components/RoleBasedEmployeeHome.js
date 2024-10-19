import React, { Fragment, useState, useEffect } from "react";
import { Button, LandingPageCard, LandingPageWrapper, Loader } from "@egovernments/digit-ui-components";
import { useTranslation } from "react-i18next";
import { useHistory } from "react-router-dom";

const DIGIT_UI_CONTEXTS = ["digit-ui", "works-ui", "workbench-ui", "health-ui", "sanitation-ui", "core-ui", "mgramseva-web", "sandbox-ui"];


const MODULE_CONFIG = {
  PGR: {
    howItWorksLink: "HOW_IT_WORKS_PGR",
    userManualLink: "PGR_INFO_LINK",
  },
  HRMS: {
    howItWorksLink: "HOW_IT_WORKS_HRMS",
    userManualLink: "HRMS_INFO_LINK",
  },
  // Add more modules as needed here
};

export const RoleBasedEmployeeHome = ({ modules, additionalComponent }) => {
  const { isLoading, data } = Digit.Hooks.useAccessControl();
  const isMultiRootTenant = Digit.Utils.getMultiRootTenant();
  const { t } = useTranslation();
  const history = useHistory();
  const tenantId = Digit.ULBService.getStateId();
  let sortedConfigEmployeesSidebar = null;
  const [mdmsOrderData, setMdmsOrderData] = useState([{}]);

  const { data: MdmsRes } = Digit.Hooks.useCustomMDMS(
    tenantId,
    "HomeScreenOrder",
    [
      {
        name: "CardsAndLinksOrder",
      },
    ],
    {
      select: (data) => {
        return data?.["HomeScreenOrder"]?.["CardsAndLinksOrder"];
      },
    }
  );



  const { data: moduleConfigData, isLoading: isModuleConfigLoading } = Digit.Hooks.useCustomMDMS(
    tenantId,
    "SandBoxLanding",
    [
      {
        name: "AdditionalModuleLinks",
      },
    ],
    {
  
      select: (data) => {
        return data?.["SandBoxLanding"]?.["AdditionalModuleLinks"];
      },
    }
  );
  
  useEffect(() => {
    setMdmsOrderData(MdmsRes);
  }, [MdmsRes]);

  const transformURL = (url = "") => {
    if (url == "/") {
      return;
    }
    if (url?.indexOf(`/${window?.contextPath}`) === -1) {
      let updatedUrl = null;
      if (isMultiRootTenant) {
        url = url.replace("/sandbox-ui/employee", `/sandbox-ui/${tenantId}/employee`);
        updatedUrl = url;
      } else {
        updatedUrl = DIGIT_UI_CONTEXTS?.every((e) => url?.indexOf(`/${e}`) === -1) ? "/employee/" + url : url;
      }
      return updatedUrl;
    } else {
      return url;
    }
  };

  // Function to get links by type from the module configuration
  const getLinkByType = (moduleData, type) => {
    const moduleConfig = moduleConfigData.find((config) => config.moduleName === moduleData.module);
    if (!moduleConfig) return null;

    const linkKey = moduleConfig[type];
    return moduleData?.links?.find((item) => item?.displayName === linkKey);
  };

  // Function to filter links dynamically based on module config
  const getFilteredLinks = (moduleData) => {
    const moduleConfig = moduleConfigData.find((config) => config.moduleName === moduleData.module);
    return moduleData.links?.filter((item) => {
      const displayName = item.displayName;
      const isNotConfigureMaster = displayName !== "Configure_master";
      const isNotHowItWorks = displayName !== moduleConfig?.howItWorksLink;
      const isNotUserManual = displayName !== moduleConfig?.userManualLink;

      return isNotConfigureMaster && isNotHowItWorks && isNotUserManual;
    });
  };

  const configEmployeeSideBar = data?.actions
    .filter((e) => e.url === "card" && e.parentModule)
    .reduce((acc, item) => {
      const module = item.parentModule;
      if (!acc[module]) {
        acc[module] = {
          module: module,
          kpis: [],
          icon: item.leftIcon ? Digit.Utils.iconRender(item.leftIcon, "white") : "",
          label: Digit.Utils.locale.getTransformedLocale(`${module}_CARD_HEADER`),
          links: [],
        };
      }
      const linkUrl = transformURL(item.navigationURL);
      const queryParamIndex = linkUrl.indexOf("?");
      acc[module].links.push({
        link: linkUrl,
        icon: item.leftIcon,
        queryParams: queryParamIndex === -1 ? null : linkUrl.substring(queryParamIndex),
        label: t(Digit.Utils.locale.getTransformedLocale(`${module}_LINK_${item.displayName}`)),
        displayName: item.displayName,
      });
      return acc;
    }, {});

  if (isLoading) {
    return <Loader />;
  }

  if (!configEmployeeSideBar) {
    return "";
  }

  const sortCardAndLink = (configEmployeeSideBar) => {
    const sortedModules = Object.keys(configEmployeeSideBar)
      .sort((a, b) => {
        const cardOrderA = mdmsOrderData?.find((item) => item.moduleType === "card" && item.name === a)?.order || null;
        const cardOrderB = mdmsOrderData?.find((item) => item.moduleType === "card" && item.name === b)?.order || null;
        return cardOrderA - cardOrderB;
      })
      .reduce((acc, module) => {
        const sortedLinks = configEmployeeSideBar?.[module]?.links?.sort((linkA, linkB) => {
          const labelA = linkA?.displayName;
          const labelB = linkB?.displayName;
          const orderA =
            mdmsOrderData?.find((item) => item.moduleType === "link" && item.name === `${module}.${labelA.replace(/\s+/g, "_")}`)?.order || null;
          const orderB =
            mdmsOrderData?.find((item) => item.moduleType === "link" && item.name === `${module}.${labelB.replace(/\s+/g, "_")}`)?.order || null;

          return orderA - orderB;
        });

        acc[module] = {
          ...configEmployeeSideBar[module],
          links: sortedLinks,
        };

        return acc;
      }, {});

    return sortedModules;
  };

  if (isMultiRootTenant) {
    sortedConfigEmployeesSidebar = sortCardAndLink(configEmployeeSideBar);
  } else {
    sortedConfigEmployeesSidebar = configEmployeeSideBar;
  }

  const children = Object.keys(sortedConfigEmployeesSidebar)?.map((current, index) => {
    const moduleData = sortedConfigEmployeesSidebar?.[current];
    const configureData = moduleData?.links?.find((item) => item?.displayName === "Configure_master");
    const howItWorks = getLinkByType(moduleData, "howItWorksLink");
    const userManual = getLinkByType(moduleData, "userManualLink");

    const propsForModuleCard = {
      icon: "SupervisorAccount",
      moduleName: t(moduleData?.label),
      metrics: [],
      links: Digit.Utils.getMultiRootTenant() ? getFilteredLinks(moduleData) : moduleData.links,
      centreChildren: [
        <div>{t(Digit.Utils.locale.getTransformedLocale(`MODULE_CARD_DESC_${current}`))}</div>,
        userManual && (
          <Button
            variation="teritiary"
            label={userManual?.label}
            icon={userManual?.icon}
            type="button"
            size={"medium"}
            onClick={() => window.open(userManual?.link, "_blank")}
            style={{ padding: "0px" }}
          />
        ),
      ],
      endChildren: Digit.Utils.getMultiRootTenant()
        ? [
            configureData && (
              <Button
                variation="teritiary"
                label={configureData?.label}
                icon={configureData?.icon}
                type="button"
                size={"medium"}
                onClick={() => history?.push(configureData?.link)}
                style={{ padding: "0px" }}
              />
            ),
            howItWorks && (
              <Button
                variation="teritiary"
                label={howItWorks?.label}
                icon={howItWorks?.icon}
                type="button"
                size={"medium"}
                onClick={() => window.open(howItWorks?.link, "_blank")}
                style={{ padding: "0px" }}
              />
            ),
          ]
        : null,
    };

    return <LandingPageCard buttonSize={"medium"} {...propsForModuleCard} />;
  });

  return (
    <>
      <LandingPageWrapper>{React.Children.map(children, (child) => React.cloneElement(child))}</LandingPageWrapper>
    </>
  );
};
