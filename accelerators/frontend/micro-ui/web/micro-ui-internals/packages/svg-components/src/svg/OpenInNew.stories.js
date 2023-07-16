import React from "react";
import { OpenInNew } from "./OpenInNew";

export default {
  tags: ['autodocs'],
  argTypes: {
    className: {
        options: ['custom-class'],
        control: { type: 'check' },
    }
  },
  title: "OpenInNew",
  component: OpenInNew,
};

export const Default = () => <OpenInNew />;
export const Fill = () => <OpenInNew fill="blue" />;
export const Size = () => <OpenInNew height="50" width="50" />;
export const CustomStyle = () => <OpenInNew style={{ border: "1px solid red" }} />;
export const CustomClassName = () => <OpenInNew className="custom-class" />;
