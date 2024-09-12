import React from "react";
import { useTranslation } from "react-i18next";
import { Route, Switch, useHistory, Redirect, useRouteMatch } from "react-router-dom";
import ErrorBoundary from "../../components/ErrorBoundaries";
import ErrorComponent from "../../components/ErrorComponent";
import Program from "./pages";
import { Dropdown, TopBar } from "@egovernments/digit-ui-components";

// import CitizenHome from "./Home";
// import LanguageSelection from "./Home/LanguageSelection";
// import LocationSelection from "./Home/LocationSelection";
// import UserProfile from "./Home/UserProfile";
// import Login from "./Login";

const IndividualApp = ({
  stateInfo,
  userDetails,
  CITIZEN,
  cityDetails,
  mobileView,
  handleUserDropdownSelection,
  logoUrl,
  DSO,
  stateCode,
  modules,
  appTenants,
  sourceUrl,
  pathname,
  initData,
}) => {
  const classname = Digit.Hooks.useRouteSubscription(pathname);
  const { t } = useTranslation();
  const { path } = useRouteMatch();
  const history = useHistory();

  return (
    <div className={"employee"}>
      <ErrorBoundary initData={initData}>
        <Switch>
          <Route path={path}>
            <div
              className={"loginContainer"}
              style={{ "--banner-url": `url(${window?.globalConfigs?.getConfig?.("HOME_BACKGROUND")})`, padding: "0px" }}
            >
              <div className="banner banner-container">
                <TopBar
                  className=""
                  img=""
                  language="English"
                  logo=""
                  actionFields={[
                    <Dropdown
                      customSelector="Language"
                      option={[
                        { code: "en_IN", icon: "", name: "English" },
                        { code: "hi_IN", icon: "", name: "Hindi" },
                        { code: "fr_IN", icon: "", name: "French" },
                        { code: "pt_IN", icon: "", name: "Portuguese" },
                      ]}
                      optionKey="name"
                      select={function noRefCheck() {}}
                      theme="light"
                    />,
                  ]}
                  props={{}}
                  showDeafultImg
                  style={{}}
                  theme="light"
                  ulb="My Scheme"
                />
                <Program path={path}></Program>
              </div>
            </div>
          </Route>
          <Route path={`${path}/error`}>
            <ErrorComponent
              initData={initData}
              goToHome={() => {
                history.push(`/${window?.contextPath}/${Digit?.UserService?.getType?.()}`);
              }}
            />
          </Route>
        </Switch>
      </ErrorBoundary>

      <div className="employee-login-home-footer" style={{ backgroundColor: "unset" }}>
        <img
          alt="Powered by DIGIT"
          src={window?.globalConfigs?.getConfig?.("DIGIT_FOOTER_BW")}
          style={{ cursor: "pointer" }}
          onClick={() => {
            window.open(window?.globalConfigs?.getConfig?.("DIGIT_HOME_URL"), "_blank").focus();
          }}
        />
      </div>
    </div>
  );
};

export default IndividualApp;
