import React from "react";
import { HighlightAlt } from "./HighlightAlt";

export default {
  tags: ['autodocs'],
  argTypes: {
    className: {
        options: ['custom-class'],
        control: { type: 'check' },
    }
  },
  title: "HighlightAlt",
  component: HighlightAlt,
};

export const Default = () => <HighlightAlt />;
export const Fill = () => <HighlightAlt fill="blue" />;
export const Size = () => <HighlightAlt height="50" width="50" />;
export const CustomStyle = () => <HighlightAlt style={{ border: "1px solid red" }} />;
export const CustomClassName = () => <HighlightAlt className="custom-class" />;
