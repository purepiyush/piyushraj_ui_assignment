import { HRIcon, EmployeeModuleCard, AttendanceIcon, PropertyHouse } from "@egovernments/digit-ui-react-components";
import React from "react";
import { useTranslation } from "react-i18next";

const SampleCard = () => {
 
  const { t } = useTranslation();

  const propsForModuleCard = {
    Icon: <PropertyHouse />,
    moduleName: t("Sample"),
    kpis: [
      {
        label: t("TOTAL_PGR"),
        link: `/${window?.contextPath}/employee/pgr/inbox`,
      },
      {
        label: t("TOTAL_NEARING_SLA"),
        link: `/${window?.contextPath}/employee/pgr/inbox`,
      },
    ],
    links: [
   
     
      {
        label: t("Inbox"),
        link: `/${window?.contextPath}/employee/sample/inbox-complaint`,
      },
      {
        label: t("New complaint"),
        link: `/${window?.contextPath}/employee/sample/create-complaint`,
      },
      // {
      //   label: t("Individual Create"),
      //   link: `/${window?.contextPath}/employee/sample/create-individual`,

      // },
      // {
      //   label: t("Sample Create"),
      //   link: `/${window?.contextPath}/employee/sample/sample-create`,

      // },
      // {
      //   label: t("Sample Search"),
      //   link: `/${window?.contextPath}/employee/sample/sample-search`,

      // },
      // {
      //   label: t("Sample View"),
      //   link: `/${window?.contextPath}/employee/sample/sample-view??tenantId=pg.citya&estimateNumber=ES/2023-24/002390&projectNumber=PJ/2023-24/02/002830`,

      // },
      // {
      //   label: t("Sample Components"),
      //   link: `/${window?.contextPath}/employee/sample/sample-components`,
      // },
      // {
      //   label: t("Individual Tab Search"),
      //   link: `/${window?.contextPath}/employee/sample/tab-search-individual`,
      // },
      // {
      //   label: t("Individual View Details"),
      //   link: `/${window?.contextPath}/employee/sample/individual-details-view`,
      // },
      
    ],
  };

  return <EmployeeModuleCard {...propsForModuleCard} />;
};

export default SampleCard;