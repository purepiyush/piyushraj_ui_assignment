import React from "react";
import { ChangeHistory } from "./ChangeHistory";

export default {
  tags: ['autodocs'],
  argTypes: {
    className: {
        options: ['custom-class'],
        control: { type: 'check' },
    }
  },
  title: "ChangeHistory",
  component: ChangeHistory,
};

export const Default = () => <ChangeHistory />;
export const Fill = () => <ChangeHistory fill="blue" />;
export const Size = () => <ChangeHistory height="50" width="50" />;
export const CustomStyle = () => <ChangeHistory style={{ border: "1px solid red" }} />;
export const CustomClassName = () => <ChangeHistory className="custom-class" />;
