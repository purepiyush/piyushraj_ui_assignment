import React, { useState, useMemo, useRef, useEffect } from "react";
import { UploadIcon, FileIcon, DeleteIconv2, Toast, Card, Header } from "@egovernments/digit-ui-react-components";
import { useTranslation } from "react-i18next";
import { useLocation , useHistory } from "react-router-dom";
import { Wrapper } from "./SelectingBoundaryComponent";
import { Loader } from "@egovernments/digit-ui-components";

const UpdateBoundaryWrapper = ({ onSelect,...props }) => {
  const { t } = useTranslation();
  const tenantId = Digit.ULBService.getStateId();
  const searchParams = new URLSearchParams(location.search);
  const parentId = searchParams.get("parentId");
  const id = searchParams.get("id");
  // const hierarchyType = props?.props?.hierarchyType;
  const { data: hierarchyConfig } = Digit.Hooks.useCustomMDMS(tenantId, "HCM-ADMIN-CONSOLE", [{ name: "hierarchyConfig" }]);
  const [selectedData, setSelectedData] = useState(props?.props?.sessionData?.HCM_CAMPAIGN_SELECTING_BOUNDARY_DATA?.boundaryType?.selectedData || []);
  const [boundaryOptions, setBoundaryOptions] = useState(
    props?.props?.sessionData?.HCM_CAMPAIGN_SELECTING_BOUNDARY_DATA?.boundaryType?.boundaryData || {}
  );
  const [hierarchyType , SetHierarchyType] = useState(props?.props?.hierarchyType);
  const lowestHierarchy = useMemo(() => {
    return hierarchyConfig?.["HCM-ADMIN-CONSOLE"]?.hierarchyConfig?.find((item) => item.hierarchy === hierarchyType)?.lowestHierarchy;
  }, [hierarchyConfig, hierarchyType]);

  const reqCriteriaCampaign = {
    url: `/project-factory/v1/project-type/search`,
    body: {
        CampaignDetails: {
        tenantId: tenantId,
        ids: [parentId],
      },
    },
  };


  const { data: CampaignData } = Digit.Hooks.useCustomAPIHook(reqCriteriaCampaign);


  useEffect (() => {
    if(!id) setSelectedData(CampaignData?.CampaignDetails?.[0]?.boundaries);
    SetHierarchyType(CampaignData?.CampaignDetails?.[0]?.hierarchyType);
  },[CampaignData])

  useEffect(() => {
    setSelectedData(
      props?.props?.sessionData?.HCM_CAMPAIGN_SELECTING_BOUNDARY_DATA?.boundaryType?.selectedData
        ? props?.props?.sessionData?.HCM_CAMPAIGN_SELECTING_BOUNDARY_DATA?.boundaryType?.selectedData
        : []
    );
    setBoundaryOptions(
      props?.props?.sessionData?.HCM_CAMPAIGN_SELECTING_BOUNDARY_DATA?.boundaryType?.boundaryData
        ? props?.props?.sessionData?.HCM_CAMPAIGN_SELECTING_BOUNDARY_DATA?.boundaryType?.boundaryData
        : {}
    );
  }, [props?.props?.sessionData?.HCM_CAMPAIGN_SELECTING_BOUNDARY_DATA?.boundaryType]);


  const hierarchyData = Digit.Hooks.campaign.useBoundaryRelationshipSearch({BOUNDARY_HIERARCHY_TYPE: hierarchyType,tenantId});

  const handleBoundaryChange =(value) =>{
    setBoundaryOptions(value?.boundaryOptions);
    setSelectedData(value?.selectedData);
  }

  useEffect(() => {
    onSelect("boundaryType", { selectedData: selectedData, boundaryData: boundaryOptions });

  }, [selectedData, boundaryOptions]);


  return (
    <React.Fragment>
      <Header>{t(`CAMPAIGN_SELECT_BOUNDARY`)}</Header>
      <p className="description-type">{t(`CAMPAIGN_SELECT_BOUNDARIES_DESCRIPTION`)}</p>
      {hierarchyData && (
        <Wrapper
          hierarchyType={hierarchyType}
          lowest={lowestHierarchy}
          isMultiSelect={"true"}
          frozenData={CampaignData?.CampaignDetails?.[0]?.boundaries}
          frozenType={"filter"}
          hierarchyData={hierarchyData}
          onSelect={(value) => {
            handleBoundaryChange(value);
          }}
          boundaryOptions={boundaryOptions}
          selectedData={selectedData}
        />
      )}
    </React.Fragment>
  );
};

export default UpdateBoundaryWrapper;