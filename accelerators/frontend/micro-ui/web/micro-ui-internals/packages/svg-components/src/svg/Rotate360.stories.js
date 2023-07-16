import React from "react";
import { Rotate360 } from "./Rotate360";

export default {
  tags: ['autodocs'],
  argTypes: {
    className: {
        options: ['custom-class'],
        control: { type: 'check' },
    }
  },
  title: "Rotate360",
  component: Rotate360,
};

export const Default = () => <Rotate360 />;
export const Fill = () => <Rotate360 fill="blue" />;
export const Size = () => <Rotate360 height="50" width="50" />;
export const CustomStyle = () => <Rotate360 style={{ border: "1px solid red" }} />;
export const CustomClassName = () => <Rotate360 className="custom-class" />;
