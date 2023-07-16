import React from "react";
import PropTypes from "prop-types";

export const Expand = ({ className, height = "24", width = "24", style = {}, fill = "#F47738", onClick = null }) => {
  return (
    <svg width={width} height={height} className={className} onClick={onClick} style={style} viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <g clip-path="url(#clip0_105_359)">
        <path d="M4 20H20V22H4V20ZM4 2H20V4H4V2ZM13 9H16L12 5L8 9H11V15H8L12 19L16 15H13V9Z" fill={fill} />
      </g>
      <defs>
        <clipPath id="clip0_105_359">
          <rect width="24" height="24" fill="white" />
        </clipPath>
      </defs>
    </svg>
  );
};


