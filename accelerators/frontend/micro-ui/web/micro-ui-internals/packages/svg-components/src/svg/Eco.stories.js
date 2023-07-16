import React from "react";
import { Eco } from "./Eco";

export default {
  tags: ['autodocs'],
  argTypes: {
    className: {
        options: ['custom-class'],
        control: { type: 'check' },
    }
  },
  title: "Eco",
  component: Eco,
};

export const Default = () => <Eco />;
export const Fill = () => <Eco fill="blue" />;
export const Size = () => <Eco height="50" width="50" />;
export const CustomStyle = () => <Eco style={{ border: "1px solid red" }} />;
export const CustomClassName = () => <Eco className="custom-class" />;
