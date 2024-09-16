import { CloseSvg } from "@egovernments/digit-ui-react-components";
import React, { Fragment, useEffect, useMemo, useState } from "react";
import { CheckBox } from "@egovernments/digit-ui-components";
import CreateQuestion from "./CreateQuestion";
import { DustbinIcon } from "./icons/DustbinIcon";
import { FieldV1, Button } from "@egovernments/digit-ui-components";

const Checkboxes = ({
  t,
  options,
  optionsKey,
  updateOption,
  addOption,
  removeOption,
  isPartiallyEnabled,
  createNewSurvey,
  formDisabled,
  maxLength,
  titleHover,
  inputRef,
  labelstyle,
  isInputDisabled,
  field,
  handleOptionDependency,
  subQclassName,
  subQlevel,
  subQparent,
  subQparentId,
  subQinitialQuestionData,
  addComment,
  handleOptionComment,
}) => {
  return (
    <div >
      {options.map((item, index) => (
        <>
          <CheckBoxOption
            key={item.key}
            index={item.key}
            title={item?.[optionsKey]}
            updateOption={updateOption}
            removeOption={removeOption}
            maxLength={maxLength}
            titleHover={titleHover}
            inputRef={inputRef}
            labelstyle={labelstyle}
            isPartiallyEnabled={isPartiallyEnabled}
            isInputDisabled={isInputDisabled}
            formDisabled={formDisabled}
            field={field}
            handleOptionDependency={handleOptionDependency}
            optionId={item.id}
            optionDependency={item.optionDependency}
            optionComment={item.optionComment}
            t={t}
            addComment={addComment}
            handleOptionComment={handleOptionComment}
          />
          {item.optionComment && <FieldV1
                        // className="example"
                        type={"textarea"}
                        populators={{
                          resizeSmart:true
                        }}
                        // props={{ fieldStyle: example }}
                        name="Short Answer"
                        value={item.comment || ""}
                        onChange={(event) => addComment({value: event.target.value, target: "value", id: item.key, parentId: field.id})}
                        placeholder={""}
                      />}
          {item.optionDependency && <CreateQuestion
            className={subQclassName}
            level={subQlevel}
            parent={subQparent}
            // parentId={subQparentId}
            parentId={item.id}
            initialQuestionData={subQinitialQuestionData} 
            optionId={item.id} />
          }
          {
            <hr style={{ width: "100%", borderTop: "1px solid #ccc" }} />
          }
        </>
      ))}
      <div>
      <Button
        className="custom-class"
        icon="MyLocation"
        iconFill=""
        label="Add Options"
        onClick={() => addOption()}
        size="medium"
        title=""
        variation="teritiary"
        textStyles={{width:'unset'}}
      />
        {/* <button
          className="unstyled-button link"
          type="button"
          disabled={(!createNewSurvey && formDisabled) || (isPartiallyEnabled ? !isPartiallyEnabled : formDisabled)}
          onClick={() => addOption()}
        >
          {t("CS_COMMON_ADD_OPTION")}
        </button> */}
      </div>
    </div>
  );
};

export default Checkboxes;

const CheckBoxOption = ({
  index,
  title,
  updateOption,
  removeOption,
  maxLength,
  titleHover,
  inputRef,
  labelstyle,
  isPartiallyEnabled,
  isInputDisabled,
  formDisabled,
  disableDelete = false,
  field,
  handleOptionDependency,
  optionId,
  optionDependency,
  t,
  optionComment,
  addComment,
  handleOptionComment
}) => {
  const [isFocused, setIsFocused] = useState(false);

  // useEffect(() => {
  //   updateOption({ value: optionTitle, id: index });
  // }, [optionTitle]);

  return (
    <div> 
      <div className="optioncheckboxwrapper" style={{justifyContent:"space-between", height:"3rem"}}>
        <div style={{display:"flex"}}>
          <CheckBox mainClassName="checkboxOptionVariant" label="" disable={isInputDisabled} />
          <input
            ref={inputRef}
            type="text"
            value={title}
            onChange={(ev) => updateOption({ value: ev.target.value, id: index })}
            onBlur={() => setIsFocused(false)}
            onFocus={() => setIsFocused(true)}
            className={isFocused ? "simple_editable-input" : "simple_readonly-input"}
            maxLength={maxLength}
            title={titleHover}
            style={{ ...labelstyle }}
            disabled={isPartiallyEnabled ? !isPartiallyEnabled : formDisabled}
          />
        </div>
        <div style={{display:"flex", gap:"1rem"}}>
          {
            <>
              <CheckBox
              key={field.key}
              mainClassName={"checkboxOptionVariant"}          
              disabled={optionDependency ? true: false}
              label="Add Comment"
              checked={optionComment}
              onChange={(event) => handleOptionComment(optionId)}
              // isLabelFirst={true}
              index={field.key}
              />
            </>
          }
          {/* {<CheckBox
            key={field.key}
            mainClassName={"checkboxOptionVariant"}
            disabled={optionComment ? true : false}
            label="Link Nested Checklist"
            checked={optionDependency}
            onChange={(event) => handleOptionDependency(optionId)}
            // isLabelFirst={true}
            index={field.key}
          />} */}
          {!disableDelete && (
            <div className="pointer" onClick={() => removeOption(index)}>
              <DustbinIcon />
              {t(`CAMPAIGN_DELETE_ROW_TEXT`)}
            </div>
          )}
        </div>
      </div>
    </div>
  );
};
