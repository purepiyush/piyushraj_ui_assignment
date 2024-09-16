import { useMutation } from "react-query";
import createTypeOfChecklist from "./services/createTypeOfChecklist";
import { result } from "lodash";

const useTypeOfChecklist = (tenantId) => {
  return useMutation((reqData) => {
    let ret = createTypeOfChecklist(reqData, tenantId);
    let val;
    ret.then(result => {
        console.log("type pf checklist", result);
        val=result;
    })
    return val;
    return createTypeOfChecklist(reqData, tenantId);
  });
};

export default useTypeOfChecklist;
