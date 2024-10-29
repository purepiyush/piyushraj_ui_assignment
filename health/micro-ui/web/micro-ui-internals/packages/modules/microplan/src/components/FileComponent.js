import React from "react";
import { useTranslation } from "react-i18next";
import { EditIcon } from "@egovernments/digit-ui-react-components";
import { DeleteIconv2, DownloadIcon, FileIcon, Card, CardSubHeader } from "@egovernments/digit-ui-react-components";
import { Button } from "@egovernments/digit-ui-components";

const FileComponent = ({ title, fileName, auditDetails, editHandler, deleteHandler, downloadHandler }) => {
    const { t } = useTranslation();
    const { lastmodTime,userName } = auditDetails || {}; // Destructuring the audit details for easy access
    return (
        <div>

            {/* First card */}
            <div className="view-composer-header-section">
                <CardSubHeader style={{ marginTop: 0, fontSize: "1.5rem", color: " #0B4B66", marginBottom: "0rem" }}>{title}</CardSubHeader>
            </div>

            <Card type={"secondary"}
                className="card-color"
                onClick={(e) => {
                    downloadHandler();
                }}
            >
                <div className="dm-parent-container">
                    {/* Left side: File Icon */}
                    <div
                        className="dm-uploaded-file-container-sub"
                    >
                        <FileIcon className="dm-icon" />
                        <div>{fileName}</div>
                    </div>

                    {/* Right side: Edit, Delete, and Audit details */}
                    <div className="dm-actions-container">

                        {/* Display audit details (Uploaded by user and last modified time) */}
                        {lastmodTime && userName && (
                            <div className="dm-audit-info" style={{ fontSize: "1rem", color: "#8e9497" }}>
                                Uploaded by {userName} | {lastmodTime}
                            </div>
                        )}
                        {/* Edit Icon and Button */}
                        <div className="dm-campaign-preview-edit-container" onClick={() => handleRedirect(1)}>
                            {editHandler &&
                                <Button
                                    label={t("WBH_EDIT")}
                                    variation="secondary"
                                    icon={<EditIcon styles={{ height: "1.25rem", width: "2.5rem" }} />}
                                    type="button"
                                    className="dm-workbench-download-template-btn dm-hover"
                                    onButtonClick={(e) => {
                                        editHandler();
                                    }}
                                />
                            }
                        </div>

                        {/* Delete Button */}
                        {deleteHandler &&
                            <Button
                                label={t("WBH_DELETE")}
                                variation="secondary"
                                icon={<DeleteIconv2 styles={{ height: "1.25rem", width: "2.5rem" }} />}
                                type="button"
                                className="dm-workbench-download-template-btn dm-hover"
                                onButtonClick={(e) => {
                                    deleteHandler();
                                }}
                            />
                        }

                        {/* Download Button */}
                        {downloadHandler &&
                            <Button
                                label={t("WBH_DOWNLOAD")}
                                variation="secondary"
                                icon={"FileDownload"}
                                type="button"
                                className="dm-workbench-download-template-btn dm-hover"
                            />
                        }
                    </div>
                </div>
            </Card>

        </div>
    );
};

export default FileComponent;
