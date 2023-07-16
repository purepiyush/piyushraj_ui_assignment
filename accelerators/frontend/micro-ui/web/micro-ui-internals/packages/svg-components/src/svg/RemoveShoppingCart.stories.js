import React from "react";
import { RemoveShoppingCart } from "./RemoveShoppingCart";

export default {
  tags: ['autodocs'],
  argTypes: {
    className: {
        options: ['custom-class'],
        control: { type: 'check' },
    }
  },
  title: "RemoveShoppingCart",
  component: RemoveShoppingCart,
};

export const Default = () => <RemoveShoppingCart />;
export const Fill = () => <RemoveShoppingCart fill="blue" />;
export const Size = () => <RemoveShoppingCart height="50" width="50" />;
export const CustomStyle = () => <RemoveShoppingCart style={{ border: "1px solid red" }} />;
export const CustomClassName = () => <RemoveShoppingCart className="custom-class" />;
