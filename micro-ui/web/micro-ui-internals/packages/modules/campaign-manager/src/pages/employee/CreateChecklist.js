import React, { useEffect, useState } from "react";
import { Toast } from "@egovernments/digit-ui-components";
import { FormComposerV2 } from "@egovernments/digit-ui-react-components";
import { checklistCreateConfig } from "../../configs/checklistCreateConfig";
import { useTranslation } from "react-i18next";

const CreateChecklist = () => {
  const { t } = useTranslation();
  const tenantId = Digit.ULBService.getCurrentTenantId();
  const searchParams = new URLSearchParams(location.search);
  const [showToast, setShowToast] = useState(null);
  const projectType = searchParams.get("type");
  const projectName = searchParams.get("name");
  const flow = searchParams.get("flow");
  const role = searchParams.get("role");
  const module = searchParams.get("module");
  let locale = Digit?.SessionStorage.get("initData")?.selectedLanguage || "en_IN";
  const { mutate } = Digit.Hooks.campaign.useCreateChecklist(tenantId);
  const { mutate: localisationMutate } = Digit.Hooks.campaign.useUpsertLocalisation(tenantId);

  const closeToast = () => {
    setShowToast(null);
  };

  useEffect(() => {
    if (showToast) {
      setTimeout(closeToast, 5000);
    }
  }, [showToast]);

  const onFormValueChange = (ll, formData) => {};

  // creating localisation data payload 
  const addLocal = (data) => {
    return data?.map((item, index) => {
      return {
        code: `${projectType?.toUpperCase()}${tenantId?.toUpperCase()}.${projectName?.toUpperCase()}.${flow.toUpperCase()}.${role.toUpperCase()}.SM${
          item?.key
        }`,
        message: item?.title,
        locale: locale,
        module: module,
      };
    });
  };

  const buildCode = (item, data) => {
    if (!item.parentId) {
        return `SM${item.key}`;
    }

    const parentItem = data.find(parent => parent.id === item.parentId);
    const parentCode = buildCode(parentItem, data);
    const dependencyLabel = item.dependencyAns?.label || ''; // Access the current item's dependencyAns.label

    return `${parentCode}${dependencyLabel ? '.' + dependencyLabel : ''}.SM${item.key}`;
};
  const payloadData = (data) => {

    // attributes structure needs to be redefine for dependency checklist  
    const attributes = data?.map((item, index) => {
      const code = buildCode(item, data);

    console.log("code" , code);
      return {
        tenantId: tenantId,
        code: code,
        dataType: item?.type?.code,
        values: item?.value,
        required: item?.isRequired,
        isActive: true,
        reGex: item?.isRegex ? item?.regex?.regex : null,
        order: item?.key,
        additionalDetails: {},
      };
    });
    return {
      tenantId: tenantId,
      code: role,
      isActive: true,
      attributes: attributes,
      additionalDetails: {},
    };
  };

  // on submit creating checklist. After success adding localisation
  const onSubmit = async (formData) => {
    console.log("formData" , formData);
    const payload = payloadData(formData?.createQuestion?.questionData);
    await mutate(payload, {
      onError: (error, variables) => {
        setShowToast({ label: "CHECKLIST_CREATED_FAILED" });
      },
      onSuccess: async (data) => {
        if (module) {
          const localisations = addLocal(formData?.createQuestion?.questionData);
          await localisationMutate(localisations, {
            onError: (error, variables) => {
              setShowToast({ label: "CHECKLIST_CREATED_LOCALISATION_ERROR" });
            },
            onSuccess: async (data) => {
              setShowToast({ label: "CHECKLIST_AND_LOCALISATION_CREATED_SUCCESSFULLY" });
            },
          });
        } else {
          setShowToast({ label: "CHECKLIST_CREATED_SUCCESSFULLY" });
        }
      },
    });
  };

  return (
    <div>
      <FormComposerV2
        showMultipleCardsWithoutNavs={true}
        label={t("CREATE_CHECKLIST")}
        config={checklistCreateConfig?.map((config) => {
          return {
            ...config,
          };
        })}
        onSubmit={onSubmit}
        fieldStyle={{ marginRight: 0 }}
        noBreakLine={true}
        cardClassName={"page-padding-fix"}
        onFormValueChange={onFormValueChange}
        actionClassName={"checklistCreate"}
      />

      {showToast && (
        <Toast
          type={showToast?.isError ? "error" : "success"}
          // error={showToast?.isError}
          label={t(showToast?.label)}
          isDleteBtn={"true"}
          onClose={() => closeToast()}
        />
      )}
    </div>
  );
};

export default CreateChecklist;
