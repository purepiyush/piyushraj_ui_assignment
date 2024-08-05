const initialState = {
  questions: [],
};

const reducer = (state, action) => {
  switch (action.type) {
    case "SET_QUESTIONS":
      return { ...state, questions: action.payload };
    case "UPDATE_QUESTION":
      return {
        ...state,
        questions: updateQuestion(state.questions, action.payload),
      };
    case "ADD_QUESTION":
      return {
        ...state,
        questions: addQuestion(state.questions, action.payload),
      };
    case "DELETE_QUESTION":
      return {
        ...state,
        questions: deleteQuestion(state.questions, action.payload),
      };
    case "UPDATE_SUB_QUESTION":
      return {
        ...state,
        questions: updateSubQuestion(state.questions, action.payload),
      };
    default:
      return state;
  }
};

const updateSubQuestion = (questions, updatedQuestion) => {};

const updateQuestion = (questions, updatedQuestion) => {
  return questions.map((q) => {
    if (q.key === updatedQuestion.key) {
      return { ...q, ...updatedQuestion };
    }
    if (q.subQuestions) {
      return { ...q, subQuestions: updateQuestion(q.subQuestions, updatedQuestion) };
    }
    return q;
  });
};

const addQuestion = (questions, newQuestion) => {
  return questions.map((q) => {
    if (q.key === newQuestion.parentId) {
      return {
        ...q,
        subQuestions: [...(q.subQuestions || []), newQuestion],
      };
    }
    if (q.subQuestions) {
      return { ...q, subQuestions: addQuestion(q.subQuestions, newQuestion) };
    }
    return q;
  });
};

const deleteQuestion = (questions, keyToDelete) => {
  return questions.reduce((acc, q) => {
    if (q.key === keyToDelete) {
      return acc;
    }
    const newSubQuestions = q.subQuestions ? deleteQuestion(q.subQuestions, keyToDelete) : [];
    if (newSubQuestions.length > 0 || !q.subQuestions) {
      acc.push({ ...q, subQuestions: newSubQuestions });
    }
    return acc;
  }, []);
};

export { initialState, reducer };
