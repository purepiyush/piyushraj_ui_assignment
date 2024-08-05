import { CloseSvg } from "@egovernments/digit-ui-react-components";
import React, { useEffect, useMemo, useState } from "react";

export const RadioButtonOption = ({
  key,
  index,
  title,
  updateOption,
  removeOption,
  inputRef,
  maxLength,
  titleHover,
  isPartiallyEnabled,
  isInputDisabled,
  formDisabled,
  disableDelete = false,
}) => {
  // const [optionTitle, setOptionTitle] = useState(title);
  const [isFocused, setIsFocused] = useState(false);

  // useEffect(() => {
  //   updateOption({ value: optionTitle, id: index });
  // }, [optionTitle]);

  return (
    <div key={index} className="optionradiobtnwrapper">
      <input type="radio" className="customradiobutton" disabled={isInputDisabled} />
      <input
        type="text"
        ref={inputRef}
        value={title}
        onChange={(ev) => updateOption({ value: ev.target.value, id: index })}
        onBlur={() => setIsFocused(false)}
        onFocus={() => setIsFocused(true)}
        className={isFocused ? "simple_editable-input" : "simple_readonly-input"}
        maxLength={maxLength}
        title={titleHover}
        disabled={isPartiallyEnabled ? !isPartiallyEnabled : formDisabled}
      />
      {!disableDelete && (
        <div className="pointer" onClick={() => removeOption(index)}>
          <CloseSvg />
        </div>
      )}
    </div>
  );
};

const MultipleChoice = ({
  t,
  options,
  optionsKey,
  updateOption,
  addOption,
  removeOption,
  createNewSurvey,
  isPartiallyEnabled,
  formDisabled,
  inputRef,
  maxLength,
  titleHover,
  isInputDisabled,
}) => {
  return (
    <div className="options_checkboxes">
      {options.map((item, index) => (
        <RadioButtonOption
          key={item.key}
          index={item.key}
          title={item?.[optionsKey]}
          updateOption={updateOption}
          removeOption={removeOption}
          inputRef={inputRef}
          maxLength={maxLength}
          titleHover={titleHover}
          isPartiallyEnabled={isPartiallyEnabled}
          isInputDisabled={isInputDisabled}
          formDisabled={formDisabled}
        ></RadioButtonOption>
      ))}
      <div>
        <button
          className="unstyled-button link"
          type="button"
          disabled={(!createNewSurvey && formDisabled) || (isPartiallyEnabled ? !isPartiallyEnabled : formDisabled)}
          onClick={() => addOption()}
        >
          {t("CS_COMMON_ADD_OPTION")}
        </button>
      </div>
    </div>
  );
};

export default MultipleChoice;
