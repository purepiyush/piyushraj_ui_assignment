import useCreatePlanConfig from "./useCreatePlanConfig";
import useSearchPlanConfig from "./useSearchPlanConfig";
import useUpdatePlanConfig from "./useUpdatePlanConfig";
import useSavedMicroplans from "./useSavedMicroplans";
import useSearchCampaign from "./useSearchCampaign";
import { useGenerateIdCampaign } from "./useGenerateIdCampaign";
import useCreateCampaign from "./useCreateCampaign";
import useUpdateCampaign from "./useUpdateCampaign";
import utils from "../utils/utilities"
const microplanv1 = {
  useCreatePlanConfig,
  useSearchPlanConfig,
  useUpdatePlanConfig,
  useSavedMicroplans,
  useSearchCampaign,
  useGenerateIdCampaign,
  useCreateCampaign,
  useUpdateCampaign
};

const Hooks = {
  microplanv1,
};

const Utils = {
  microplanv1: {
    ...utils
  },
};

export const CustomisedHooks = {
  Hooks,
  Utils,
};