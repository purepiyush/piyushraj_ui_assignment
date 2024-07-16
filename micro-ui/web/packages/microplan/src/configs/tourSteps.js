export const tourSteps = (t) => {
  return {
    microplanDetails: {
      name: "microplanDetails",
      run: true,
      steps: [
        {
          content: t("HELP_MICROPLAN_DETAILS_CAMPAIGN_DETAILS"),
          target: ".microplan-campaign-detials",
          disableBeacon: true,
          placement: "bottom",
          title: "",
          disableScrolling: true,
        },
        {
          content: t("HELP_MICROPLAN_DETAILS_MICROPLAN_NAME"),
          target: ".microplan-name",
          disableBeacon: true,
          placement: "bottom",
          title: "",
          disableScrolling: true,
        },
      ],
      tourActive: true,
    },
    upload: {
      name: "upload",
      run: true,
      steps: [
        {
          content: t("HELP_UPLOAD_FILETYPE_OPTION_CONTAINER"),
          target: ".upload-option-container",
          disableBeacon: true,
          placement: "top-end",
          title: "",
          disableScrolling: true,
        },
      ],
      tourActive: true,
    },
    hypothesis: {
      name: "hypothesis",
      run: true,
      steps: [
        {
          content: t("HELP_HYPOTHESIS_INTERACTABLE_SECTION"),
          target: ".hypothesis-section",
          disableBeacon: true,
          placement: "top-start",
          title: "",
          disableScrolling: true,
        },
        // {
        //   content:
        //     t("HELP_RULE_ENGINE_INPUT"),
        //   target: ".last-container .key",
        //   disableBeacon: true,
        //   placement: "top-start",
        //   title: "",
        // },
        // {
        //   content:
        //     t("HELP_HYPOTHESIS_DELETE_BUTTON"),
        //   target: ".last-containe .delete-button-help-locator",
        //   disableBeacon: true,
        //   placement: "top-start",
        //   title: "",
        // },
        {
          content: t("HELP_HYPOTHESIS_ADD_BUTTON"),
          target: ".add-button",
          disableBeacon: true,
          placement: "right-end",
          title: "",
        },
      ],
      tourActive: true,
    },
    ruleEngine: {
      name: "ruleEngine",
      run: true,
      steps: [
        {
          content: t("HELP_RULE_ENGINE_INTERACTABLE_SECTION"),
          target: ".rule-engine-section",
          disableBeacon: true,
          placement: "top-start",
          title: "",
        },
        {
          content: t("HELP_RULE_ENGINE_INPUT"),
          target: ".user-input-section .interactable-section .select-and-input-wrapper-first .input",
          disableBeacon: true,
          placement: "top-end",
          title: "",
        },
        {
          content: t("HELP_RULE_ENGINE_DELETE_BUTTON"),
          target: ".select-and-input-wrapper-first .delete-button",
          disableBeacon: true,
          placement: "left-start",
          title: "",
        },
        {
          content: t("HELP_RULE_ENGINE_ADD_BUTTON"),
          target: ".add-button",
          disableBeacon: true,
          placement: "top-end",
          title: "",
        },
      ],
      tourActive: true,
    },
    mapping: {
      name: "mapping",
      run: true,
      steps: [
        {
          content: t("HELP_MAPPING_BOUNDARY_SELECTION"),
          target: ".filter-by-boundary .button-primary",
          disableBeacon: true,
          placement: "right-end",
          title: "",
          disableScrolling: true,
        },
        {
          content: t("HELP_MAPPING_BASE_MAP"),
          target: ".base-map-selector",
          disableBeacon: true,
          placement: "left-start",
          title: "",
          disableScrolling: true,
        },
        {
          content: t("HELP_MAPPING_FILTER"),
          target: ".filter-icon",
          disableBeacon: true,
          placement: "left-start",
          title: "",
          disableScrolling: true,
        },
        {
          content: t("HELP_MAPPING_VIRTUALIZATION"),
          target: ".virtualization-icon",
          disableBeacon: true,
          placement: "left-start",
          title: "",
          disableScrolling: true,
        },
        {
          content: t("HELP_MAPPING_MAP_GEOMETRIES"),
          target: ".map-container",
          disableBeacon: true,
          placement: "top-end",
          title: "",
          disableScrolling: true,
        },
      ],
      tourActive: true,
    },
    microplanPreview: {
      name: "microplanPreview",
      run: true,
      steps: [
        {
          content: t("HELP_MICROPLAN_DETAILS_EDIT_ROWS"),
          target: ".preview-container",
          disableBeacon: true,
          placement: "top-end",
          title: "",
        },
      ],
      tourActive: true,
    },
  };
};