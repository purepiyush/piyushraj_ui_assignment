import { AppContainer, BreadCrumb, Loader, PrivateRoute } from "@egovernments/digit-ui-react-components";
import React,{useEffect} from "react";
import { useTranslation } from "react-i18next";
import { Switch,useLocation } from "react-router-dom";
import SetupMicroplan from "./SetupMicroplan";
import { useMyContext } from "../../utils/context";
import MicroplanSearch from "./MicroplanSearch";
import SummaryScreen from "./SummaryScreen";
import CampaignBoundary from "../../components/CampaignBoundary";
import UserManagement from "./UserManagement";
import SearchUnderJurisdiction from "../../components/SearchUnderJurisdiction";
import TableNew from "./TablePage";
import PopInbox from "./PopInbox";
import UserUpload from "../../components/UserUpload";
import UserDownload from "./UserDownload";
import MyMicroplans from "./MyMicroplans";
import ChooseActivity from "./ChooseActivity";



const bredCrumbStyle={ maxWidth: "min-content" };
const ProjectBreadCrumb = ({ location }) => {
  const { t } = useTranslation();
  const crumbs = [
    {
      path: `/${window?.contextPath}/employee`,
      content: t("HOME"),
      show: true,
    },
    {
      path: `/${window?.contextPath}/employee`,
      content: t(location.pathname.split("/").pop()),
      show: true,
    },
  ];
  return <BreadCrumb crumbs={crumbs} spanStyle={bredCrumbStyle} />;
};

const App = ({ path, stateCode, userType, tenants,BOUNDARY_HIERARCHY_TYPE, hierarchyData ,lowestHierarchy }) => {
  const { dispatch } = useMyContext();
  const location = useLocation();
  const tenantId = Digit.ULBService.getCurrentTenantId();
  //destroying session
  useEffect(() => {
    const pathVar = location.pathname.replace(`${path}/`, "").split("?")?.[0];
    Digit.Utils.microplanv1.destroySessionHelper(pathVar, ["setup-microplan"], "MICROPLAN_DATA");
  }, [location]);


  const { isLoading: isLoadingMdmsMicroplanData, data:MicroplanMdmsData } = Digit.Hooks.useCustomMDMS(
    Digit.ULBService.getCurrentTenantId(),
    "hcm-microplanning",
    [
      { name: "MicroplanNamingConvention" },
      { name: "MicroplanNamingRegex" },
      { name: "ResourceDistributionStrategy"},
      { name: "rolesForMicroplan"},
      { name: "HypothesisAssumptions"},
      { name: "RuleConfigureOutput" },
      { name: "RuleConfigureInputs" },
      { name: "AutoFilledRuleConfigurations" },
      { name: "RuleConfigureOperators" },  
      { name: "RegistrationAndDistributionHappeningTogetherOrSeparately"},
      { name: "hierarchyConfig"}
    ],
    {
      cacheTime:Infinity,
      select:(data) => {
        dispatch({
          type: "MASTER_DATA",
          state: {
            ...data?.["hcm-microplanning"],
          },
        });
      }
    },
    {schemaCode:"BASE_MASTER_DATA"} //mdmsv2
  );

  const { isLoading: isLoadingMdmsAdditionalData, data:AdditionalMdmsData } = Digit.Hooks.useCustomMDMS(
    Digit.ULBService.getCurrentTenantId(),
    "HCM-ADMIN-CONSOLE",
    [
      { name: "hierarchyConfig" },

    ],
    {
      cacheTime:Infinity,
      select:(data) => {
        // dispatch({
        //   type: "MASTER_DATA",
        //   state: {
        //       hierarchyConfig:[
        //       {
        //         "hierarchy": "Workbench",
        //         "lowestHierarchy": "Post Administrative",
        //         "splitBoundariesOn" : "District",
        //         "isActive": false
        //       },
        //         {
        //         "hierarchy": "ADMIN",
        //         "lowestHierarchy": "Post Administrative",
        //         "splitBoundariesOn" : "District",
        //         "isActive": false
        //       },
        //       {
        //         "hierarchy": "Health",
        //         "lowestHierarchy": "Post Administrative",
        //         "splitBoundariesOn" : "District",
        //         "isActive": false
        //       },
        //       {
        //         "hierarchy": "MICROPLAN",
        //         "lowestHierarchy": "Village",
        //         "splitBoundariesOn" : "District",
        //         "isActive": true
        //       }
        //     ],
        //     ...data?.["HCM-ADMIN-CONSOLE"],
        //   },
          
        // });
      }
    },
    {schemaCode:"ADDITIONAL_MASTER_DATA"} //mdmsv2
  );

  const reqCriteria = {
    url: `/boundary-service/boundary-hierarchy-definition/_search`,
    changeQueryName: `${BOUNDARY_HIERARCHY_TYPE}`,
    body: {
      BoundaryTypeHierarchySearchCriteria: {
        tenantId: tenantId,
        limit: 1,
        offset: 0,
        hierarchyType: BOUNDARY_HIERARCHY_TYPE,
      },
    },
    config: {
      cacheTime:Infinity,
      enabled: !!BOUNDARY_HIERARCHY_TYPE,
      select: (data) => {
        dispatch({
          type: "MASTER_DATA",
          state: {
            boundaryHierarchy:data?.BoundaryHierarchy?.[0]?.boundaryHierarchy,
            hierarchyType: BOUNDARY_HIERARCHY_TYPE,
            lowestHierarchy
          },
        });
        return data?.BoundaryHierarchy?.[0];
      },
    },
  };
  const { data: hierarchyDefinition,isLoading:isBoundaryHierarchyLoading } = Digit.Hooks.useCustomAPIHook(reqCriteria);
  

  if(isLoadingMdmsMicroplanData || isLoadingMdmsAdditionalData || isBoundaryHierarchyLoading){
    return <Loader />
  }

  //TODO: Hardcode jurisdiction in state for now, need a microplan with complete setup done with all selected boundaries(in campaign), need superviser users with jurisdiction and tagging
  

  return (
    <Switch>
      <AppContainer className="ground-container">
        <React.Fragment>
          <ProjectBreadCrumb location={location} />
        </React.Fragment>
         <PrivateRoute path={`${path}/setup-microplan`} component={() => <SetupMicroplan hierarchyType={BOUNDARY_HIERARCHY_TYPE} hierarchyData={hierarchyData} />} />
         <PrivateRoute path={`${path}/microplan-search`} component={() => <MicroplanSearch></MicroplanSearch>} /> 
         <PrivateRoute path={`${path}/user-management`} component={() => <UserManagement></UserManagement>} />
         <PrivateRoute path={`${path}/user-download`} component={() => <UserDownload/>} />
         <PrivateRoute path={`${path}/select-activity`} component={() => <ChooseActivity/>} />
         <PrivateRoute path={`${path}/campaign-boundary`} component={() => <CampaignBoundary/>} /> 
         <PrivateRoute path={`${path}/test`} component={() => <SearchUnderJurisdiction></SearchUnderJurisdiction>} /> 
         <PrivateRoute path={`${path}/table`} component={() => <TableNew />} />
         <PrivateRoute path={`${path}/pop-inbox`} component={() => <PopInbox />} />
         <PrivateRoute path={`${path}/upload-user`} component={() => <UserUpload/>} /> 
         <PrivateRoute path={`${path}/my-microplans`} component={() => <MyMicroplans/>} /> 

         {/* my-microplans */}

      </AppContainer>
    </Switch>
  );
};

export default App;
