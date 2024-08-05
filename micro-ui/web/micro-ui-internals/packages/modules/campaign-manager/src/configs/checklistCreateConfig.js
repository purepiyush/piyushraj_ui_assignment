export const checklistCreateConfig = [
  {
    head: "QUESTIONS",
    body: [
      {
        type: "component",
        component: "CreateQuestion",
        withoutLabel: true,
        key: "createQuestion",
        validation: {},
        populators: {
          validation: {},
        },
        customProps: {
          module: "Campaign",
        },
      },
    ],
  },
];
