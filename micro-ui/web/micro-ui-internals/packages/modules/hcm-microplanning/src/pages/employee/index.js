import React, { useEffect } from "react";
import { Switch, useLocation } from "react-router-dom";
import { useTranslation } from "react-i18next";
import { PrivateRoute, AppContainer, BreadCrumb, Loader } from "@egovernments/digit-ui-react-components";
import MicroplanningHeader from "../../components/MicroplanningHeader";
import Guidelines from "./Guidelines";
import CreateMicroplan from "./CreateMicroplan";
import SavedMicroplans from "./SavedMicroplans";
import SelectCampaign from "./SelectCampaign";
import { useMyContext } from "../../utils/context";
import { Schemas} from "./MDMSData/Schemas.json"
import { HypothesisAssumptions} from "./MDMSData/HypothesisAssumptions.json"
import { AutoFilledRuleConfigurations} from "./MDMSData/AutoFilledRuleConfigurations.json"
import { RuleConfigureOutput} from "./MDMSData/RuleConfigureOutput.json"
import { Resources} from "./MDMSData/Resources.json"
import { MicroplanPreviewAggregates} from "./MDMSData/MicroplanPreviewAggregates.json"

const MicroplanningBreadCrumb = ({ location ,defaultPath}) => {
  const { t } = useTranslation();
  const pathVar=location.pathname.replace(defaultPath+'/',"").split("?")?.[0];
  const {masterName,moduleName,uniqueIdentifier} = Digit.Hooks.useQueryParams()



  const crumbs = [
    {
      path: `/${window?.contextPath}/employee`,
      content: t("Home"),
      show: true,
    },
    // {
    //   content:  t(`UPLOAD`) ,
    //   show: pathVar.includes("upload")?true: false,
    // },
    // {
    //   content:  t(`HYPOTHESIS`) ,
    //   show: pathVar.includes("hypothesis")?true: false,
    // },
    // {
    //   content:  t(`RULE_ENGINE`) ,
    //   show: pathVar.includes("rule-engine")?true: false,
    // },
    {
      content:  t(`CREATE_MICROPLAN`) ,
      show: pathVar.includes("create-microplan")?true: false,
    },
    {
      content:  t(`SAVED_MICROPLANS_TEXT`) ,
      show: pathVar.includes("saved-microplan")?true: false,
    },
    {
      content:  t(`CREATE_MICROPLAN`) ,
      show: pathVar.includes("select-campaign")?true: false,
    },
    
    
  ];
  return <BreadCrumb className="workbench-bredcrumb" crumbs={crumbs} spanStyle={{ maxWidth: "min-content" }} />;
};

const App = ({ path }) => {
  const {dispatch} = useMyContext()

  const location = useLocation();
  const MDMSCreateSession = Digit.Hooks.useSessionStorage("MDMS_add", {});
  const [sessionFormData, setSessionFormData, clearSessionFormData] = MDMSCreateSession;
  
  const MDMSViewSession = Digit.Hooks.useSessionStorage("MDMS_view", {});
  const [sessionFormDataView,setSessionFormDataView,clearSessionFormDataView] = MDMSViewSession

  const { isLoading:isLoadingMdmsBaseData, data } = Digit.Hooks.useCustomMDMS("mz", "hcm-microplanning", [
    { name: "UploadConfiguration" },
    { name: "UIConfiguration" },
    { name: "Schemas" },
    { name: "RuleConfigureOutput" },
    { name: "Resources" },
    { name: "HypothesisAssumptions" },
    { name: "BaseMapLayers" },
    { name: "MicroplanPreviewAggregates" },
    { name: "AutoFilledRuleConfigurations" },
    { name: "MapFilters" },
    { name: "HierarchyConfigurations" }
  ],
  {
    select:(data) => {
      dispatch({
        type:"SETINITDATA",
        state:{...data?.['hcm-microplanning'],Schemas,HypothesisAssumptions, AutoFilledRuleConfigurations, RuleConfigureOutput, Resources, MicroplanPreviewAggregates}
      })
    }
  }
);

//destroying session 
  useEffect(() => {
    const pathVar = location.pathname.replace(path + "/", "").split("?")?.[0];
    Digit.Utils.microplan.destroySessionHelper(pathVar,["create-microplan"],"microplanData");
    Digit.Utils.microplan.destroySessionHelper(pathVar,["select-campaign"],"SELECT_CAMPAIGN_SESSION");
    Digit.Utils.microplan.destroySessionHelper(pathVar,["saved-microplans"],"SAVED_MICROPLAN_SESSION");
  }, [location])

  if(isLoadingMdmsBaseData){
    return <Loader />
  }

  return (
    <React.Fragment>
      <div className="wbh-header-container">
        <MicroplanningBreadCrumb location={location} defaultPath={path} />
        <MicroplanningHeader />
      </div>
      <Switch>
        <AppContainer className="workbench">
          {/* <PrivateRoute path={`${path}/upload`} component={() => <Upload parentRoute={path}/>} />
          <PrivateRoute path={`${path}/hypothesis`} component={() => <Hypothesis parentRoute={path}/>} />
          <PrivateRoute path={`${path}/rule-engine`} component={() => <RuleEngine parentRoute={path}/>} /> */}
          <PrivateRoute path={`${path}/help-guidelines`} component={() => <Guidelines parentRoute={path}/>} />

          <PrivateRoute path={`${path}/create-microplan`} component={() => <CreateMicroplan parentRoute={path}/>} />
          <PrivateRoute path={`${path}/saved-microplans`} component={() => <SavedMicroplans parentRoute={path}/>} />
          <PrivateRoute path={`${path}/select-campaign`} component={() => <SelectCampaign parentRoute={path}/>} />
        </AppContainer>
      </Switch>
    </React.Fragment>
  );
};

export default App;
