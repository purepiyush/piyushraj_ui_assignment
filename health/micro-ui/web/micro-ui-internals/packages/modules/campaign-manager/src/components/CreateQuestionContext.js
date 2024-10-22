import React, { useState, useEffect, useContext, useReducer, createContext, act } from "react";
import CreateQuestion from "./CreateQuestion";
import { temp_data, CreateChecklist } from "../pages/employee/CreateChecklist";
import data_hook from "../hooks/data_hook";
const QuestionContext = createContext();

const CreateQuestionContext = ({ onSelect, ...props }) => {
  // const { t } = useTranslation();
  const state = Digit.ULBService.getStateId();
  const tenantId = Digit.ULBService.getCurrentTenantId();
  const user = Digit.UserService.getUser();
  const searchParams = new URLSearchParams(location.search);
  const projectType = searchParams.get("type");
  const projectName = searchParams.get("name");
  const flow = searchParams.get("flow");
  const role = searchParams.get("role");
  const locale = Digit?.SessionStorage.get("initData")?.selectedLanguage || "en_IN";

  const { defaultData, setDefaultData } = data_hook();

  // Reducer function
  const questionDataReducer = (state, action) => {
    switch (action.type) {
      case "UPDATE_OPTIONS":
        return state.map((item, index) => {
          if (item.id === action?.payload?.field?.id) {
            return {
              ...item,
              options: action?.payload?.options,
            };
          }
          return { ...item };
        });
        break;
      case "UPDATE_QUESTION_DATA":
        if(action?.payload && action?.payload.length>0) 
          {
            return [...action.payload];
          }
        else return state;
      case "ADD_QUESTION":
        if(action?.payload?.level>3) return state;
        return [
          ...state,
          {
            id: crypto.randomUUID(),
            level: action?.payload?.level,
            parentId: action?.payload?.parent?.id ? action?.payload?.parent?.id : null,
            key: state?.length + 1,
            title: null,
            type: { "code": "SingleValueList" },
            value: null,
            isRequired: true,
            isActive: true
          },
        ];
        break;
      case "ADD_SUB_QUESTION":
        if(action?.payload?.level>3) return state
        return [
          ...state,
          {
            id: crypto.randomUUID(),
            level: action?.payload?.level,
            parentId: action?.payload?.optionId,
            key: state?.length + 1,
            title: null,
            type: { "code": "SingleValueList" },
            value: null,
            isRequired: true,
            isActive: true
          },
        ];
        break;
      case "DELETE_QUESTION":
        return state.map((i) => {
          if (i.id === action?.payload?.id) {
            // Return a new object with isActive set to false
            return { ...i, isActive: false };
          }
          // Return the original object if the id doesn't match
          return i;
        });
        


           
        // let id = action?.payload?.id;
        // const deleteQuestionAndSubquestions = (state, questionId) => {
        //   // Recursive function to find and delete subquestions based on option ids
        //   const findRelatedSubquestions = (questions, optionIds) => {
        //     return questions.reduce((acc, question) => {
        //       // If the current question's parentId matches any of the optionIds
        //       if (optionIds.includes(question.parentId)) {
        //         // Add the current question's id to the list of ids to delete
        //         let relatedIds = [question.id];

        //         // Check if the current question has options
        //         if (question.options && question.options.length > 0) {
        //           const newOptionIds = question.options.map(option => option.id);
        //           // Recursively find and delete subquestions related to the current question's options
        //           relatedIds = relatedIds.concat(findRelatedSubquestions(questions, newOptionIds));
        //         }

        //         return [...acc, ...relatedIds];
        //       }
        //       return acc;
        //     }, []);
        //   };

        //   // Get the question to be deleted
        //   const questionToDelete = state.find(q => q.id === questionId);

        //   if (!questionToDelete) {
        //     return state;
        //   }

        //   // Start by collecting IDs of the question's options (if any)
        //   let idsToDelete = [questionId]; // Start with the main question's ID

        //   if (questionToDelete.options && questionToDelete.options.length > 0) {
        //     const optionIds = questionToDelete.options.map(option => option.id);
        //     // Find and delete subquestions related to the options' ids
        //     idsToDelete = idsToDelete.concat(findRelatedSubquestions(state, optionIds));
        //   }

        //   // Filter out the questions whose ids are in idsToDelete
        //   const newState = state.filter(question => !idsToDelete.includes(question.id));

        //   // Print the updated state for verification

        //   return newState;
        // }
        // const newState = deleteQuestionAndSubquestions(state, id);
        // state = newState;
        // return state


        // return state.filter((i) => i.key !== action?.payload?.index).map((i, n) => ({ ...i, key: n + 1 }));
        break;
      case "UPDATE_REQUIRED":
        return state.map((i) => {
          if (i.id === action?.payload?.id) {
            // Return a new object with the updated isRequired property
            return { ...i, isRequired: !i.isRequired };
          }
          // Return the original object if the id doesn't match
          return i;
        });

      case "UPDATE_QUESTION":
        let dependencyParent = null;
        let tempState = state.map((i) => {
          if (i.id === action?.payload?.id) {
            if (action?.payload?.target === "dependency") {
              dependencyParent = i?.id;
            }
            return {
              ...i,
              // level: action?.payload?.level,
              // parentId: action?.payload?.parent?.id ? action?.payload?.parent?.id : null,
              [action?.payload?.target]:
                action?.payload?.target === "isRequired" || action?.payload?.target === "isRegex" || action?.payload?.target === "dependency"
                  ? action?.payload?.data.target.checked
                  : action?.payload?.data,
            };
          }
          return {
            ...i,
          };
        });

        if (action?.payload?.target === "dependency" && action?.payload?.data?.target?.checked === true) {
          return [
            ...tempState,
            {
              id: crypto.randomUUID(),
              parentId: dependencyParent,
              level: action?.payload?.level + 1,
              key: state?.length + 1,
              title: null,
              type: null,
              value: null,
              isRequired: true,
            },
          ];
        } else if (action?.payload?.target === "dependency" && action?.payload?.data?.target?.checked !== true) {
          return tempState.filter((i) => i.parentId !== dependencyParent);
        } else {
          return tempState;
        }
        break;
      default:
        return state;
    }
  };
  // const [initialState, setInitialState] = useState([{ id: crypto.randomUUID(), parentId: null, level: 1, key: 1, title: null, type: { "code": "SingleValueList" }, value: null, isRequired: false }])

  const [initialState, setInitialState] = useState(()=>{
    const savedQuestions = localStorage.getItem("questions");
    return savedQuestions ?  JSON.parse(savedQuestions) : [{ id: crypto.randomUUID(), parentId: null, level: 1, key: 1, title: null, type: { "code": "SingleValueList" }, value: null, isRequired: false, isActive: true }]
  })
  
  const [typeOfCall, setTypeOfCall] = useState(null);
  const [questionData, dispatchQuestionData] = useReducer(questionDataReducer, initialState);

  useEffect(() => {
    // Avoid dispatch if props haven't changed
    if (props?.props?.data !== 0) {  
      // Dispatch only if the data is different
      setTypeOfCall(props?.props?.typeOfCall);
      dispatchQuestionData({
        type: "UPDATE_QUESTION_DATA",
        payload: props?.props?.data,
      });
  
    }
  }, [props?.props?.data]); // Ensure that the initialState is included in the dependency array
  
  useEffect(() => {
    onSelect("createQuestion", {
      questionData,
    });
    if(!(questionData.length === 1 && questionData?.[0].title===null))
    {
      localStorage.setItem("questions", JSON.stringify(questionData));

    } 
    // setInitialState(localStorage.getItem("questions"))
  }, [questionData]);


  return (
    <QuestionContext.Provider value={{ questionData, dispatchQuestionData }}>
      <CreateQuestion initialQuestionData={questionData} level={1} onSelect={onSelect} typeOfCall={typeOfCall} />
    </QuestionContext.Provider>
  );
};

export default CreateQuestionContext;
export { QuestionContext };