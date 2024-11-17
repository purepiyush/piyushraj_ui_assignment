import { Header, InboxSearchComposer } from "@egovernments/digit-ui-react-components";
import React, { Fragment, useState, useEffect } from "react";
import { useTranslation } from "react-i18next";
import { useHistory } from "react-router-dom";
import facilityMappingConfig from "../../configs/FacilityMappingConfig";
import { Loader, ActionBar, Button } from "@egovernments/digit-ui-components";
import WorkflowCommentPopUp from "../../components/WorkflowCommentPopUp";
import ConfirmationPopUp from "../../components/ConfirmationPopUp";

const FacilityCatchmentMapping = () => {
  const [actionBarPopUp, setactionBarPopUp] = useState(false);
  const { t } = useTranslation();
  const history = useHistory();
  const url = Digit.Hooks.useQueryParams();
  const tenantId = Digit.ULBService.getCurrentTenantId();
  const user = Digit.UserService.getUser();
  const userRoles = user?.info?.roles?.map((roleData) => roleData?.code);
  const [showPopup, setShowPopup] = useState(false);
  const FacilityPopUp = Digit.ComponentRegistryService.getComponent("FacilityPopup");
  const [currentRow, setCurrentRow] = useState(null);
  const [projectType, setProjectType] = useState('');
  const [disabledAction, setDisabledAction] = useState(false);
  const [censusQueryName, setCensusQueryName] = useState("censusData");
  // Check if the user has the 'rootfacilitycatchmentmapper' role
  const isRootApprover = userRoles?.includes("ROOT_FACILITY_CATCHMENT_MAPPER");

  const {
    isLoading: isPlanEmpSearchLoading,
    data: planEmployee,
    error: planEmployeeError,
    refetch: refetchPlanEmployee,
  } = Digit.Hooks.microplanv1.usePlanSearchEmployeeWithTagging({
    tenantId: tenantId,
    body: {
      PlanEmployeeAssignmentSearchCriteria: {
        tenantId: tenantId,
        active: true,
        planConfigurationId: url?.microplanId,
        employeeId: [user?.info?.uuid],
      },
    },
    config: {
      enabled: isRootApprover,
    },
  });


  const {
    isLoading: isLoadingCampaignObject,
    data: campaignObject,
    error: errorCampaign,
    refetch: refetchCampaign,
  } = Digit.Hooks.microplanv1.useSearchCampaign(
    {
      CampaignDetails: {
        tenantId,
        ids: [url?.campaignId],
      },
    },
    {
      enabled: url?.campaignId ? true : false,
    }
  );

  // Custom hook to fetch census data based on microplanId 
  const reqCriteriaResource = {
    url: `/census-service/_search`,
    body: {
      CensusSearchCriteria: {
        tenantId: tenantId,
        facilityAssigned: false,
        source: url?.microplanId,
        jurisdiction: planEmployee?.planData?.[0]?.jurisdiction,
      },
    },
    config: {
      enabled: planEmployee?.planData?.[0]?.jurisdiction ? true : false,
    },
    changeQueryName: censusQueryName
  };

  const { isLoading, data, isFetching, refetch } = Digit.Hooks.useCustomAPIHook(reqCriteriaResource);


  const { isLoading: isLoadingPlanObject, data: planObject, error: errorPlan, refetch: refetchPlan } = Digit.Hooks.microplanv1.useSearchPlanConfig(
    {
      PlanConfigurationSearchCriteria: {
        tenantId,
        id: url?.microplanId,
      },
    },
    {
      enabled: isRootApprover && data?.TotalCount === 0,
    }
  );


   // fetch the process instance for the current microplan to check if we need to disabled actions or not
   const { isLoading:isProcessLoading, data: processData, } = Digit.Hooks.useCustomAPIHook({
    url: "/egov-workflow-v2/egov-wf/process/_search",
    params: {
        tenantId: tenantId,
        history: true,
        businessIds: url?.microplanId,
    },
    config: {
        enabled: true,
        select: (data) => {
          return data?.ProcessInstances;
      },
    },
  });


  useEffect(() => {
    if (processData && processData.some((instance) => instance.action === "APPROVE_CENSUS_DATA")) {
      setDisabledAction(true);
    }
  }, [processData]);


  const handleActionBarClick = () => {
    setactionBarPopUp(true);
  };

  const closeActionBarPopUp = () => {
    setactionBarPopUp(false);
  };

  const updateWorkflowForFooterAction = () => {
    const updatedPlanConfig = {
      ...planObject,
      workflow: {
        ...planObject?.workflow,  // Keep existing workflow properties if any
        action: "FINALIZE_CATCHMENT_MAPPING",
      },
    };

    return updatedPlanConfig;
  };

  // Effect to update projectType based on campaign data
  useEffect(() => {
    if (campaignObject?.projectType) {
      setProjectType(campaignObject?.projectType);
    }
  }, [campaignObject]);

  const onClickRow = (row) => {
    setShowPopup(true)
    setCurrentRow(row.original)
  }

  const config = facilityMappingConfig(projectType, disabledAction);

  if (isPlanEmpSearchLoading || isLoading || isLoadingPlanObject || isLoadingCampaignObject || isProcessLoading)
    return <Loader />

  return (
    <div style={{ marginBottom: isRootApprover && data?.TotalCount === 0 && planObject?.status === "CENSUS_DATA_APPROVED" ?"2.5rem" :"0rem"}}>
      <Header styles={{ marginBottom: "1rem" }}>{t("MICROPLAN_ASSIGN_CATCHMENT_VILLAGES")}</Header>
      <div className="summary-sub-heading" style={{marginBottom:"1.5rem"}}>
      {`"${t("HCM_MICROPLAN_MICROPLAN_NAME_LABEL")}: ${planObject?.name || t("NO_NAME_AVAILABLE")}"`}
    </div>
      <div className="inbox-search-wrapper">
        <InboxSearchComposer
          configs={config}
          additionalConfig={{
            resultsTable: {
              onClickRow,
            }
          }}
        ></InboxSearchComposer>
      </div>

      {isRootApprover && data?.TotalCount === 0 && planObject?.status === "CENSUS_DATA_APPROVED" &&
        <ActionBar
          actionFields={[
            <Button icon="CheckCircle" label={t(`HCM_MICROPLAN_FINALIZE_FACILITY_TO_VILLAGE_ASSIGNMENT`)} onClick={handleActionBarClick} type="button" variation="primary" />,
          ]}
          className=""
          maxActionFieldsAllowed={5}
          setactionFieldsToRight
          sortActionFields
          style={{}}
        />}

      {showPopup && currentRow && (
        <FacilityPopUp
          details={currentRow}
          onClose={() => {
            setShowPopup(false);
            setCurrentRow(null);
            setCensusQueryName(`censusData${Date.now()}`);
          }}
          updateDetails={setCurrentRow}
        />
      )}

      {actionBarPopUp && (
        <ConfirmationPopUp
          onClose={closeActionBarPopUp}
          alertMessage={t(`HCM_MICROPLAN_FINALIZE_FACILITY_TO_VILLAGE_ASSIGNMENT_ALERT_MESSAGE`)}
          submitLabel={t(`HCM_MICROPLAN_FINALIZE_FACILITY_TO_VILLAGE_ASSIGNMENT_SUBMIT_ACTION`)}
          cancelLabel={t(`HCM_MICROPLAN_FINALIZE_FACILITY_TO_VILLAGE_ASSIGNMENT_CANCEL_ACTION`)}
          url="/plan-service/config/_update"
          requestPayload={{ PlanConfiguration: updateWorkflowForFooterAction() }}
          onSuccess={(data) => {
            history.push(`/${window.contextPath}/employee/microplan/village-finalise-success`, {
              fileName: data?.PlanConfiguration?.[0]?.name,
              message: t(`VILLAGE_ASSIGNED_TO_FACILITIES_SUCCESSFUL`),
              back: t(`GO_BACK_TO_HOME`),
              backlink: `/${window.contextPath}/employee`
            });
          }}
        />
      )}
    </div>
  );
};

export default FacilityCatchmentMapping;
