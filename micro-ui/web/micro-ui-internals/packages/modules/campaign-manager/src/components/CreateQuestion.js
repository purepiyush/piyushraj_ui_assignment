import React, { useState, useEffect, Fragment, useContext } from "react";
import { LabelFieldPair, AddIcon, Button, Card, TextInput, Dropdown } from "@egovernments/digit-ui-react-components";
import { useTranslation } from "react-i18next";
import { DustbinIcon } from "./icons/DustbinIcon";
import { PRIMARY_COLOR } from "../utils";
import { CheckBox, FieldV1 } from "@egovernments/digit-ui-components";
import MultipleChoice from "./MultipleChoice";
import Checkboxes from "./Checkboxes";
import { QuestionContext } from "./CreateQuestionContext";

// field selector for multiselect and signle select component.
const FieldSelector = ({ type, name, value, onChange, placeholder = "", t, field, dispatchQuestionData }) => {
  const [options, setOptions] = useState([
    {
      key: 1,
      label: "OPTION",
    },
  ]);
  useEffect(() => {
    dispatchQuestionData({
      type: "UPDATE_OPTIONS",
      payload: {
        options: options,
        field: field,
      },
    });
  }, [options]);
  const handleAddOption = () => {
    setOptions((prev) => {
      return [
        ...prev,
        {
          key: prev.length + 1,
          label: `OPTION`,
        },
      ];
    });
  };
  const handleUpdateOption = (param) => {
    setOptions((prev) => {
      return prev.map((item) => {
        if (item.key === param.id) {
          return {
            ...item,
            label: param?.value,
          };
        }
        return {
          ...item,
        };
      });
    });
  };
  const removeOption = (id) => {
    if (options.length === 1) return null;
    setOptions((prev) => {
      const temp = prev.filter((item) => item.key !== id);
      return temp.map((i, c) => ({ key: c + 1, label: i?.label }));
    });
  };
  switch (type?.code) {
    case "SingleValueList":
      return (
        <MultipleChoice
          maxLength={60}
          titleHover={t("MAX_LENGTH_60")}
          t={t}
          addOption={handleAddOption}
          updateOption={handleUpdateOption}
          removeOption={removeOption}
          options={options}
          optionsKey="label"
        />
      );
      break;
    case "MultiValueList":
      return (
        <Checkboxes
          maxLength={60}
          titleHover={t("MAX_LENGTH_60")}
          t={t}
          addOption={handleAddOption}
          updateOption={handleUpdateOption}
          removeOption={removeOption}
          options={options}
          optionsKey="label"
        />
      );
      break;
    default:
      return null;
      break;
  }
};

const CreateQuestion = ({ onSelect, className, level = 1, initialQuestionData, parent = null, parentId = null }) => {
  const { t } = useTranslation();
  const state = Digit.ULBService.getStateId();
  const tenantId = Digit.ULBService.getCurrentTenantId();
  let user = Digit.UserService.getUser();
  const searchParams = new URLSearchParams(location.search);
  const projectType = searchParams.get("type");
  const projectName = searchParams.get("name");
  const flow = searchParams.get("flow");
  const role = searchParams.get("role");
  let locale = Digit?.SessionStorage.get("initData")?.selectedLanguage || "en_IN";
  const { questionData, dispatchQuestionData } = useContext(QuestionContext);
  const dataType = [
    { code: "String" },
    { code: "Number" },
    { code: "Text" },
    { code: "date" },
    { code: "time" },
    { code: "SingleValueList" },
    { code: "MultiValueList" },
    { code: "File" },
  ];
  const regexOption = [
    {
      code: "TEXT_ONLY",
      regex: `^[a-zA-Z]+$`,
    },
    {
      code: "NUMBER_ONLY",
      regex: `^[0-9]+$`,
    },
    {
      code: "ALPHANUMERIC",
      regex: `^[a-zA-Z0-9]+$`,
    },
    {
      code: "MORE_THAN_100",
      regex: `(\b\w+\b\s*){101,}`,
    },
    {
      code: "LEES_THAN_100",
      regex: `^(\w+\s*){1,99}$`,
    },
  ];

  useEffect(() => {
    if (level === 1) {
      onSelect("createQuestion", {
        initialQuestionData,
      });
    }
  }, [initialQuestionData]);

  const addMoreField = () => {
    dispatchQuestionData({
      type: "ADD_QUESTION",
      payload: {
        currentQuestionData: initialQuestionData,
        level: level,
        parent: parent,
      },
    });
  };

  const deleteField = (index) => {
    dispatchQuestionData({
      type: "DELETE_QUESTION",
      payload: {
        index: index,
      },
    });
  };

  const handleUpdateField = (data, target, index, id) => {
    dispatchQuestionData({
      type: "UPDATE_QUESTION",
      payload: {
        data: data,
        target: target,
        index: index,
        id: id,
        parent: parent,
        level: level,
      },
    });
  };

  return (
    <React.Fragment>
      {initialQuestionData
        ?.filter((i) => i.level === level && i.parentId === parentId)
        ?.map((field, index) => {
          return (
            <Card className={`question-card-container ${className}`}>
              <LabelFieldPair className="question-label-field">
                <div className="question-label">
                  <span>{`${t("Question")} ${index + 1}`}</span>
                  <span className="mandatory-span">*</span>
                </div>
                <div className="question-field-container">
                  <div className="question-field">
                    <TextInput
                      // style={{ maxWidth: "40rem" }}
                      name="title"
                      value={field?.title || ""}
                      onChange={(event) => handleUpdateField(event.target.value, "title", field.key, field.id)}
                      placeholder={"Type your questions here"}
                    />
                    <Dropdown
                      style={{ width: "20%" }}
                      t={t}
                      option={dataType}
                      optionKey={"code"}
                      selected={field?.type || ""}
                      select={(value) => {
                        handleUpdateField(value, "type", field.key, field.id);
                      }}
                      placeholder="Type"
                    />
                    {parent?.dependency && (
                      <Dropdown
                        style={{ width: "20%" }}
                        t={t}
                        option={parent?.options}
                        optionKey={"label"}
                        selected={field?.dependencyAns || ""}
                        select={(value) => {
                          handleUpdateField(value, "dependencyAns", field.key, field.id);
                        }}
                        placeholder="Type"
                      />
                    )}
                  </div>
                  {field?.isRegex && (
                    <Dropdown
                      style={{ width: "70%" }}
                      t={t}
                      option={regexOption}
                      optionKey={"code"}
                      selected={field?.regex || ""}
                      select={(value) => {
                        handleUpdateField(value, "regex", field.key, field.id);
                      }}
                      placeholder="Choose Regex"
                    />
                  )}
                  {(field?.type?.code === "SingleValueList" || field?.type?.code === "MultiValueList") && (
                    <FieldSelector
                      t={t}
                      type={field?.type}
                      name={"value"}
                      value={field?.value || ""}
                      onChange={(event) => handleUpdateField(event.target.value, "value", field?.key, field.id)}
                      placeholder={"Answer"}
                      dispatchQuestionData={dispatchQuestionData}
                      field={field}
                    />
                  )}
                  {field.dependency && (
                    <CreateQuestion
                      onSelect={onSelect}
                      className="subSection"
                      level={level + 1}
                      parent={field}
                      parentId={field.id}
                      initialQuestionData={initialQuestionData} // Pass sub-questions data to nested component
                    >
                    </CreateQuestion>
                  )}
                </div>
              </LabelFieldPair>
              <div className="heading-bar">
                <CheckBox
                  key={field.key}
                  styles={{ margin: "20px 0 40px", maxWidth: "70%" }}
                  label={t("REQUIRED")}
                  checked={field?.isRequired}
                  onChange={(event) => handleUpdateField(event, "isRequired", field.key, field.id)}
                  // isLabelFirst={true}
                  index={field.key}
                />
                <CheckBox
                  key={field.key}
                  styles={{ margin: "20px 0 40px", maxWidth: "70%" }}
                  label={t("REGEX")}
                  checked={field?.isRegex}
                  onChange={(event) => handleUpdateField(event, "isRegex", field.key, field.id)}
                  // isLabelFirst={true}
                  index={field.key}
                />
                {level < 4 && field?.type?.code && field?.type?.code === "SingleValueList" ? (
                  <CheckBox
                    key={field.key}
                    styles={{ margin: "20px 0 40px", maxWidth: "70%" }}
                    label={t("DEPENDENCY")}
                    checked={field?.dependency}
                    onChange={(event) => handleUpdateField(event, "dependency", field.key, field.id)}
                    // isLabelFirst={true}
                    index={field.key}
                  />
                ) : null}
                {initialQuestionData?.length > 1 && (
                  <>
                    <div className="separator"></div>
                    <div
                      onClick={() => deleteField(field.key)}
                      style={{
                        cursor: "pointer",
                        fontWeight: "600",
                        // marginLeft: "1rem",
                        fontSize: "1rem",
                        color: PRIMARY_COLOR,
                        display: "flex",
                        flexDirection: "row-reverse",
                        gap: "0.5rem",
                        alignItems: "center",
                        // marginTop: "1rem",
                      }}
                    >
                      <DustbinIcon />
                      {t(`CAMPAIGN_DELETE_ROW_TEXT`)}
                    </div>
                  </>
                )}
              </div>
            </Card>
          );
        })}
      <Button
        variation="secondary"
        label={t(`ADD_QUESTION`)}
        className={"hover"}
        icon={<AddIcon styles={{ height: "1.5rem", width: "1.5rem" }} fill={PRIMARY_COLOR} />}
        onButtonClick={addMoreField}
      />
    </React.Fragment>
  );
};

export default CreateQuestion;
