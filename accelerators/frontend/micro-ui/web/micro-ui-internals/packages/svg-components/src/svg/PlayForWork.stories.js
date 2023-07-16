import React from "react";
import { PlayForWork } from "./PlayForWork";

export default {
  tags: ['autodocs'],
  argTypes: {
    className: {
        options: ['custom-class'],
        control: { type: 'check' },
    }
  },
  title: "PlayForWork",
  component: PlayForWork,
};

export const Default = () => <PlayForWork />;
export const Fill = () => <PlayForWork fill="blue" />;
export const Size = () => <PlayForWork height="50" width="50" />;
export const CustomStyle = () => <PlayForWork style={{ border: "1px solid red" }} />;
export const CustomClassName = () => <PlayForWork className="custom-class" />;
