import { useQuery } from "react-query";

/**
 * fetchFromMicroplan details for a given campaign.
 *
 * @param {string} campaignId - The campaign ID.
 * @param {string} tenantId - The tenant ID.
 * @param {string} planConfigId - The plan configuration ID.
 * @returns {object} Boundary hierarchy data or error object.
 */
export const fetchFromMicroplan = async (campaignId, tenantId, planConfigId) => {
  try {
    const response = await Digit.CustomService.getResponse({
      url: `/project-factory/v1/project-type/fetch-from-microplan`,
      params: {},
      body: {
        MicroplanDetails: {
          tenantId,
          campaignId,
          planConfigurationId: planConfigId,
          resourceId: "filestoreid",
        },
      },
    });
    return response?.CampaignDetails || {};
  } catch (error) {
    console.error("Error fetching CampaignDetails:", error);
    return error;
  }
};
export const searchCampaign = async (campaignId, tenantId) => {
    try {
      const response = await Digit.CustomService.getResponse({
        url: `/project-factory/v1/project-type/search`,
        params: {},
        body: {
            CampaignDetails: {
                tenantId,
                ids: [campaignId],
              },
        },
      });
      return response?.CampaignDetails?.[0] || {};
    } catch (error) {
      console.error("Error fetching CampaignDetails:", error);
      return error;
    }
  };
  const updateCampaign = async (campaignPayload,mode="create") => {
    const newCampaignPayload={...campaignPayload};
    if(mode=="create"){
        newCampaignPayload.boundaries=[]
    }
    try {
      const response = await Digit.CustomService.getResponse({
        url: `/project-factory/v1/project-type/${mode}`,
        params: {},
        body: {
            CampaignDetails: {...newCampaignPayload}
        },
      });
      return response?.CampaignDetails || {};
    } catch (error) {
      console.error("Error fetching CampaignDetails:", error);
      return error;
    }
  };

/**
 * Creates a new campaign and returns the campaign ID.
 *
 * @param {object} campaignData - Campaign data to be used in the creation request.
 * @param {string} tenantId - The tenant ID.
 * @param {string} planConfigId - The plan configuration ID.
 * @returns {string|null} Campaign ID or error object.
 */
const createCampaign = async (campaignData, tenantId, planConfigId) => {
  try {
    const campaignPayload = {
      ...campaignData,
      startDate: Date.now() + 86400000, // 1 day later
      endDate: Date.now() + 259200000, // 3 days later
      id: null,
      auditDetails: null,
      resources: [],
      deliveryRules: [],
      additionalDetails: {
        ...campaignData?.additionalDetails,
        source: "",
        planId: planConfigId,
      },
      campaignName: `AUTOGENERATED_${Date.now()}`,
    };

    const response = await updateCampaign(campaignPayload);
    return response;
  } catch (error) {
    console.error("Error creating campaign:", error);
    return error;
  }
};

export const waitForSomeTime = (time=3000) => {
  return new Promise((resolve) => setTimeout(resolve, time));
};
/**
 * Fetches consolidated data by combining campaign search and boundary data.
 *
 * @param {string} tenantId - The tenant ID.
 * @param {string} campaignId - The campaign ID.
 * @param {string} planConfigId - The plan configuration ID.
 * @returns {Promise<object>} Merged data including boundary and campaign information.
 */
const fetchConsolidatedData = async (tenantId, campaignId, planConfigId) => {
  try {

    const campaignData = await searchCampaign(campaignId,tenantId);

    if (!campaignData) {
      throw new Error("No campaign found.");
    }

    if (!campaignData?.boundaries || campaignData?.boundaries?.length==0) {
        throw new Error("Boundary data is missing or incomplete.");
      }
    // Create a new campaign
    const newCampaignResponse = await createCampaign(campaignData, tenantId, planConfigId);

    if (!newCampaignResponse) {
      throw new Error("Failed to create campaign.");
    }

    const newCampaignSearchResponse = newCampaignResponse&&newCampaignResponse?.id&& await  searchCampaign(newCampaignResponse?.id,tenantId);
 
    
    await waitForSomeTime(3000);

    const updatedCampaignData =newCampaignResponse&&newCampaignResponse?.id&& newCampaignSearchResponse&&await  updateCampaign({...newCampaignSearchResponse,boundaries:campaignData?.boundaries},"update");

    // Fetch boundary hierarchy for the new campaign
    // const fetchedCampaign = newCampaignResponse&&newCampaignResponse?.id&& newCampaignSearchResponse&&newCampaignUpdatedData&&await fetchFromMicroplan(newCampaignResponse?.id, tenantId, planConfigId);



    return { campaignData, newCampaignSearchResponse, updatedCampaignData};
  } catch (error) {
    console.error("Error fetching consolidated data:", error);
    return { error };
  }
};

/**
 * React Query hook to fetch data from the microplan.
 *
 * @param {string} tenantId - The tenant ID.
 * @param {string} campaignId - The campaign ID.
 * @param {string} planConfigId - The plan configuration ID.
 * @returns {object} React Query object with data and fetch states.
 */
const useFetchFromMicroplan = (tenantId, campaignId, planConfigId) => {
  const { data, isFetching, refetch, isLoading, error } = useQuery(
    ["microplanData", tenantId, campaignId, planConfigId],
    () => fetchConsolidatedData(tenantId, campaignId, planConfigId),
    { cacheTime: 0 }
  );

  return {
    data,
    isLoading,
    error,
    refetch,
    isFetching,
  };
};

export default useFetchFromMicroplan;
