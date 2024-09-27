const getMDMSUrl = () => {
    let url = window.globalConfigs?.getConfig("MDMS_V1_CONTEXT_PATH") || window.globalConfigs?.getConfig("MDMS_CONTEXT_PATH") || "egov-mdms-service";
    return `/${url}`;
  };
  export default getMDMSUrl;