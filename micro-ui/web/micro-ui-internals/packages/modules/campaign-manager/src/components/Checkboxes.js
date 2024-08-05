import { CloseSvg } from "@egovernments/digit-ui-react-components";
import React, { useEffect, useMemo, useState } from "react";
import { CheckBox } from "@egovernments/digit-ui-components";
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
}) => {
  return (
    <div className="options_checkboxes">
      {options.map((item, index) => (
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
        />
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
}) => {
  // const [optionTitle, setOptionTitle] = useState(title);
  const [isFocused, setIsFocused] = useState(false);

  // useEffect(() => {
  //   updateOption({ value: optionTitle, id: index });
  // }, [optionTitle]);

  return (
    <div className="optioncheckboxwrapper">
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
      {!disableDelete && (
        <div className="pointer" onClick={() => removeOption(index)}>
          <CloseSvg />
        </div>
      )}
    </div>
  );
};
