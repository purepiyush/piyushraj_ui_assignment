import i18next from "i18next";
import { initReactI18next } from "react-i18next";
import ReactPostprocessor from "i18next-react-postprocessor";

const i18nextConfig = () => ({
  lng: Digit.StoreData.getCurrentLanguage(),
  fallbackLng: "en_IN",
  debug: true,
  ns: ["translations"],
  defaultNS: "translations",
  keySeparator: false,
  saveMissing: false,
  saveMissingTo: "current",
  interpolation: {
    escapeValue: false,
    formatSeparator: ",",
  },
  postProcess: [`reactPostprocessor`, "templatePostprocessor"],
  react: {
    useSuspense: true,
    bindI18n: "loaded",
    bindI18nStore: "added",
  },
  resources: {
    en_IN: {
      translations: {
        welcome: "Welcome",
      },
    },
  },
});

function replaceLiterals(text = "", dynamicValues = {}) {
  let returnText = text;
  const regex = /[^\{\{][\{]\w+/;
  if (regex.exec(text) !== null) {
    Object.keys(dynamicValues).forEach((key) => {
      returnText = returnText.replace(`{${key.toUpperCase()}}`, dynamicValues[key]);
    });
  }
  console.log("replaceLit fn",text); //added log

  return returnText;
}

const templatePostprocessor = {
  type: "postProcessor",
  name: "templatePostprocessor",
  process: function (value, key, options, translator) {
    console.log("templatePost",value,key,options,translator); //added log
    return replaceLiterals(value, options);
  },
};

export const initI18n = (callback) => {
  console.log(callback);
  return i18next
    .use(new ReactPostprocessor())
    .use(templatePostprocessor)
    .use(initReactI18next)
    .init(i18nextConfig(), (err,t) => {
      if (err) return console.log('something went wrong loading', err);
      console.log(t('welcome')); // -> same as i18next.t
      window.i18next = i18next;
      callback();
    });
};