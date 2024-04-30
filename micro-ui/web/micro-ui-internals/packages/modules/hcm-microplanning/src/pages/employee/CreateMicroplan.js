import React, { useState, useEffect, useCallback } from "react";
import { useTranslation } from "react-i18next";
import { timeLineOptions } from "../../configs/timeLineOptions.json";
import Upload from "./Upload";
import Hypothesis from "./Hypothesis";
import RuleEngine from "./RuleEngine";
import Mapping from "./Mapping";
import Navigator from "../../components/Nagivator";
import { Toast } from "@egovernments/digit-ui-components";
import MicroplanPreview from "./MicroplanPreview";
import MicroplanDetails from "../../components/MicroplanDetails";
import { Request } from "@egovernments/digit-ui-libraries";
import { parseXlsxToJsonMultipleSheets } from "../../utils/exceltojson";

export const components = {
  MicroplanDetails,
  Upload,
  Hypothesis,
  RuleEngine,
  Mapping,
  MicroplanPreview,
};

import XLSX from "xlsx";

// will be changed laters
const MicroplanName = "microplan 1912";
const campaignType = "ITIN";

// Main component for creating a microplan
const CreateMicroplan = () => {
  // Fetching data using custom MDMS hook
  const { id: campaignId = "" } = Digit.Hooks.useQueryParams();
  const { isLoading, data } = Digit.Hooks.useCustomMDMS("mz", "hcm-microplanning", [{ name: "UIConfiguration" }]);
  const { mutate: CreateMutate } = Digit.Hooks.microplan.useCreatePlanConfig();
  const { mutate: UpdateMutate } = Digit.Hooks.microplan.useUpdatePlanConfig();
  const { t } = useTranslation();

  // States
  const [microplanData, setMicroplanData] = useState();
  const [operatorsObject, setOperatorsObject] = useState([]);
  const [toastCreateMicroplan, setToastCreateMicroplan] = useState();
  const [checkForCompleteness, setCheckForCompletion] = useState([]);

  // useEffect to initialise the data from MDMS
  useEffect(() => {
    let temp;
    if (!data || !data["hcm-microplanning"]) return;
    let UIConfiguration = data["hcm-microplanning"]["UIConfiguration"];
    if (UIConfiguration) temp = UIConfiguration.find((item) => item.name === "ruleConfigure");
    if (!(temp && temp.ruleConfigureOperators)) return;
    setOperatorsObject(temp.ruleConfigureOperators);
  }, [data]);

  // useEffect to store data in session storage
  useEffect(() => {
    if (!microplanData) return;
    Digit.SessionStorage.set("microplanData", microplanData);
  }, [microplanData]);

  // useEffect to store data in session storage
  useEffect(() => {
    const data = Digit.SessionStorage.get("microplanData");
    let statusData = {};
    let toCheckCompletenesData = [];
    timeLineOptions.forEach((item) => {
      statusData[item.name] = false;
      if (item?.checkForCompleteness) toCheckCompletenesData.push(item.name);
    });
    if (data && data?.status) {
      if (Object.keys(data?.status) === 0) setMicroplanData({ ...data, status: statusData });
      else setMicroplanData({ ...data });
    }
    setCheckForCompletion(toCheckCompletenesData);
  }, []);

  // An addon function to pass to Navigator
  const nextEventAddon = useCallback(
    async (currentPage, checkDataCompletion) => {
      if (!microplanData) return;
      if (!microplanData?.microplanDetails?.name) return;
      setMicroplanData((previous) => ({
        ...previous,
        status: { ...previous?.status, [currentPage?.name]: checkDataCompletion === "valid" ? true : false },
      }));
      if (currentPage?.name !== "FORMULA_CONFIGURATION") return;
      let checkStatusValues = _.cloneDeep(microplanData?.status) || {};
      if (Object.keys(checkStatusValues).length == 0) return;
      checkStatusValues[currentPage?.name] = checkDataCompletion === "valid" ? true : false;
      let check = true;
      for (let data of checkForCompleteness) {
        check = check && checkStatusValues?.[data];
      }
      if (!check) return;
      let body = mapDataForApi(microplanData, operatorsObject, microplanData?.microplanDetails?.name, campaignId);
      if (microplanData && !microplanData.planConfigurationId) {
        createPlanConfiguration(body);
      } else if (microplanData && microplanData.planConfigurationId) {
        updatePlanConfiguration(body);
      }
    },
    [microplanData, UpdateMutate, CreateMutate]
  );

  const createPlanConfiguration = async (body) => {
    await CreateMutate(body, {
      onSuccess: async (data) => {
        setMicroplanData((previous) => ({
          ...previous,
          planConfigurationId: data?.PlanConfiguration[0]?.id,
          auditDetails: data?.PlanConfiguration[0]?.auditDetails,
        }));
        setToastCreateMicroplan({ state: "success", message: t("SUCCESS_DATA_SAVED") });
        setTimeout(() => {
          setToastCreateMicroplan(undefined);
        }, 2000);
      },
      onError: (error, variables) => {
        setToastCreateMicroplan({
          message: t("ERROR_DATA_NOT_SAVED"),
          state: "error",
        });
        setTimeout(() => {
          setToastCreateMicroplan(undefined);
        }, 2000);
      },
    });
  };

  const updatePlanConfiguration = async (body) => {
    body.PlanConfiguration["id"] = microplanData?.planConfigurationId;
    body.PlanConfiguration["auditDetails"] = microplanData?.auditDetails;
    await UpdateMutate(body, {
      onSuccess: async (data) => {
        setToastCreateMicroplan({ state: "success", message: t("SUCCESS_DATA_SAVED") });
        setTimeout(() => {
          setToastCreateMicroplan(undefined);
        }, 2000);
      },
      onError: (error, variables) => {
        setToastCreateMicroplan({
          message: t("ERROR_DATA_NOT_SAVED"),
          state: "error",
        });
        setTimeout(() => {
          setToastCreateMicroplan(undefined);
        }, 2000);
      },
    });
  };

  const setCurrentPageExternally = useCallback(
    (props) => {
      switch (props.method) {
        case "set":
          let currentPage;
          const data = Digit.SessionStorage.get("microplanData");
          if (data && data?.currentPage) currentPage = data.currentPage;
          if (currentPage && props && props?.setCurrentPage && timeLineOptions.find((item) => item.id === currentPage?.id)) {
            props.setCurrentPage(currentPage);
            return true;
          }
          break;
        case "save":
          if (props && props.currentPage) {
            setMicroplanData((previous) => ({ ...previous, currentPage: props.currentPage }));
          }
          break;
      }
    },
    [microplanData, setMicroplanData, Navigator]
  );

  return (
    <div className="create-microplan">
      <Navigator
        config={timeLineOptions}
        checkDataCompleteness={true}
        stepNavigationActive={true}
        components={components}
        childProps={{ microplanData, setMicroplanData, campaignType, MicroplanName: microplanData?.microplanDetails?.name }}
        nextEventAddon={nextEventAddon}
        setCurrentPageExternally={setCurrentPageExternally}
      />

      {toastCreateMicroplan && toastCreateMicroplan.state === "success" && (
        <Toast style={{ bottom: "5.5rem" }} label={toastCreateMicroplan.message} onClose={() => setToastCreateMicroplan(undefined)} />
      )}
      {toastCreateMicroplan && toastCreateMicroplan.state === "error" && (
        <Toast style={{ bottom: "5.5rem" }} label={toastCreateMicroplan.message} onClose={() => setToastCreateMicroplan(undefined)} error />
      )}
    </div>
  );
};

export const mapDataForApi = (data, Operators, microplanName, campaignId) => {
  let files = [],
    resourceMapping = [];
  Object.values(data?.upload).forEach((item) => {
    if (item?.error) return;
    const data = { filestoreId: item.filestoreId, inputFileType: item.fileType, templateIdentifier: item.section };
    files.push(data);
  });
  Object.values(data?.upload).forEach((item) => {
    if (item?.error) return;
    resourceMapping.push(item?.resourceMapping);
  });
  resourceMapping = resourceMapping.flatMap((inner) => inner);

  // return a Create API body
  return {
    PlanConfiguration: {
      status: "DRAFT",
      tenantId: Digit.ULBService.getStateId(),
      name: microplanName,
      executionPlanId: campaignId,
      files,
      assumptions: data?.hypothesis?.map((item) => {
        let templist = JSON.parse(JSON.stringify(item));
        delete templist.id;
        return templist;
      }),
      operations: data?.ruleEngine?.map((item) => {
        const data = JSON.parse(JSON.stringify(item));
        delete data.id;
        const operator = Operators.find((e) => e.name === data.operator);
        if (operator && operator.code) data.operator = operator?.code;
        return data;
      }),
      resourceMapping,
    },
  };
};

export default CreateMicroplan;