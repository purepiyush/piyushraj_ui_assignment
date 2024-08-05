import React, { useState, useEffect, Fragment } from "react";
import { AddIcon, Button, Card, CardText, Header, TextInput, Dropdown, MultiUploadWrapper } from "@egovernments/digit-ui-react-components";
import { useTranslation } from "react-i18next";
import { LabelFieldPair } from "@egovernments/digit-ui-react-components";
import { DustbinIcon } from "./icons/DustbinIcon";
// import { productType } from "../configs/productType";
import { PRIMARY_COLOR } from "../utils";
import { CheckBox, FieldV1, Uploader } from "@egovernments/digit-ui-components";
import MultipleChoice, { RadioButtonOption } from "./MultipleChoice";
import Checkboxes from "./Checkboxes";

const FieldSelector = ({ type, name, value, onChange, placeholder = "", t, field, setQuestionData }) => {
  const [options, setOptions] = useState([
    {
      key: 1,
      label: "OPTION",
    },
  ]);
  useEffect(() => {
    setQuestionData((prev) => {
      return prev.map((item, index) => {
        if (item.key === field.key) {
          return {
            ...item,
            options: options,
          };
        }
        return { ...item };
      });
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
  const handleSingleOption = (param) => {
    setOptions((prev) => [
      {
        key: prev?.[0]?.key,
        label: param?.value,
      },
    ]);
  };
  const removeOption = (id) => {
    if (options.length === 1) return null;
    setOptions((prev) => {
      const temp = prev.filter((item) => item.key !== id);
      return temp.map((i, c) => ({ key: c + 1, label: i?.label }));
    });
  };
  switch (type?.code) {
    //     case "String":
    //       return (
    //         <FieldV1
    //           withoutLabel={true}
    //           type={"text"}
    //           name={name}
    //           value={value}
    //           placeholder={t("placeholder")}
    //           populators={{
    //             validation: {
    //               // min: Digit.Utils.date.getDate(Date.now() + ONE_DAY_IN_MS),
    //             },
    //           }}
    //           // min={Digit.Utils.date.getDate(Date.now() + ONE_DAY_IN_MS)}
    //           onChange={onChange}
    //         />
    //       );
    //       break;
    //     case "Number":
    //       return (
    //         <FieldV1
    //           withoutLabel={true}
    //           type={"number"}
    //           name={name}
    //           value={value}
    //           placeholder={t(placeholder)}
    //           populators={{
    //             validation: {
    //               // min: Digit.Utils.date.getDate(Date.now() + ONE_DAY_IN_MS),
    //             },
    //           }}
    //           // min={Digit.Utils.date.getDate(Date.now() + ONE_DAY_IN_MS)}
    //           onChange={onChange}
    //         />
    //       );
    //       break;
    //     case "Text":
    //       return (
    //         <FieldV1
    //           withoutLabel={true}
    //           type={"text"}
    //           name={name}
    //           value={value}
    //           placeholder={t(placeholder)}
    //           populators={{
    //             validation: {
    //               // min: Digit.Utils.date.getDate(Date.now() + ONE_DAY_IN_MS),
    //             },
    //           }}
    //           // min={Digit.Utils.date.getDate(Date.now() + ONE_DAY_IN_MS)}
    //           onChange={onChange}
    //         />
    //       );
    //       break;
    //     case "date":
    //       return (
    //         <FieldV1
    //           name={name}
    //           withoutLabel={true}
    //           type={"date"}
    //           value={value}
    //           placeholder={t(placeholder)}
    //           populators={{
    //             validation: {
    //               // min: Digit.Utils.date.getDate(Date.now() + ONE_DAY_IN_MS),
    //             },
    //           }}
    //           min={Digit.Utils.date.getDate(Date.now())}
    //           onChange={onChange}
    //         />
    //       );
    //       break;
    //     case "time":
    //       return (
    //         <FieldV1
    //           withoutLabel={true}
    //           type={"time"}
    //           value={value}
    //           name={name}
    //           placeholder={t(placeholder)}
    //           populators={{
    //             validation: {
    //               // min: Digit.Utils.date.getDate(Date.now() + ONE_DAY_IN_MS),
    //             },
    //           }}
    //           // min={Digit.Utils.date.getDate(Date.now() + ONE_DAY_IN_MS)}
    //           onChange={onChange}
    //         />
    //       );
    //       break;
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
      return <div></div>;
      break;
  }
};
const CreateDependencyQuestion = () => {
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
  // const [options, setOptions] = useState([
  //   {
  //     key: 1,
  //     label: "OPTION",
  //   },
  // ]);
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
  const [questionData, setQuestionData] = useState([{ key: 1, title: null, type: null, value: null, isRequired: false }]);

  // useEffect(() => {
  //   onSelect("createQuestion", {
  //     questionData,
  //     // options,
  //   });
  // }, [questionData]);

  const addMoreField = () => {
    setQuestionData((prev) => [
      ...prev,
      {
        key: prev.length + 1,
        title: null,
        type: null,
        value: null,
        isRequired: false,
      },
    ]);
  };

  const deleteField = (index) => {
    setQuestionData((prev) => {
      const temp = prev.filter((i) => i.key !== index);
      return temp.map((i, n) => ({ ...i, key: n + 1 }));
    });
  };

  const handleUpdateField = (data, target, index) => {
    setQuestionData((prev) => {
      return prev.map((i) => {
        if (i.key === index) {
          return {
            ...i,
            [target]: target === "isRequired" || target === "isRegex" || target === "dependency" ? data.target.checked : data,
          };
        }
        return {
          ...i,
        };
      });
    });
  };

  return (
    <React.Fragment>
      {questionData?.map((field, index) => {
        return (
          <Card className="question-card-container">
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
                    onChange={(event) => handleUpdateField(event.target.value, "title", field.key)}
                    placeholder={"Type your questions here"}
                  />
                  <Dropdown
                    style={{ width: "20%" }}
                    t={t}
                    option={dataType}
                    optionKey={"code"}
                    selected={field?.type || ""}
                    select={(value) => {
                      handleUpdateField(value, "type", field.key);
                    }}
                    placeholder="Type"
                  />
                </div>
                {field?.isRegex && (
                  <Dropdown
                    style={{ width: "70%" }}
                    t={t}
                    option={regexOption}
                    optionKey={"code"}
                    selected={field?.regex || ""}
                    select={(value) => {
                      handleUpdateField(value, "regex", field.key);
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
                    onChange={(event) => handleUpdateField(event.target.value, "value", field?.key)}
                    placeholder={"Answer"}
                    // options={options}
                    // setOptions={setOptions}
                    setQuestionData={setQuestionData}
                    field={field}
                  />
                )}
                {/* <TextInput
                  name="value"
                  value={field?.value || ""}
                  onChange={(event) => handleUpdateField(event.target.value, "value", field?.key)}
                  placeholder={"Answer"}
                /> */}
              </div>
            </LabelFieldPair>
            <div className="heading-bar">
              <CheckBox
                key={field.key}
                styles={{ margin: "20px 0 40px", maxWidth: "70%" }}
                label={t("REQUIRED")}
                checked={field?.isRequired}
                onChange={(event) => handleUpdateField(event, "isRequired", field.key)}
                // isLabelFirst={true}
                index={field.key}
              />
              <CheckBox
                key={field.key}
                styles={{ margin: "20px 0 40px", maxWidth: "70%" }}
                label={t("REGEX")}
                checked={field?.isRegex}
                onChange={(event) => handleUpdateField(event, "isRegex", field.key)}
                // isLabelFirst={true}
                index={field.key}
              />
              {field?.type?.code && field?.type?.code === "SingleValueList" ? (
                <CheckBox
                  key={field.key}
                  styles={{ margin: "20px 0 40px", maxWidth: "70%" }}
                  label={t("DEPENDENCY")}
                  checked={field?.dependency}
                  onChange={(event) => handleUpdateField(event, "dependency", field.key)}
                  // isLabelFirst={true}
                  index={field.key}
                />
              ) : null}
              {questionData?.length > 1 && (
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

export default CreateDependencyQuestion;
