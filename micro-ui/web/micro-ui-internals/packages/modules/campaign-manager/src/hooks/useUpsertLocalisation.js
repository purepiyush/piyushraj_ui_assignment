import { useMutation } from "react-query";
import createLocalisationService from "./services/createLocalisationService";

const useUpsertLocalisation = (tenantId) => {
  return useMutation((reqData) => {
    return createLocalisationService(reqData, tenantId);
  });
};

export default useUpsertLocalisation;
