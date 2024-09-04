import { AppContainer, BreadCrumb, PrivateRoute } from "@egovernments/digit-ui-react-components";
import React from "react";
import { useTranslation } from "react-i18next";
import { Switch } from "react-router-dom";
import SetupMicroplan from "./SetupMicroplan";
import VehicleSearch from "./VehicleSearch";
import DataSearch from "./DataSearch";
import Checklist from "./Sample";
import MicroplanSearch from "./MicroplanSearch";

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

const App = ({ path, stateCode, userType, tenants }) => {
  return (
    <Switch>
      <AppContainer className="ground-container">
        <React.Fragment>
          <ProjectBreadCrumb location={location} />
        </React.Fragment>
         <PrivateRoute path={`${path}/setup-microplan`} component={() => <SetupMicroplan />} />
         <PrivateRoute path={`${path}/vehicle-search`} component={() => <VehicleSearch></VehicleSearch>} /> 
         <PrivateRoute path={`${path}/data-search`} component={() => <DataSearch></DataSearch>} /> 
         <PrivateRoute path={`${path}/sample`} component={() => <Checklist></Checklist>} /> 
         <PrivateRoute path={`${path}/microplan-search`} component={() => <MicroplanSearch></MicroplanSearch>} /> 
         


         
      </AppContainer>
    </Switch>
  );
};

export default App;