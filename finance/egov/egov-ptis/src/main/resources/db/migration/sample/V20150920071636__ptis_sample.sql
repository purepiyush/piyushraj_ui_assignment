-----------------START-------------------
INSERT INTO eg_module (id, name, enabled, contextroot, parentmodule, displayname, ordernumber) VALUES (359, 'Property Tax', true, 'ptis', NULL, 'Property Tax', 6);
INSERT INTO eg_module (id, name, enabled, contextroot, parentmodule, displayname, ordernumber) VALUES (360, 'New Property', true, NULL, 359, 'New Property', NULL);
INSERT INTO eg_module (id, name, enabled, contextroot, parentmodule, displayname, ordernumber) VALUES (361, 'Existing property', true, NULL, 359, 'Existing property', NULL);
INSERT INTO eg_module (id, name, enabled, contextroot, parentmodule, displayname, ordernumber) VALUES (362, 'PTIS-Reports', true, NULL, 359, 'Reports', NULL);
INSERT INTO eg_module (id, name, enabled, contextroot, parentmodule, displayname, ordernumber) VALUES (363, 'GIS', true, NULL, 359, 'GIS', NULL);
INSERT INTO eg_module (id, name, enabled, contextroot, parentmodule, displayname, ordernumber) VALUES (364, 'PTIS-Administration', true, NULL, 359, 'Administration', NULL);
INSERT INTO eg_module (id, name, enabled, contextroot, parentmodule, displayname, ordernumber) VALUES (396, 'Ptis Revision Petition', false, NULL, 359, 'Ptis Revision Petition', 1);
INSERT INTO eg_module (id, name, enabled, contextroot, parentmodule, displayname, ordernumber) VALUES (400, 'PTIS-COMMON', false, 'ptis', 359, 'PTIS-COMMON', NULL);
------------------END---------------------

-----------------START-------------------
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (839,'CollectionPTIS','/search/searchProperty-searchForm.action','callbackurl=/collection/receipts/receipt-newform?collectXML=',400,1,'Property Tax','false','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (840,'Search by GIS','/search/gisSearchProperty-gisFormRedirect.action',null,363,1,'Search by GIS','true','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (842,'Search GIS Property','/search/gisSearchProperty-gisSearchForm.action',null,363,1,'Search GIS Module','false','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (843,'Search GIS Property Default','/search/gisSearchProperty.action',null,363,1,'Search GIS Module','false','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (844,'PTIS Index','/eGov.jsp',null,400,1,'PTIS Index','false','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (845,'Create Property','/create/createProperty-newForm.action',null,360,1,'Create New Property','true','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (846,'Create Property Submit','/create/createProperty-create.action',null,360,1,'Create New Property','false','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (847,'Search Property','/search/searchProperty-searchForm.action',null,361,1,'Search Property','true','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (848,'Search Property By Index','/search/searchProperty-srchByIndex.action',null,361,1,'Search Property By Index','false','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (849,'Search Property By Bndry','/search/searchProperty-srchByBndry.action',null,361,1,'Search Property By Bndry','false','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (850,'Search Property By Area','/search/searchProperty-srchByArea.action',null,361,1,'Search Property','false','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (852,'Search Notice','/reports/searchNotices-index.action',null,362,1,'Search Notice','true','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (853,'Search GIS Property by Boundary','/search/gisSearchProperty-gisSearchForm.action','mode=bndry',363,1,'Search GIS Property by Boundary','false','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (854,'Search GIS Property by Property Type','/search/gisSearchProperty-gisSearchForm.action','mode=propType',363,1,'Search GIS Property by Property Type','false','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (855,'Search GIS Property by Demand','/search/gisSearchProperty-gisSearchForm.action','mode=demand',363,1,'Search GIS Property by Demand','false','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (856,'Search GIS Property by Defaulter','/search/gisSearchProperty-gisSearchForm.action','mode=defaulter',363,1,'Search GIS Property by Defaulter','false','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (857,'Change Location Rate','/admin/changeStreetRate-searchForm.action',null,364,1,'Change Location Rate','true','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (859,'PTISVIEWDOC','/view/viewProperty-viewDoc.action',null,400,1,'PTISVIEWDOC','false','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (865,'Edit Demand Form','/edit/editDemand-newEditForm.action',null,400,0,'Edit Demand Form','false','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (866,'Edit Demand Update','/edit/editDemand',null,400,0,'Edit Demand Update','false','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (874,'Edit Owner','/modify/modifyProperty-ownerForm.action',null,400,null,'Edit Owner Form','false','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (875,'Edit Owner submit','/modify/modifyProperty-updateOwner.action',null,400,null,'Edit Owner submit','false','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (876,'Generate bills for ward New','/bills/bulkBillGeneration-newForm.action',null,364,1,'Generate bills for ward','true','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (877,'Generate bills for ward Ack','/bills/bulkBillGeneration-generateBills.action',null,364,1,'Generate bills for ward Ack','false','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (996,'Populate LocationFactors','/common/ajaxCommon-locationFactorsByWard.action',null,361,0,'Populate LocationFactors','false','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (997,'Populate Structural Classifications','/common/ajaxCommon-populateStructuralClassifications.action',null,361,0,'Populate Structural Classifications','false','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (998,'Populate Wards','/common/ajaxCommon-wardByZone.action',null,361,0,'Populate Wards','false','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (999,'Populate Streets','/common/ajaxCommon-streetByWard.action',null,361,0,'Populate Streets','false','ptis',0,1,'2015-07-15 19:14:54.980736',1,'2015-07-15 19:14:54.980736',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1050,'View Property','/view/viewProperty-viewForm.action',null,361,null,'View Property','false','ptis',0,1,'2015-07-15 19:14:57.181755',1,'2015-07-15 19:14:57.181755',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1051,'Load Admin Boundaries','/common/ajaxCommon-blockByLocality.action',null,360,null,'View Property','false','ptis',0,1,'2015-07-15 19:14:57.181755',1,'2015-07-15 19:14:57.181755',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1062,'Modify Property Form','/modify/modifyProperty-modifyForm.action',null,361,null,'Modify Property Form','false','ptis',null,1,'2015-07-15 19:15:09.902655',1,'2015-07-15 19:15:09.902655',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1064,'Rebate Master','/rebatePeriod/create',null,364,3,'Rebate Master','true','ptis',0,1,'2015-07-15 19:15:12.506533',1,'2015-07-15 19:15:12.506533',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1065,'Transfer Property Form','/property/transfer/new.action',null,361,null,'Transfer Property Form','false','ptis',null,1,'2015-07-15 19:15:12.523258',1,'2015-07-15 19:15:12.523258',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1066,'Transfer Property Save','/property/transfer/save.action',null,361,null,'Transfer Property Save','false','ptis',null,1,'2015-07-15 19:15:12.523258',1,'2015-07-15 19:15:12.523258',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1067,'Populate Designation','/common/ajaxCommon-populateDesignationsByDept.action',null,360,null,'Populate Designation','false','ptis',0,1,'2015-07-15 19:15:12.824107',1,'2015-07-15 19:15:12.824107',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1068,'Populate Approver','/common/ajaxCommon-populateUsersByDeptAndDesignation.action',null,360,null,'Populate Approver','false','ptis',0,1,'2015-07-15 19:15:12.824107',1,'2015-07-15 19:15:12.824107',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1074,'Property Tax Rev Petition New','/revPetition/revPetition-newForm.action',null,396,1,'Property Tax Rev Petition New','false','ptis',0,1,'2015-07-15 19:15:12.932985',1,'2015-07-15 19:15:12.932985',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1075,'Property Tax Rev Petition View','/revPetition/revPetition-view.action',null,396,2,'Property Tax Rev Petition View','false','ptis',0,1,'2015-07-15 19:15:12.932985',1,'2015-07-15 19:15:12.932985',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1076,'Property Tax Rev Petition Action','/revPetition/revPetition.action',null,396,3,'Property Tax Rev Petition Action','false','ptis',0,1,'2015-07-15 19:15:12.932985',1,'2015-07-15 19:15:12.932985',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1078,'Open inbox','/create/createProperty-view.action',null,360,null,'Open inbox','false','ptis',0,1,'2015-07-15 19:15:13.650394',1,'2015-07-15 19:15:13.650394',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1079,'Approve Property','/create/createProperty-approve.action',null,360,null,'Approve Property','false','ptis',0,1,'2015-07-15 19:15:13.650394',1,'2015-07-15 19:15:13.650394',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1080,'Forward Property','/create/createProperty-forward.action',null,360,null,'Forward Property','false','ptis',0,1,'2015-07-15 19:15:13.650394',1,'2015-07-15 19:15:13.650394',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1081,'Reject Property','/create/createProperty-reject.action',null,360,null,'Reject Property','false','ptis',0,1,'2015-07-15 19:15:13.650394',1,'2015-07-15 19:15:13.650394',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1082,'Modify Property Action','/modify/modifyProperty-save.action',null,361,null,'Modify Property Action','false','ptis',null,1,'2015-07-15 19:15:13.734131',1,'2015-07-15 19:15:13.734131',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1088,'Transfer Property View','/property/transfer/view.action',null,361,null,'Transfer Property View','false','ptis',null,1,'2015-07-15 19:15:13.850645',1,'2015-07-15 19:15:13.850645',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1089,'Transfer Property Approve','/property/transfer/approve.action',null,361,null,'Transfer Property Approve','false','ptis',null,1,'2015-07-15 19:15:13.850645',1,'2015-07-15 19:15:13.850645',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1090,'Transfer Property Forward','/property/transfer/forward.action',null,361,null,'Transfer Property Forward','false','ptis',null,1,'2015-07-15 19:15:13.850645',1,'2015-07-15 19:15:13.850645',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1091,'Transfer Property Reject','/property/transfer/reject.action',null,361,null,'Transfer Property Reject','false','ptis',null,1,'2015-07-15 19:15:13.850645',1,'2015-07-15 19:15:13.850645',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1094,'Forward Modify Property','/modify/modifyProperty-forward.action',null,361,null,'Forward Modify Property','false','ptis',null,1,'2015-07-15 19:15:14.370376',1,'2015-07-15 19:15:14.370376',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1095,'View Modify Property','/modify/modifyProperty-view.action',null,361,null,'View Modify Property','false','ptis',null,1,'2015-07-15 19:15:14.370376',1,'2015-07-15 19:15:14.370376',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1096,'Forward View Modify Property','/modify/modifyProperty-forwardView.action',null,361,null,'Forward View Modify Property','false','ptis',null,1,'2015-07-15 19:15:14.370376',1,'2015-07-15 19:15:14.370376',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1097,'Approve Modify Property','/modify/modifyProperty-approve.action',null,361,null,'Approve Modify Property','false','ptis',null,1,'2015-07-15 19:15:14.370376',1,'2015-07-15 19:15:14.370376',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1098,'Reject Modify Property','/modify/modifyProperty-reject.action',null,361,null,'Reject Modify Property','false','ptis',null,1,'2015-07-15 19:15:14.370376',1,'2015-07-15 19:15:14.370376',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1099,'Search Property By Location','/search/searchProperty-srchByLocation.action',null,361,1,'Search Property By Location','false','ptis',0,1,'2015-07-15 19:15:14.403683',1,'2015-07-15 19:15:14.403683',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1100,'Search Property By Demand','/search/searchProperty-searchByDemand.action',null,361,1,'Search Property By Demand','false','ptis',0,1,'2015-07-15 19:15:14.403683',1,'2015-07-15 19:15:14.403683',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1101,'Search Property By Assessment','/search/searchProperty-srchByAssessment.action',null,361,1,'Search Property By Demand','false','ptis',0,1,'2015-07-15 19:15:14.403683',1,'2015-07-15 19:15:14.403683',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1106,'Unit Rate Master','/admin/unitRate-newForm.action',null,364,2,'Unit Rate','true','ptis',0,1,'2015-07-15 19:15:14.757074',1,'2015-07-15 19:15:14.757074',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1107,'Unit Rate Create','/admin/unitRate-create.action',null,364,3,'Unit Rate Create','false','ptis',0,1,'2015-07-15 19:15:14.757074',1,'2015-07-15 19:15:14.757074',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1108,'Generate Collection Bill','/collection/collectPropertyTax-generateBill.action',null,361,0,'Generate Collection Bill','false','ptis',0,1,'2015-07-15 19:15:14.882475',1,'2015-07-15 19:15:14.882475',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1113,'Populate Designation For Revision Petition','/common/ajaxCommon-populateDesignationsByDeptForRevisionPetition.action',null,396,null,'Populate Designation For Revision Petition','false','ptis',0,1,'2015-07-15 19:17:52.4041',1,'2015-07-15 19:17:52.4041',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1114,'PropTax Rev Petition Add hearing','/revPetition/revPetition-addHearingDate.action',null,396,1,'PropTax Rev Petition Add hearing','false','ptis',0,1,'2015-07-15 19:17:52.4041',1,'2015-07-15 19:17:52.4041',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1115,'PropTax Rev Petition generate hearingnotice','/revPetition/revPetition-generateHearingNotice',null,400,1,'PropTax Rev Petition Add hearing','false','ptis',0,1,'2015-07-15 19:17:52.4041',1,'2015-07-15 19:17:52.4041',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1116,'PropTax Rev Petition record hearing','/revPetition/revPetition-recordHearingDetails',null,400,1,'PropTax Rev Petition record hearing','false','ptis',0,1,'2015-07-15 19:17:52.4041',1,'2015-07-15 19:17:52.4041',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1117,'PropTax Rev Petition record inspection','/revPetition/revPetition-recordInspectionDetails',null,400,1,'PropTax Rev Petition record inspection','false','ptis',0,1,'2015-07-15 19:17:52.4041',1,'2015-07-15 19:17:52.4041',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1118,'PropTax Rev Petition Outcome','/revPetition/revPetition-recordObjectionOutcome',null,400,1,'PropTax Rev Petition Outcome','false','ptis',0,1,'2015-07-15 19:17:52.4041',1,'2015-07-15 19:17:52.4041',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1119,'PropTax Rev Petition endoresement notice','/revPetition/revPetition-generateEnodresementNotice',null,400,1,'PropTax Rev Petition endoresement notice','false','ptis',0,1,'2015-07-15 19:17:52.4041',1,'2015-07-15 19:17:52.4041',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1129,'createPropertyAckPrint','/create/createProperty-printAck.action',null,360,4,'createPropertyAckPrint','false','ptis',0,1,'2015-07-15 19:17:52.955373',1,'2015-07-15 19:17:52.955373',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1130,'Acknowledgement Transfer Property','/property/transfer/printAck.action',null,361,null,'Acknowledgement Transfer Property','false','ptis',0,1,'2015-07-15 19:17:52.971998',1,'2015-07-15 19:17:52.971998',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1131,'Notice Transfer Property','/property/transfer/printNotice.action',null,361,null,'Acknowledgement Transfer Property','false','ptis',0,1,'2015-07-15 19:17:53.005346',1,'2015-07-15 19:17:53.005346',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1144,'PropTax generateBill','/bills/billGeneration-generateBill.action',null,400,0,null,'false','ptis',0,1,'2015-07-15 19:17:57.915012',1,'2015-07-15 19:17:57.915012',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1145,'Transferee Delete','/property/transfer/delete-transferee.action',null,361,null,'Transferee Delete','false','ptis',null,1,'2015-07-15 19:17:57.948467',1,'2015-07-15 19:17:57.948467',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1146,'Calculate Mutation Fee','/property/transfer/calculate-mutationfee.action',null,361,null,'Calculate Mutation Fee','false','ptis',null,1,'2015-07-15 19:17:57.965094',1,'2015-07-15 19:17:57.965094',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1148,'generateSpecialNotice','/notice/propertyTaxNotice-generateNotice',null,360,3,'generateSpecialNotice','false','ptis',0,1,'2015-07-15 19:18:00.649018',1,'2015-07-15 19:18:00.649018',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1149,'PropTax report viewer','/reportViewer',null,400,1,'PropTax report viewer','false','ptis',0,1,'2015-07-15 19:18:00.666015',1,'2015-07-15 19:18:00.666015',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1154,'Populate Categories by Property Type','/common/ajaxCommon-propTypeCategoryByPropType.action',null,396,null,'Populate Categories by Property Type','false','ptis',0,1,'2015-07-15 19:18:00.817023',1,'2015-07-15 19:18:00.817023',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1157,'PropTax Rev Petition print hearingnotice','/revPetition/revPetition-printHearingNotice.action',null,396,1,'PropTax Rev Petition print hearingnotice','false','ptis',0,1,'2015-07-15 19:18:01.552952',1,'2015-07-15 19:18:01.552952',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1158,'PropTax Rev Petition print Endoresement','/revPetition/revPetition-printEnodresementNotice.action',null,396,1,'PropTax Rev Petition print Endoresement','false','ptis',0,1,'2015-07-15 19:18:01.552952',1,'2015-07-15 19:18:01.552952',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1159,'Property Transfer Success Redirect','/property/transfer/redirect-success.action',null,361,null,'Property Transfer Success Redirect','false','ptis',null,1,'2015-07-15 19:18:01.661772',1,'2015-07-15 19:18:01.661772',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1160,'modifyPropertyAckPrint','/modify/modifyProperty-printAck',null,360,null,'modifyPropertyAckPrint','false','ptis',null,1,'2015-07-15 19:18:01.678499',1,'2015-07-15 19:18:01.678499',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1161,'Mutation Fee Payment Generate','/property/transfer/collect-fee.action',null,361,null,'Mutation Fee Payment Generate','false','ptis',0,1,'2015-07-15 19:18:01.82576',1,'2015-07-15 19:18:01.82576',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1163,'Mutation Fee Payment Search','/property/transfer/search.action',null,361,null,'Property Mutation Fee Search','false','ptis',null,1,'2015-07-15 19:18:01.82576',1,'2015-07-15 19:18:01.82576',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1164,'View DCB Property','/view/viewDCBProperty-viewForm.action',null,361,null,'View DCB Property','false','ptis',0,1,'2015-07-15 19:18:01.859083',1,'2015-07-15 19:18:01.859083',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1165,'View DCB Property Display','/view/viewDCBProperty-displayPropInfo.action',null,361,null,'View DCB Property','false','ptis',0,1,'2015-07-15 19:18:01.875647',1,'2015-07-15 19:18:01.875647',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1214,'Zone Wise Collection Report','/reports/collectionSummaryReport-zoneWise.action',null,362,0,'Revenue Zone Wise Collection Report','true','ptis',0,1,'2015-07-30 11:12:49.516393',1,'2015-07-30 11:12:49.516393',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1215,'Ward Wise Collection Report','/reports/collectionSummaryReport-wardWise.action',null,362,0,'Revenue Ward Wise Collection Report','true','ptis',0,1,'2015-07-30 11:12:49.516393',1,'2015-07-30 11:12:49.516393',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1216,'Block Wise Collection Report','/reports/collectionSummaryReport-blockWise.action',null,362,0,'Revenue Block Wise Collection Report','true','ptis',0,1,'2015-07-30 11:12:49.516393',1,'2015-07-30 11:12:49.516393',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1217,'Locality Wise Collection Report','/reports/collectionSummaryReport-localityWise.action',null,362,0,'Revenue Locality Wise Collection Report','true','ptis',0,1,'2015-07-30 11:12:49.516393',1,'2015-07-30 11:12:49.516393',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1218,'PropTax Rev Petition verify inspection','/revPetition/revPetition-validateInspectionDetails',null,396,null,'PropTax Rev Petition verify inspection','false','ptis',0,1,'2015-07-30 11:12:50.117705',1,'2015-07-30 11:12:50.117705',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1220,'PropTax Rev Petition reject inspection','/revPetition/revPetition-rejectInspectionDetails',null,396,null,'PropTax Rev Petition reject inspection','false','ptis',0,1,'2015-08-03 11:20:15.939085',1,'2015-08-03 11:20:15.939085',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1221,'SearchNoticeSearchResult','/reports/searchNotices-search',null,362,null,'SearchNoticeSearchResult','false','ptis',null,1,'2015-08-05 10:16:51.990117',1,'2015-08-05 10:16:51.990117',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1225,'SearchNoticeMergeAndDownload','/reports/searchNotices-mergeAndDownload',null,362,null,'SearchNoticeMergeAndDownload','false','ptis',null,1,'2015-08-05 10:16:51.990117',1,'2015-08-05 10:16:51.990117',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1226,'SearchNoticeZipAndDownload','/reports/searchNotices-zipAndDownload',null,362,null,'SearchNoticeZipAndDownload','false','ptis',null,1,'2015-08-05 10:16:51.990117',1,'2015-08-05 10:16:51.990117',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1227,'SearchNoticeReset','/reports/searchNotices-reset',null,362,null,'SearchNoticeReset','false','ptis',null,1,'2015-08-05 10:16:51.990117',1,'2015-08-05 10:16:51.990117',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1238,'SearchNoticeShowNotice','/reports/searchNotices-showNotice',null,362,null,'SearchNoticeShowNotice','false','ptis',null,1,'2015-08-05 17:55:34.329387',1,'2015-08-05 17:55:34.329387',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1240,'Collection Summary Report Result','/reports/collectionSummaryReport-list.action',null,362,1,'Collection Summary Report Result','false','ptis',0,1,'2015-08-10 14:31:59.145439',1,'2015-08-10 14:31:59.145439',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1241,'DCBReport','/reports/dCBReport-search.action',null,362,3,'DCB Report','true','ptis',0,1,'2015-08-12 17:22:47.518842',1,'2015-08-12 17:22:47.518842',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1242,'SearchDCBReport','/reports/ajaxDCBReport-getBoundaryWiseDCBList.action',null,362,3,'SearchDCBReport','false','ptis',0,1,'2015-08-12 17:22:47.518842',1,'2015-08-12 17:22:47.518842',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1243,'PropTax Rev Petition rejection','/revPetition/revPetition-reject.action',null,396,1,'PropTax Rev Petition rejection','false','ptis',0,1,'2015-08-12 18:23:10.175228',1,'2015-08-12 18:23:10.175228',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1244,'PropTax Rev Petition Special notice','/revPetition/revPetition-generateSpecialNotice.action',null,396,1,'PropTax Rev Petition Special notice','false','ptis',0,1,'2015-08-12 18:23:10.175228',1,'2015-08-12 18:23:10.175228',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1258,'Arrears Register Report','/reports/arrearRegisterReport-index.action',null,362,0,'Arrears Register Report','true','ptis',0,1,'2015-08-18 14:32:53.476811',1,'2015-08-18 14:32:53.476811',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1259,'GenerateArrearRegisterReport','/reports/arrearRegisterReport-generateArrearReport.action',null,362,0,'GenerateArrearRegisterReport','false','ptis',0,1,'2015-08-18 14:32:53.476811',1,'2015-08-18 14:32:53.476811',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1260,'ajaxLoadBoundaryWard','/common/ajaxCommon-wardByZone.action',null,362,0,'ajaxLoadBoundary','false','ptis',0,1,'2015-08-18 14:32:53.476811',1,'2015-08-18 14:32:53.476811',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1261,'ajaxLoadBoundaryBlock','/common/ajaxCommon-areaByWard.action',null,362,0,'ajaxLoadBoundaryBlock','false','ptis',0,1,'2015-08-18 14:32:53.476811',1,'2015-08-18 14:32:53.476811',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1264,'User By Mobile number','/common/ajaxCommon-getUserByMobileNo.action',null,360,0,'User By Mobile number','false','ptis',0,1,'2015-08-19 02:14:08.103201',1,'2015-08-19 02:14:08.103201',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1269,'Title Transfer Register Report','/reports/titleTransferRegister-search.action',null,362,0,'Title Transfer Register Report','true','ptis',0,1,'2015-08-19 17:21:44.72557',1,'2015-08-19 17:21:44.72557',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1270,'TitleTransferRegReportResult','/reports/titleTransferRegister-getPropertyList.action',null,362,0,'Title Transfer Register Report','false','ptis',0,1,'2015-08-19 17:21:44.72557',1,'2015-08-19 17:21:44.72557',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1275,'PTIS-Data Entry Screen','/create/createProperty-dataEntry.action',null,361,1,'Data Entry Screen','true','ptis',0,1,'2015-08-22 09:59:36.851093',1,'2015-08-22 09:59:36.851093',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1276,'PTIS-Create Data Entry Screen','/create/createProperty-createDataEntry.action',null,361,1,'Create Data Entry Screen','false','ptis',0,1,'2015-08-22 09:59:36.851093',1,'2015-08-22 09:59:36.851093',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1293,'Usage Wise Collection Summary Report','/reports/collectionSummaryReport-usageWise.action',null,362,0,'Usage Wise Collection Summary Report','true','ptis',0,1,'2015-09-03 13:24:04.773853',1,'2015-09-03 13:24:04.773853',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1341,'Edit Demand submit','/edit/editDemand.action',null,361,1,'Edit Demand submit','false','ptis',0,1,'2015-09-14 11:53:22.606753',1,'2015-09-14 11:53:22.606753',359);
Insert into EG_ACTION (id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate, application) values (1342,'Edit Demand Update Form','/edit/editDemand-update',null,361,1,'Edit Demand Update Form','false','ptis',0,1,'2015-09-14 11:53:25.182135',1,'2015-09-14 11:53:25.182135',359);
INSERT INTO EG_ACTION (ID,NAME,createddate,URL,QUERYPARAMS,parentmodule,ORDERNUMBER,DISPLAYNAME, ENABLED, CONTEXTROOT, APPLICATION) VALUES (nextval('SEQ_EG_ACTION'), 'AjaxDesignationDropdown',current_date , '/workflow/ajaxWorkFlow-getDesignationsByObjectType.action', NULL, (select ID from eg_module where name like 'Workflow'), 6, 'AjaxDesignationDropdown', false, 'eis',(SELECT id FROM eg_module WHERE name='EIS' AND parentmodule IS NULL));
INSERT INTO EG_ACTION (ID,NAME,createddate,URL,QUERYPARAMS,parentmodule,ORDERNUMBER,DISPLAYNAME, ENABLED, CONTEXTROOT, APPLICATION) VALUES (nextval('SEQ_EG_ACTION'), 'AjaxApproverDropdown',current_date ,'/workflow/ajaxWorkFlow-getPositionByPassingDesigId.action', NULL,  (select ID from eg_module where name like 'Workflow'), 6, 'AjaxApproverDropdown', false, 'eis',(SELECT id FROM eg_module WHERE name='EIS' AND parentmodule IS NULL));
INSERT INTO eg_action(id, name, url, queryparams, parentmodule, ordernumber, displayname, enabled, contextroot, version, createdby, createddate, lastmodifiedby, lastmodifieddate,application) VALUES (nextval('seq_eg_action'), 'Property Usage by type', '/common/ajaxCommon-usageByPropType.action', null,(select id from eg_module where name='New Property'), 0, 'Property Usage by type', false, 'ptis', 0, 1, now(), 1, now(),(select id from eg_module where name='Property Tax' and parentmodule is null)); 
------------------END---------------------
-----------------START-------------------

INSERT INTO eg_role (id, name, description, createddate, createdby, lastmodifiedby, lastmodifieddate, version) VALUES (14, 'Property Administrator', 'Administrator for Property Tax', '2015-08-28 10:43:58.851212', 1, 1, '2015-08-28 10:43:58.851212', 0);
INSERT INTO eg_role (id, name, description, createddate, createdby, lastmodifiedby, lastmodifieddate, version) VALUES (11, 'Property Verifier', 'Muncipal Commissioner, final approval authority', '2015-08-28 10:43:45.850138', 1, 1, '2015-08-28 10:43:45.850138', NULL);
INSERT INTO eg_role (id, name, description, createddate, createdby, lastmodifiedby, lastmodifieddate, version) VALUES (12, 'Property Approver', 'Muncipal Commissioner, final approval authority', '2015-08-28 10:43:45.850138', 1, 1, '2015-08-28 10:43:45.850138', NULL);
------------------END---------------------

-----------------START-------------------
Insert into EG_ROLEACTION (roleid, actionid) values (16,839);
Insert into EG_ROLEACTION (roleid, actionid) values (16,842);
Insert into EG_ROLEACTION (roleid, actionid) values (16,843);
Insert into EG_ROLEACTION (roleid, actionid) values (16,844);
Insert into EG_ROLEACTION (roleid, actionid) values (16,845);
Insert into EG_ROLEACTION (roleid, actionid) values (5,845);
Insert into EG_ROLEACTION (roleid, actionid) values (16,846);
Insert into EG_ROLEACTION (roleid, actionid) values (5,846);
Insert into EG_ROLEACTION (roleid, actionid) values (5,847);
Insert into EG_ROLEACTION (roleid, actionid) values (14,847);
Insert into EG_ROLEACTION (roleid, actionid) values (12,847);
Insert into EG_ROLEACTION (roleid, actionid) values (11,847);
Insert into EG_ROLEACTION (roleid, actionid) values (16,847);
Insert into EG_ROLEACTION (roleid, actionid) values (4,847);
Insert into EG_ROLEACTION (roleid, actionid) values (14,848);
Insert into EG_ROLEACTION (roleid, actionid) values (12,848);
Insert into EG_ROLEACTION (roleid, actionid) values (11,848);
Insert into EG_ROLEACTION (roleid, actionid) values (16,848);
Insert into EG_ROLEACTION (roleid, actionid) values (14,849);
Insert into EG_ROLEACTION (roleid, actionid) values (4,849);
Insert into EG_ROLEACTION (roleid, actionid) values (12,849);
Insert into EG_ROLEACTION (roleid, actionid) values (11,849);
Insert into EG_ROLEACTION (roleid, actionid) values (16,849);
Insert into EG_ROLEACTION (roleid, actionid) values (16,850);
Insert into EG_ROLEACTION (roleid, actionid) values (11,850);
Insert into EG_ROLEACTION (roleid, actionid) values (12,850);
Insert into EG_ROLEACTION (roleid, actionid) values (14,850);
Insert into EG_ROLEACTION (roleid, actionid) values (14,852);
Insert into EG_ROLEACTION (roleid, actionid) values (12,852);
Insert into EG_ROLEACTION (roleid, actionid) values (16,852);
Insert into EG_ROLEACTION (roleid, actionid) values (11,852);
Insert into EG_ROLEACTION (roleid, actionid) values (16,853);
Insert into EG_ROLEACTION (roleid, actionid) values (16,854);
Insert into EG_ROLEACTION (roleid, actionid) values (16,855);
Insert into EG_ROLEACTION (roleid, actionid) values (16,856);
Insert into EG_ROLEACTION (roleid, actionid) values (16,857);
Insert into EG_ROLEACTION (roleid, actionid) values (16,859);
Insert into EG_ROLEACTION (roleid, actionid) values (16,865);
Insert into EG_ROLEACTION (roleid, actionid) values (5,865);
Insert into EG_ROLEACTION (roleid, actionid) values (16,866);
Insert into EG_ROLEACTION (roleid, actionid) values (16,874);
Insert into EG_ROLEACTION (roleid, actionid) values (16,875);
Insert into EG_ROLEACTION (roleid, actionid) values (16,876);
Insert into EG_ROLEACTION (roleid, actionid) values (16,877);
Insert into EG_ROLEACTION (roleid, actionid) values (16,996);
Insert into EG_ROLEACTION (roleid, actionid) values (16,997);
Insert into EG_ROLEACTION (roleid, actionid) values (16,998);
Insert into EG_ROLEACTION (roleid, actionid) values (11,998);
Insert into EG_ROLEACTION (roleid, actionid) values (12,998);
Insert into EG_ROLEACTION (roleid, actionid) values (4,998);
Insert into EG_ROLEACTION (roleid, actionid) values (14,998);
Insert into EG_ROLEACTION (roleid, actionid) values (16,999);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1050);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1050);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1050);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1050);
Insert into EG_ROLEACTION (roleid, actionid) values (14,1050);
Insert into EG_ROLEACTION (roleid, actionid) values (4,1050);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1051);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1051);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1051);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1062);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1062);
Insert into EG_ROLEACTION (roleid, actionid) values (14,1064);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1065);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1065);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1065);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1066);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1066);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1066);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1067);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1067);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1068);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1068);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1074);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1074);
Insert into EG_ROLEACTION (roleid, actionid) values (14,1075);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1075);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1075);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1076);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1076);
Insert into EG_ROLEACTION (roleid, actionid) values (14,1076);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1078);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1078);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1078);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1079);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1079);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1080);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1080);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1080);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1081);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1081);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1081);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1082);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1088);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1088);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1088);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1089);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1089);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1089);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1090);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1090);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1090);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1091);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1091);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1091);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1091);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1094);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1094);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1094);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1095);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1095);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1095);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1096);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1096);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1096);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1097);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1097);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1098);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1098);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1098);
Insert into EG_ROLEACTION (roleid, actionid) values (14,1099);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1099);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1099);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1099);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1100);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1100);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1100);
Insert into EG_ROLEACTION (roleid, actionid) values (14,1100);
Insert into EG_ROLEACTION (roleid, actionid) values (14,1101);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1101);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1101);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1101);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1101);
Insert into EG_ROLEACTION (roleid, actionid) values (14,1106);
Insert into EG_ROLEACTION (roleid, actionid) values (14,1107);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1108);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1108);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1113);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1113);
Insert into EG_ROLEACTION (roleid, actionid) values (14,1113);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1113);
Insert into EG_ROLEACTION (roleid, actionid) values (14,1114);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1115);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1116);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1117);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1118);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1119);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1129);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1129);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1130);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1130);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1131);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1131);
Insert into EG_ROLEACTION (roleid, actionid) values (4,1144);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1144);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1144);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1145);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1145);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1145);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1145);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1146);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1146);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1146);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1146);
Insert into EG_ROLEACTION (roleid, actionid) values (4,1148);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1148);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1148);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1149);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1149);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1154);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1154);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1154);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1157);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1158);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1159);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1159);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1159);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1159);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1160);
Insert into EG_ROLEACTION (roleid, actionid) values (4,1160);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1160);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1161);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1163);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1164);
Insert into EG_ROLEACTION (roleid, actionid) values (14,1165);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1165);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1165);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1165);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1165);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1214);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1214);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1214);
Insert into EG_ROLEACTION (roleid, actionid) values (4,1214);
Insert into EG_ROLEACTION (roleid, actionid) values (14,1214);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1214);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1215);
Insert into EG_ROLEACTION (roleid, actionid) values (14,1215);
Insert into EG_ROLEACTION (roleid, actionid) values (4,1215);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1215);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1215);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1215);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1216);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1216);
Insert into EG_ROLEACTION (roleid, actionid) values (14,1216);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1216);
Insert into EG_ROLEACTION (roleid, actionid) values (4,1216);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1216);
Insert into EG_ROLEACTION (roleid, actionid) values (4,1217);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1217);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1217);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1217);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1217);
Insert into EG_ROLEACTION (roleid, actionid) values (14,1217);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1218);
Insert into EG_ROLEACTION (roleid, actionid) values (4,1218);
Insert into EG_ROLEACTION (roleid, actionid) values (4,1220);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1220);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1221);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1221);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1221);
Insert into EG_ROLEACTION (roleid, actionid) values (14,1221);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1225);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1225);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1225);
Insert into EG_ROLEACTION (roleid, actionid) values (14,1225);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1226);
Insert into EG_ROLEACTION (roleid, actionid) values (14,1226);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1226);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1226);
Insert into EG_ROLEACTION (roleid, actionid) values (14,1227);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1227);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1227);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1227);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1238);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1238);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1238);
Insert into EG_ROLEACTION (roleid, actionid) values (14,1238);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1240);
Insert into EG_ROLEACTION (roleid, actionid) values (4,1240);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1240);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1241);
Insert into EG_ROLEACTION (roleid, actionid) values (4,1241);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1241);
Insert into EG_ROLEACTION (roleid, actionid) values (4,1242);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1242);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1242);
Insert into EG_ROLEACTION (roleid, actionid) values (4,1243);
Insert into EG_ROLEACTION (roleid, actionid) values (14,1243);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1243);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1243);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1244);
Insert into EG_ROLEACTION (roleid, actionid) values (4,1258);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1258);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1258);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1259);
Insert into EG_ROLEACTION (roleid, actionid) values (4,1259);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1259);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1260);
Insert into EG_ROLEACTION (roleid, actionid) values (4,1260);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1260);
Insert into EG_ROLEACTION (roleid, actionid) values (4,1261);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1261);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1261);
Insert into EG_ROLEACTION (roleid, actionid) values (12,1264);
Insert into EG_ROLEACTION (roleid, actionid) values (11,1264);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1264);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1264);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1269);
Insert into EG_ROLEACTION (roleid, actionid) values (4,1269);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1269);
Insert into EG_ROLEACTION (roleid, actionid) values (4,1270);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1270);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1270);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1275);
Insert into EG_ROLEACTION (roleid, actionid) values (4,1275);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1276);
Insert into EG_ROLEACTION (roleid, actionid) values (4,1276);
Insert into EG_ROLEACTION (roleid, actionid) values (16,1293);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1293);
Insert into EG_ROLEACTION (roleid, actionid) values (4,1293);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1341);
Insert into EG_ROLEACTION (roleid, actionid) values (5,1342);
insert into eg_roleaction(Select id,(select id from eg_action where name='AjaxDesignationDropdown') from eg_role where name='SuperUser');
insert into eg_roleaction(Select id,(select id from eg_action where name='AjaxApproverDropdown') from eg_role where name='SuperUser');
insert into eg_roleaction(Select id,(select id from eg_action where name='AjaxDesignationDropdown') from eg_role where name='ULB Operator');
insert into eg_roleaction(Select id,(select id from eg_action where name='AjaxApproverDropdown') from eg_role where name='ULB Operator');
insert into eg_roleaction(Select id,(select id from eg_action where name='AjaxDesignationDropdown') from eg_role where name='Property Approver');
insert into eg_roleaction(Select id,(select id from eg_action where name='AjaxApproverDropdown') from eg_role where name='Property Approver');
insert into eg_roleaction(Select id,(select id from eg_action where name='AjaxDesignationDropdown') from eg_role where name='Property Verifier');
insert into eg_roleaction(Select id,(select id from eg_action where name='AjaxApproverDropdown') from eg_role where name='Property Verifier');
insert into eg_roleaction(Select id,(select id from eg_action where name='OfficialsProfileEdit') from eg_role where name='SuperUser');
insert into eg_roleaction(Select id,(select id from eg_action where name='OfficialSentFeedBack') from eg_role where name='SuperUser');
insert into eg_roleaction(Select id,(select id from eg_action where name='OfficialChangePassword') from eg_role where name='SuperUser');
insert into eg_roleaction(Select id,(select id from eg_action where name='AddFavourite') from eg_role where name='SuperUser');
insert into eg_roleaction(Select id,(select id from eg_action where name='RemoveFavourite') from eg_role where name='SuperUser');
insert into eg_roleaction(Select id,(select id from eg_action where name='Official Home Page') from eg_role where name='SuperUser');
insert into eg_roleaction(Select id,(select id from eg_action where name='OfficialsProfileEdit') from eg_role where name='ULB Operator');
insert into eg_roleaction(Select id,(select id from eg_action where name='OfficialSentFeedBack') from eg_role where name='ULB Operator');
insert into eg_roleaction(Select id,(select id from eg_action where name='OfficialChangePassword') from eg_role where name='ULB Operator');
insert into eg_roleaction(Select id,(select id from eg_action where name='AddFavourite') from eg_role where name='ULB Operator');
insert into eg_roleaction(Select id,(select id from eg_action where name='RemoveFavourite') from eg_role where name='ULB Operator');
insert into eg_roleaction(Select id,(select id from eg_action where name='Official Home Page') from eg_role where name='ULB Operator');
insert into eg_roleaction(Select id,(select id from eg_action where name='CitizenInboxForm') from eg_role where name='ULB Operator');
insert into eg_roleaction(Select id,(select id from eg_action where name='OfficialsProfileEdit') from eg_role where name='Property Approver');
insert into eg_roleaction(Select id,(select id from eg_action where name='OfficialSentFeedBack') from eg_role where name='Property Approver');
insert into eg_roleaction(Select id,(select id from eg_action where name='OfficialChangePassword') from eg_role where name='Property Approver');
insert into eg_roleaction(Select id,(select id from eg_action where name='AddFavourite') from eg_role where name='Property Approver');
insert into eg_roleaction(Select id,(select id from eg_action where name='RemoveFavourite') from eg_role where name='Property Approver');
insert into eg_roleaction(Select id,(select id from eg_action where name='Official Home Page') from eg_role where name='Property Approver');
insert into eg_roleaction(Select id,(select id from eg_action where name='CitizenInboxForm') from eg_role where name='Property Approver');
insert into eg_roleaction(Select id,(select id from eg_action where name='OfficialsProfileEdit') from eg_role where name='Property Verifier');
insert into eg_roleaction(Select id,(select id from eg_action where name='OfficialSentFeedBack') from eg_role where name='Property Verifier');
insert into eg_roleaction(Select id,(select id from eg_action where name='OfficialChangePassword') from eg_role where name='Property Verifier');
insert into eg_roleaction(Select id,(select id from eg_action where name='AddFavourite') from eg_role where name='Property Verifier');
insert into eg_roleaction(Select id,(select id from eg_action where name='RemoveFavourite') from eg_role where name='Property Verifier');
insert into eg_roleaction(Select id,(select id from eg_action where name='Official Home Page') from eg_role where name='Property Verifier');
insert into eg_roleaction(Select id,(select id from eg_action where name='CitizenInboxForm') from eg_role where name='Property Verifier');
insert into eg_roleaction(Select id,(select id from eg_action where name='Inbox') from eg_role where name='SuperUser');
insert into eg_roleaction(Select id,(select id from eg_action where name='InboxDraft') from eg_role where name='SuperUser');
insert into eg_roleaction(Select id,(select id from eg_action where name='InboxHistory') from eg_role where name='SuperUser');
insert into eg_roleaction(Select id,(select id from eg_action where name='Inbox') from eg_role where name='ULB Operator');
insert into eg_roleaction(Select id,(select id from eg_action where name='InboxDraft') from eg_role where name='ULB Operator');
insert into eg_roleaction(Select id,(select id from eg_action where name='InboxHistory') from eg_role where name='ULB Operator');
insert into eg_roleaction(Select id,(select id from eg_action where name='Inbox') from eg_role where name='Property Approver');
insert into eg_roleaction(Select id,(select id from eg_action where name='InboxDraft') from eg_role where name='Property Approver');
insert into eg_roleaction(Select id,(select id from eg_action where name='InboxHistory') from eg_role where name='Property Approver');
insert into eg_roleaction(Select id,(select id from eg_action where name='Inbox') from eg_role where name='Property Verifier');
insert into eg_roleaction(Select id,(select id from eg_action where name='InboxDraft') from eg_role where name='Property Verifier');
insert into eg_roleaction(Select id,(select id from eg_action where name='InboxHistory') from eg_role where name='Property Verifier');
insert into eg_roleaction(Select id,(select id from eg_action where name='Inbox') from eg_role where name='Employee');
insert into eg_roleaction(Select id,(select id from eg_action where name='InboxDraft') from eg_role where name='Employee');
insert into eg_roleaction(Select id,(select id from eg_action where name='InboxHistory') from eg_role where name='Employee');
insert into eg_roleaction(Select id,(select id from eg_action where name='Open inbox') from eg_role where name='Employee');
insert into eg_roleaction(Select id,(select id from eg_action where name='Forward Property') from eg_role where name='Employee');
INSERT INTO eg_roleaction (actionid,roleid) VALUES ((SELECT id FROM eg_action WHERE name='AadhaarInfo' and contextroot='egi'),(SELECT id FROM eg_role WHERE name ='ULB Operator'));
INSERT INTO eg_roleaction (actionid,roleid) VALUES ((SELECT id FROM eg_action WHERE name='AadhaarInfo' and contextroot='egi'),(SELECT id FROM eg_role WHERE name ='CSC Operator'));
INSERT INTO eg_roleaction (actionid,roleid) VALUES ((SELECT id FROM eg_action WHERE name='AadhaarInfo' and contextroot='egi'),(SELECT id FROM eg_role WHERE name ='Property Verifier'));
INSERT INTO eg_roleaction (actionid,roleid) VALUES ((SELECT id FROM eg_action WHERE name='AadhaarInfo' and contextroot='egi'),(SELECT id FROM eg_role WHERE name ='Property Approver'));
INSERT INTO eg_roleaction  (actionid,roleid) VALUES ((SELECT id FROM eg_action WHERE name='Property Usage by type' and contextroot='ptis'),(SELECT id FROM eg_role WHERE name ='ULB Operator'));
INSERT INTO eg_roleaction  (actionid,roleid) VALUES ((SELECT id FROM eg_action WHERE name='Property Usage by type' and contextroot='ptis'),(SELECT id FROM eg_role WHERE name ='CSC Operator'));
INSERT INTO eg_roleaction  (actionid,roleid) VALUES ((SELECT id FROM eg_action WHERE name='Property Usage by type' and contextroot='ptis'),(SELECT id FROM eg_role WHERE name ='Property Verifier'));
INSERT INTO eg_roleaction  (actionid,roleid) VALUES ((SELECT id FROM eg_action WHERE name='Property Usage by type' and contextroot='ptis'),(SELECT id FROM eg_role WHERE name ='Property Approver'));
------------------END---------------------

-----------------START-------------------
INSERT INTO eg_installment_master (id, installment_num, installment_year, start_date, end_date, id_module, lastupdatedtimestamp, description, installment_type) VALUES (59, 1, '2004-04-01 00:00:00', '2004-04-01 00:00:00', '2004-09-30 00:00:00', 359, current_timestamp, 'I/04-05', NULL);
INSERT INTO eg_installment_master (id, installment_num, installment_year, start_date, end_date, id_module, lastupdatedtimestamp, description, installment_type) VALUES (60, 1, '2004-10-01 00:00:00', '2004-10-01 00:00:00', '2005-03-31 00:00:00', 359, current_timestamp, 'II/04-05', NULL);
INSERT INTO eg_installment_master (id, installment_num, installment_year, start_date, end_date, id_module, lastupdatedtimestamp, description, installment_type) VALUES (61, 1, '2005-04-01 00:00:00', '2005-04-01 00:00:00', '2005-09-30 00:00:00', 359, current_timestamp, 'I/05-06', NULL);
INSERT INTO eg_installment_master (id, installment_num, installment_year, start_date, end_date, id_module, lastupdatedtimestamp, description, installment_type) VALUES (62, 1, '2005-10-01 00:00:00', '2005-10-01 00:00:00', '2006-03-31 00:00:00', 359, current_timestamp, 'II/05-06', NULL);
INSERT INTO eg_installment_master (id, installment_num, installment_year, start_date, end_date, id_module, lastupdatedtimestamp, description, installment_type) VALUES (63, 1, '2006-04-01 00:00:00', '2006-04-01 00:00:00', '2006-09-30 00:00:00', 359, current_timestamp, 'I/06-07', NULL);
INSERT INTO eg_installment_master (id, installment_num, installment_year, start_date, end_date, id_module, lastupdatedtimestamp, description, installment_type) VALUES (64, 1, '2006-10-01 00:00:00', '2006-10-01 00:00:00', '2007-03-31 00:00:00', 359, current_timestamp, 'II/06-07', NULL);
INSERT INTO eg_installment_master (id, installment_num, installment_year, start_date, end_date, id_module, lastupdatedtimestamp, description, installment_type) VALUES (65, 1, '2007-04-01 00:00:00', '2007-04-01 00:00:00', '2007-09-30 00:00:00', 359, current_timestamp, 'I/07-08', NULL);
INSERT INTO eg_installment_master (id, installment_num, installment_year, start_date, end_date, id_module, lastupdatedtimestamp, description, installment_type) VALUES (66, 1, '2007-10-01 00:00:00', '2007-10-01 00:00:00', '2008-03-31 00:00:00', 359, current_timestamp, 'II/07-08', NULL);
INSERT INTO eg_installment_master (id, installment_num, installment_year, start_date, end_date, id_module, lastupdatedtimestamp, description, installment_type) VALUES (67, 1, '2008-04-01 00:00:00', '2008-04-01 00:00:00', '2008-09-30 00:00:00', 359, current_timestamp, 'I/08-09', NULL);
INSERT INTO eg_installment_master (id, installment_num, installment_year, start_date, end_date, id_module, lastupdatedtimestamp, description, installment_type) VALUES (68, 1, '2008-10-01 00:00:00', '2008-10-01 00:00:00', '2009-03-31 00:00:00', 359, current_timestamp, 'II/08-09', NULL);
INSERT INTO eg_installment_master (id, installment_num, installment_year, start_date, end_date, id_module, lastupdatedtimestamp, description, installment_type) VALUES (69, 1, '2009-04-01 00:00:00', '2009-04-01 00:00:00', '2009-09-30 00:00:00', 359, current_timestamp, 'I/09-10', NULL);
INSERT INTO eg_installment_master (id, installment_num, installment_year, start_date, end_date, id_module, lastupdatedtimestamp, description, installment_type) VALUES (70, 1, '2009-10-01 00:00:00', '2009-10-01 00:00:00', '2010-03-31 00:00:00', 359, current_timestamp, 'II/09-10', NULL);
INSERT INTO eg_installment_master (id, installment_num, installment_year, start_date, end_date, id_module, lastupdatedtimestamp, description, installment_type) VALUES (71, 1, '2010-04-01 00:00:00', '2010-04-01 00:00:00', '2010-09-30 00:00:00', 359, current_timestamp, 'I/10-11', NULL);
INSERT INTO eg_installment_master (id, installment_num, installment_year, start_date, end_date, id_module, lastupdatedtimestamp, description, installment_type) VALUES (72, 1, '2010-10-01 00:00:00', '2010-10-01 00:00:00', '2011-03-31 00:00:00', 359, current_timestamp, 'II/10-11', NULL);
INSERT INTO eg_installment_master (id, installment_num, installment_year, start_date, end_date, id_module, lastupdatedtimestamp, description, installment_type) VALUES (73, 1, '2011-04-01 00:00:00', '2011-04-01 00:00:00', '2011-09-30 00:00:00', 359, current_timestamp, 'I/11-12', NULL);
INSERT INTO eg_installment_master (id, installment_num, installment_year, start_date, end_date, id_module, lastupdatedtimestamp, description, installment_type) VALUES (74, 1, '2011-10-01 00:00:00', '2011-10-01 00:00:00', '2012-03-31 00:00:00', 359, current_timestamp, 'II/11-12', NULL);
INSERT INTO eg_installment_master (id, installment_num, installment_year, start_date, end_date, id_module, lastupdatedtimestamp, description, installment_type) VALUES (75, 1, '2012-04-01 00:00:00', '2012-04-01 00:00:00', '2012-09-30 00:00:00', 359, current_timestamp, 'I/12-13', NULL);
INSERT INTO eg_installment_master (id, installment_num, installment_year, start_date, end_date, id_module, lastupdatedtimestamp, description, installment_type) VALUES (76, 1, '2012-10-01 00:00:00', '2012-10-01 00:00:00', '2013-03-31 00:00:00', 359, current_timestamp, 'II/12-13', NULL);
INSERT INTO eg_installment_master (id, installment_num, installment_year, start_date, end_date, id_module, lastupdatedtimestamp, description, installment_type) VALUES (77, 1, '2013-04-01 00:00:00', '2013-04-01 00:00:00', '2013-09-30 00:00:00', 359, current_timestamp, 'I/13-14', NULL);
INSERT INTO eg_installment_master (id, installment_num, installment_year, start_date, end_date, id_module, lastupdatedtimestamp, description, installment_type) VALUES (78, 1, '2013-10-01 00:00:00', '2013-10-01 00:00:00', '2014-03-31 00:00:00', 359, current_timestamp, 'II/13-14', NULL);
INSERT INTO eg_installment_master (id, installment_num, installment_year, start_date, end_date, id_module, lastupdatedtimestamp, description, installment_type) VALUES (79, 1, '2014-04-01 00:00:00', '2014-04-01 00:00:00', '2014-09-30 00:00:00', 359, current_timestamp, 'I/14-15', NULL);
INSERT INTO eg_installment_master (id, installment_num, installment_year, start_date, end_date, id_module, lastupdatedtimestamp, description, installment_type) VALUES (80, 1, '2014-10-01 00:00:00', '2014-10-01 00:00:00', '2015-03-31 00:00:00', 359, current_timestamp, 'II/14-15', NULL);
INSERT INTO eg_installment_master (id, installment_num, installment_year, start_date, end_date, id_module, lastupdatedtimestamp, description, installment_type) VALUES (81, 1, '2015-04-01 00:00:00', '2015-04-01 00:00:00', '2015-09-30 00:00:00', 359, current_timestamp, 'I/15-16', NULL);
------------------END---------------------

-----------------START-------------------
INSERT INTO EG_DEMAND_REASON_MASTER ( ID, REASONMASTER, "category", ISDEBIT, module, CODE, "order", create_date, modified_date, isdemand) VALUES(nextval('seq_eg_demand_reason_master'), 'General Tax', (select id from eg_reason_category where code='TAX'), 'N', (select id from eg_module where name='Property Tax'), 'GEN_TAX', 1, current_timestamp, current_timestamp,'true');
INSERT INTO EG_DEMAND_REASON_MASTER ( ID, REASONMASTER, "category", ISDEBIT, module, CODE, "order", create_date, modified_date, isdemand) VALUES(nextval('seq_eg_demand_reason_master'), 'Vacant Land Tax', (select id from eg_reason_category where code='TAX'), 'N', (select id from eg_module where name='Property Tax'), 'VAC_LAND_TAX', 3, current_timestamp, current_timestamp,'true');
INSERT INTO EG_DEMAND_REASON_MASTER ( ID, REASONMASTER, "category", ISDEBIT, module, CODE, "order", create_date, modified_date, isdemand) VALUES(nextval('seq_eg_demand_reason_master'), 'Library Cess', (select id from eg_reason_category where code='TAX'), 'N', (select id from eg_module where name='Property Tax'), 'LIB_CESS', 2, current_timestamp, current_timestamp,'true');
INSERT INTO EG_DEMAND_REASON_MASTER ( ID, REASONMASTER, "category", ISDEBIT, module, CODE, "order", create_date, modified_date, isdemand) VALUES(nextval('seq_eg_demand_reason_master'), 'Education Cess', (select id from eg_reason_category where code='TAX'), 'N', (select id from eg_module where name='Property Tax'), 'EDU_CESS', 3, current_timestamp, current_timestamp,'true');
INSERT INTO EG_DEMAND_REASON_MASTER ( ID, REASONMASTER, "category", ISDEBIT, module, CODE, "order", create_date, modified_date, isdemand) VALUES(nextval('seq_eg_demand_reason_master'), 'Sewerage Tax', (select id from eg_reason_category where code='TAX'), 'N', (select id from eg_module where name='Property Tax'), 'SEW_TAX', 3, current_timestamp, current_timestamp,'true');
INSERT INTO EG_DEMAND_REASON_MASTER ( ID, REASONMASTER, "category", ISDEBIT, module, CODE, "order", create_date, modified_date, isdemand) VALUES(nextval('seq_eg_demand_reason_master'), 'Primary Service Charges', (select id from eg_reason_category where code='TAX'), 'N', (select id from eg_module where name='Property Tax'), 'PRIMARY_SER_CHRG', 3, current_timestamp, current_timestamp,'true');
INSERT INTO EG_DEMAND_REASON_MASTER ( ID, REASONMASTER, "category", ISDEBIT, module, CODE, "order", create_date, modified_date, isdemand) VALUES(nextval('seq_eg_demand_reason_master'), 'Unauthorized Penalty', (select id from eg_reason_category where code='TAX'), 'N', (select id from eg_module where name='Property Tax'), 'UNAUTH_PENALTY', 4, current_timestamp, current_timestamp,'false');
INSERT INTO EG_DEMAND_REASON_MASTER ( ID, REASONMASTER, "category", ISDEBIT, module, CODE, "order", create_date, modified_date, isdemand) VALUES(nextval('seq_eg_demand_reason_master'), 'Penalty Fines', (select id from eg_reason_category where code='FINES'), 'N', (select id from eg_module where name='Property Tax'), 'PENALTY_FINES', 4, current_timestamp, current_timestamp,'false');
INSERT INTO EG_DEMAND_REASON_MASTER ( ID, REASONMASTER, "category", ISDEBIT, module, CODE, "order", create_date, modified_date, isdemand) VALUES(nextval('seq_eg_demand_reason_master'), 'Advance', (select id from eg_reason_category where code='ADVANCE'), 'N', (select id from eg_module where name='Property Tax'), 'ADVANCE', 4, current_timestamp, current_timestamp,'false');
------------------END---------------------

-----------------START-------------------
Insert into EG_DEMAND_REASON (ID,ID_DEMAND_REASON_MASTER,ID_INSTALLMENT,PERCENTAGE_BASIS,ID_BASE_REASON,create_date,modified_date,GLCODEID) select nextval('seq_eg_demand_reason'), (select id from eg_demand_reason_master where reasonmaster='General Tax' and module=(select id from eg_module where name='Property Tax')), inst.id, null, null, current_timestamp, current_timestamp, (select id from chartofaccounts where name='Receivables for Property Taxes- Arrears') from eg_installment_master inst where inst.id_module=(select id from eg_module where name='Property Tax') and INSTALLMENT_YEAR < to_date('01-04-15','DD-MM-YY');
Insert into EG_DEMAND_REASON (ID,ID_DEMAND_REASON_MASTER,ID_INSTALLMENT,PERCENTAGE_BASIS,ID_BASE_REASON,create_date,modified_date,GLCODEID) select nextval('seq_eg_demand_reason'), (select id from eg_demand_reason_master where reasonmaster='General Tax' and module=(select id from eg_module where name='Property Tax')), inst.id, null, null, current_timestamp, current_timestamp, (select id from chartofaccounts where name='Property Tax-Properties – General') from eg_installment_master inst where  inst.id_module=(select id from eg_module where name='Property Tax') and INSTALLMENT_YEAR = to_date('01-04-15','DD-MM-YY');
Insert into EG_DEMAND_REASON (ID,ID_DEMAND_REASON_MASTER,ID_INSTALLMENT,PERCENTAGE_BASIS,ID_BASE_REASON,create_date,modified_date,GLCODEID) select nextval('seq_eg_demand_reason'), (select id from eg_demand_reason_master where reasonmaster='Vacant Land Tax' and module=(select id from eg_module where name='Property Tax')), inst.id, null, null, current_timestamp, current_timestamp, (select id from chartofaccounts where name='Receivables for Property Taxes- Arrears') from eg_installment_master inst where inst.id_module=(select id from eg_module where name='Property Tax');
Insert into EG_DEMAND_REASON (ID,ID_DEMAND_REASON_MASTER,ID_INSTALLMENT,PERCENTAGE_BASIS,ID_BASE_REASON,create_date,modified_date,GLCODEID) select nextval('seq_eg_demand_reason'), (select id from eg_demand_reason_master where reasonmaster='Library Cess' and module=(select id from eg_module where name='Property Tax')), inst.id, null, null, current_timestamp, current_timestamp, (select id from chartofaccounts where name='Receivables for Property Taxes- Arrears') from eg_installment_master inst where inst.id_module=(select id from eg_module where name='Property Tax') and INSTALLMENT_YEAR < to_date('01-04-15','DD-MM-YY');
Insert into EG_DEMAND_REASON (ID,ID_DEMAND_REASON_MASTER,ID_INSTALLMENT,PERCENTAGE_BASIS,ID_BASE_REASON,create_date,modified_date,GLCODEID) select nextval('seq_eg_demand_reason'), (select id from eg_demand_reason_master where reasonmaster='Library Cess' and module=(select id from eg_module where name='Property Tax')), inst.id, null, null, current_timestamp, current_timestamp, (select id from chartofaccounts where name='Government Dues payable-Library Cess') from eg_installment_master inst where inst.id_module=(select id from eg_module where name='Property Tax') and INSTALLMENT_YEAR = to_date('01-04-15','DD-MM-YY');
Insert into EG_DEMAND_REASON (ID,ID_DEMAND_REASON_MASTER,ID_INSTALLMENT,PERCENTAGE_BASIS,ID_BASE_REASON,create_date,modified_date,GLCODEID) select nextval('seq_eg_demand_reason'), (select id from eg_demand_reason_master where reasonmaster='Education Cess' and module=(select id from eg_module where name='Property Tax')), inst.id, null, null, current_timestamp, current_timestamp, (select id from chartofaccounts where name='Receivables for Property Taxes- Arrears') from eg_installment_master inst where inst.id_module=(select id from eg_module where name='Property Tax') and INSTALLMENT_YEAR < to_date('01-04-15','DD-MM-YY');
Insert into EG_DEMAND_REASON (ID,ID_DEMAND_REASON_MASTER,ID_INSTALLMENT,PERCENTAGE_BASIS,ID_BASE_REASON,create_date,modified_date,GLCODEID) select nextval('seq_eg_demand_reason'), (select id from eg_demand_reason_master where reasonmaster='Education Cess' and module=(select id from eg_module where name='Property Tax')), inst.id, null, null, current_timestamp, current_timestamp, (select id from chartofaccounts where name='Government Dues payable-Education Cess') from eg_installment_master inst where inst.id_module=(select id from eg_module where name='Property Tax') and INSTALLMENT_YEAR = to_date('01-04-15','DD-MM-YY');
Insert into EG_DEMAND_REASON (ID,ID_DEMAND_REASON_MASTER,ID_INSTALLMENT,PERCENTAGE_BASIS,ID_BASE_REASON,create_date,modified_date,GLCODEID) select nextval('seq_eg_demand_reason'), (select id from eg_demand_reason_master where reasonmaster='Primary Service Charges' and module=(select id from eg_module where name='Property Tax')), inst.id, null, null, current_timestamp, current_timestamp, (select id from chartofaccounts where name='Receivables for Property Taxes- Arrears') from eg_installment_master inst where inst.id_module=(select id from eg_module where name='Property Tax');
Insert into EG_DEMAND_REASON (ID,ID_DEMAND_REASON_MASTER,ID_INSTALLMENT,PERCENTAGE_BASIS,ID_BASE_REASON,create_date,modified_date,GLCODEID) select nextval('seq_eg_demand_reason'), (select id from eg_demand_reason_master where reasonmaster='Unauthorized Penalty' and module=(select id from eg_module where name='Property Tax')), inst.id, null, null, current_timestamp, current_timestamp, (select id from chartofaccounts where name='Receivables for Property Taxes- Arrears') from eg_installment_master inst where inst.id_module=(select id from eg_module where name='Property Tax') and INSTALLMENT_YEAR < to_date('01-04-15','DD-MM-YY');
Insert into EG_DEMAND_REASON (ID,ID_DEMAND_REASON_MASTER,ID_INSTALLMENT,PERCENTAGE_BASIS,ID_BASE_REASON,create_date,modified_date,GLCODEID) select nextval('seq_eg_demand_reason'), (select id from eg_demand_reason_master where reasonmaster='Unauthorized Penalty' and module=(select id from eg_module where name='Property Tax')), inst.id, null, null, current_timestamp, current_timestamp, (select id from chartofaccounts where name='Penalties and Fines-Penalty for Un-authorised Construction') from eg_installment_master inst where inst.id_module=(select id from eg_module where name='Property Tax') and INSTALLMENT_YEAR = to_date('01-04-15','DD-MM-YY');
Insert into EG_DEMAND_REASON (ID,ID_DEMAND_REASON_MASTER,ID_INSTALLMENT,PERCENTAGE_BASIS,ID_BASE_REASON,create_date,modified_date,GLCODEID) select nextval('seq_eg_demand_reason'), (select id from eg_demand_reason_master where reasonmaster='Penalty Fines' and module=(select id from eg_module where name='Property Tax')), inst.id, null, null, current_timestamp, current_timestamp, (select id from chartofaccounts where name='Penalties and Fines-Contractors') from eg_installment_master inst where inst.id_module=(select id from eg_module where name='Property Tax');
------------------END---------------------

-----------------START-------------------
INSERT INTO eg_appconfig ( ID, KEY_NAME, DESCRIPTION, VERSION, MODULE ) VALUES (nextval('SEQ_EG_APPCONFIG'), 'PROPERTYTAXDEPARTMENTFORWORKFLOW', 'Department for Workflow',0, (select id from eg_module where name='Property Tax')); 
INSERT INTO eg_appconfig_values ( ID, KEY_ID, EFFECTIVE_FROM, VALUE, VERSION ) VALUES (nextval('SEQ_EG_APPCONFIG_VALUES'), (SELECT id FROM EG_APPCONFIG WHERE KEY_NAME='PROPERTYTAXDEPARTMENTFORWORKFLOW' AND MODULE =(select id from eg_module where name='Property Tax')),current_date, 'Revenue',0);

INSERT INTO eg_appconfig ( ID, KEY_NAME, DESCRIPTION, VERSION, MODULE ) VALUES (nextval('SEQ_EG_APPCONFIG'), 'PROPERTYTAXROLEFORNONEMPLOYEE', 'roles for Property tax workflow',0, (select id from eg_module where name='Property Tax')); 
INSERT INTO eg_appconfig_values ( ID, KEY_ID, EFFECTIVE_FROM, VALUE, VERSION ) VALUES (nextval('SEQ_EG_APPCONFIG_VALUES'), (SELECT id FROM EG_APPCONFIG WHERE KEY_NAME='PROPERTYTAXROLEFORNONEMPLOYEE'),current_date, 'CSC Operator',0);

INSERT INTO eg_appconfig ( ID, KEY_NAME, DESCRIPTION, VERSION, MODULE ) VALUES (nextval('SEQ_EG_APPCONFIG'),'PROPERTYTAXDESIGNATIONFORWORKFLOW', 'Designation for Workflow',0, (select id from eg_module where name='Property Tax')); 
INSERT INTO eg_appconfig_values ( ID, KEY_ID, EFFECTIVE_FROM, VALUE, VERSION ) VALUES (nextval('SEQ_EG_APPCONFIG_VALUES'), (SELECT id FROM EG_APPCONFIG WHERE KEY_NAME='PROPERTYTAXDESIGNATIONFORWORKFLOW' and MODULE =(select id from eg_module where name='Property Tax')),current_date, 'Revenue Clerk',0);

INSERT INTO eg_appconfig ( ID, KEY_NAME, DESCRIPTION, VERSION, MODULE ) VALUES (nextval('SEQ_EG_APPCONFIG'), 'IS_CORPORATION', 'To know the ULB is Corporation or not',0, (select id from eg_module where name='Property Tax')); 
INSERT INTO eg_appconfig_values ( ID, KEY_ID, EFFECTIVE_FROM, VALUE, VERSION ) VALUES (nextval('SEQ_EG_APPCONFIG_VALUES'), (SELECT id FROM EG_APPCONFIG WHERE KEY_NAME='IS_CORPORATION'), current_date, '0',0);

INSERT INTO eg_appconfig ( ID, KEY_NAME, DESCRIPTION, VERSION, MODULE ) VALUES (nextval('SEQ_EG_APPCONFIG'), 'IS_SEASHORE_ULB', 'To know the ULB is on Sea Shore or not',0, (select id from eg_module where name='Property Tax'));
INSERT INTO eg_appconfig_values ( ID, KEY_ID, EFFECTIVE_FROM, VALUE, VERSION ) VALUES (nextval('SEQ_EG_APPCONFIG_VALUES'), (SELECT id FROM EG_APPCONFIG WHERE KEY_NAME='IS_SEASHORE_ULB'), current_date, '0',0); 

INSERT INTO eg_appconfig ( ID, KEY_NAME, DESCRIPTION, VERSION, MODULE ) VALUES (nextval('SEQ_EG_APPCONFIG'), 'IS_PRIMARYSERVICECHARGES_APPLICABLE', 'To know the Primary Service Charges are applicable in ULB or not',0, (select id from eg_module where name='Property Tax'));
INSERT INTO eg_appconfig_values ( ID, KEY_ID, EFFECTIVE_FROM, VALUE, VERSION ) VALUES (nextval('SEQ_EG_APPCONFIG_VALUES'), (SELECT id FROM EG_APPCONFIG WHERE KEY_NAME='IS_PRIMARYSERVICECHARGES_APPLICABLE'), current_date, '0', 0);

INSERT INTO eg_appconfig ( ID, KEY_NAME, DESCRIPTION, VERSION, MODULE ) VALUES (nextval('SEQ_EG_APPCONFIG'), 'PT_TAXRATES', 'The tax rates for each tax head applicable for ULB',0, (select id from eg_module where name='Property Tax'));
INSERT INTO eg_appconfig_values ( ID, KEY_ID, EFFECTIVE_FROM, VALUE, VERSION ) VALUES (nextval('SEQ_EG_APPCONFIG_VALUES'), (SELECT id FROM EG_APPCONFIG WHERE KEY_NAME='PT_TAXRATES'), current_date, 'GEN_TAX_RESD=20'||chr(10)||'GEN_TAX_NR=25'||chr(10)||'VAC_LAND_TAX=0.2'||chr(10)||'LIB_CESS=4'||chr(10)||'EDU_CESS=8'||chr(10)||'SEW_TAX_RESD=0'||chr(10)||'SEW_TAX_NR=0'||chr(10)||'PRIMARY_SER_CHRG=0',0);
------------------END---------------------

-----------------START-------------------
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (10, 'ANY', 'PropertyImpl', 'Alter:Bill Collector Approved', NULL, NULL, 'Revenue inspector', 'ALTER ASSESSMENT', 'Alter:Revenue Inspector Approved', 'Revenue Officer Approval Pending', 'Revenue officer', 'Revenue inspector Approved', 'Forward,Reject', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (11, 'ANY', 'PropertyImpl', 'Alter:Revenue Inspector Approved', NULL, NULL, 'Revenue officer', 'ALTER ASSESSMENT', 'Alter:Revenue Officer Approved', 'Commissioner Approval Pending', 'Commissioner', 'Revenue Officer Approved', 'Forward,Reject', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (13, 'ANY', 'PropertyImpl', 'Alter:Commissioner Approved', NULL, NULL, 'Revenue Clerk', 'ALTER ASSESSMENT', 'Alter:END', 'END', NULL, NULL, 'Generate Notice', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (12, 'ANY', 'PropertyImpl', 'Alter:Revenue Officer Approved', NULL, NULL, 'Commissioner', 'ALTER ASSESSMENT', 'Alter:Commissioner Approved', 'Notice Print Pending', 'Revenue Clerk', 'Notice Generated', 'Approve,Reject', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (9, 'ANY', 'PropertyImpl', 'Alter:Revenue Clerk Approved', NULL, NULL, 'Bill Collector', 'ALTER ASSESSMENT', 'Alter:Bill Collector Approved', 'Revenue inspector Approval Pending', 'Revenue inspector', 'Bill Collector Approved', 'Forward,Reject', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (14, 'ANY', 'PropertyImpl', 'Alter:Rejected', NULL, NULL, 'Revenue Clerk', 'ALTER ASSESSMENT', 'Alter:Revenue Clerk Approved', 'Bill Collector Approval Pending', 'Bill Collector', NULL, 'Forward,Reject', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (8, 'ANY', 'PropertyImpl', 'Alter:NEW', NULL, NULL, 'Revenue Clerk', 'ALTER ASSESSMENT', 'Alter:Revenue Clerk Approved', 'Bill Collector Approval Pending', 'Bill Collector', 'Revenue Clerk Approved', 'Forward', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (15, 'ANY', 'PropertyImpl', 'Create:NEW', NULL, NULL, 'Revenue Clerk', 'NEW ASSESSMENT', 'Create:Revenue Clerk Approved', 'Bill Collector Approval Pending', 'Bill Collector', 'Revenue Clerk Approved', 'Create', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (16, 'ANY', 'PropertyImpl', 'Create:Revenue Clerk Approved', NULL, NULL, 'Bill Collector', 'NEW ASSESSMENT', 'Create:Bill Collector Approved', 'Revenue inspector Approval Pending', 'Revenue inspector', 'Bill Collector Approved', 'Forward,Reject', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (17, 'ANY', 'PropertyImpl', 'Create:Bill Collector Approved', NULL, NULL, 'Revenue inspector', 'NEW ASSESSMENT', 'Create:Revenue Inspector Approved', 'Revenue Officer Approval Pending', 'Revenue officer', 'Revenue inspector Approved', 'Forward,Reject', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (18, 'ANY', 'PropertyImpl', 'Create:Revenue Inspector Approved', NULL, NULL, 'Revenue officer', 'NEW ASSESSMENT', 'Create:Revenue Officer Approved', 'Commissioner Approval Pending', 'Commissioner', 'Revenue Officer Approved', 'Forward,Reject', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (19, 'ANY', 'PropertyImpl', 'Create:Revenue Officer Approved', NULL, NULL, 'Commissioner', 'NEW ASSESSMENT', 'Create:Commissioner Approved', 'Notice Print Pending', 'Revenue Clerk', 'Notice Generated', 'Approve,Reject', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (20, 'ANY', 'PropertyImpl', 'Create:Commissioner Approved', NULL, NULL, 'Revenue Clerk', 'NEW ASSESSMENT', 'Create:END', 'END', NULL, NULL, 'Generate Notice', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (21, 'ANY', 'PropertyImpl', 'Create:Rejected', NULL, NULL, 'Revenue Clerk', 'NEW ASSESSMENT', 'Create:Revenue Clerk Approved', 'Bill Collector Approval Pending', 'Bill Collector', NULL, 'Forward,Reject', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (26, 'ANY', 'RevisionPetition', 'Revision Petition:Hearing completed', NULL, 'Record inspection details', NULL, NULL, 'Revision Petition:Inspection completed', 'Verify inspection details', 'Revenue officer', 'INSPECTION COMPLETED', 'Save,Forward', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (22, 'ANY', 'RevisionPetition', 'Revision Petition:NEW', NULL, NULL, NULL, NULL, 'Revision Petition:CREATED', 'FORWARD TO COMMISSIONER APPROVAL', 'Commissioner', 'CREATED', 'Forward', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (39, 'ANY', 'PropertyMutation', 'NEW', NULL, NULL, 'Revenue Clerk', 'PROPERTY TRANSFER', 'Revenue Clerk Approved', 'Bill Collector Approval Pending', 'Bill Collector', 'Revenue Clerk Approved', 'Save', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (40, 'ANY', 'PropertyMutation', 'Revenue Clerk Approved', NULL, NULL, 'Bill Collector', 'PROPERTY TRANSFER', 'Bill Collector Approved', 'Revenue inspector Approval Pending', 'Revenue inspector', 'Bill Collector Approved', 'Forward,Reject', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (41, 'ANY', 'PropertyMutation', 'Bill Collector Approved', NULL, NULL, 'Revenue inspector', 'PROPERTY TRANSFER', 'Revenue Inspector Approved', 'Revenue Officer Approval Pending', 'Revenue officer', 'Revenue Inspector Approved', 'Forward,Reject', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (42, 'ANY', 'PropertyMutation', 'Revenue Inspector Approved', NULL, NULL, 'Revenue Officer', 'PROPERTY TRANSFER', 'Revenue Officer Approved', 'Ready For Payment', 'Commissioner', 'Revenue Officer Approved', 'Forward,Reject', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (43, 'ANY', 'PropertyMutation', 'Revenue Officer Approved', NULL, NULL, 'Revenue officer', 'PROPERTY TRANSFER', 'Revenue Officer Approved', 'Commissioner Approval Pending', 'Commissioner', 'Revenue Officer Approved', 'Forward,Reject', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (44, 'ANY', 'PropertyMutation', 'Transfer Fee Collected', NULL, NULL, 'Commissioner', 'PROPERTY TRANSFER', 'Commissioner Approved', 'Transfer Notice Print Pending', 'Revenue Clerk', 'Transfer Notice Generated', 'Approve,Reject', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (45, 'ANY', 'PropertyMutation', 'Commissioner Approved', NULL, NULL, 'Revenue Clerk', 'PROPERTY TRANSFER', 'END', 'END', NULL, NULL, 'Generate Title Transfer Notice', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (46, 'ANY', 'PropertyMutation', 'Rejected', NULL, NULL, 'Revenue Clerk', 'PROPERTY TRANSFER', 'Revenue Clerk Approved', 'Bill Collector Approval Pending', 'Bill Collector', NULL, 'Forward,Reject', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (47, 'ANY', 'RevisionPetition', 'Revision Petition:CREATED', NULL, 'FORWARD TO COMMISSIONER APPROVAL', NULL, NULL, 'Revision Petition:Registration', 'ADD HEARING DATE', 'Commissioner', 'CREATED', 'Forward', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (23, 'ANY', 'RevisionPetition', 'Revision Petition:Registration', NULL, 'ADD HEARING DATE', NULL, NULL, 'Revision Petition:Hearing date fixed', 'Generate Hearing Notice', 'Assistant', 'HEARING DATE FIXED', 'Forward', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (27, 'ANY', 'RevisionPetition', 'Revision Petition:Inspection completed', NULL, 'Verify inspection details', NULL, NULL, 'Revision Petition:Inspection verified', 'Final approval', 'Commissioner', 'INSPECTION VERIFY', 'Forward,Reject Inspection', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (28, 'ANY', 'RevisionPetition', 'Revision Petition:Inspection verified', NULL, 'Final approval', NULL, NULL, 'Revision Petition:Approved', 'Print Endoresement', 'Assistant', NULL, 'Approve,Reject Inspection', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (30, 'ANY', 'RevisionPetition', 'Revision Petition:Rejected', NULL, NULL, NULL, NULL, 'Revision Petition:Inspection completed', 'Verify inspection details', 'Revenue officer', 'INSPECTION COMPLETED', 'Save,Forward', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (24, 'ANY', 'RevisionPetition', 'Revision Petition:Hearing date fixed', NULL, 'Generate Hearing Notice', NULL, NULL, 'Revision Petition:Hearing completed', 'Record inspection details', 'Revenue Inspector', 'HEARING COMPLETED', 'Forward,Print HearingNotice', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (29, 'ANY', 'RevisionPetition', 'Revision Petition:Approved', NULL, 'Print Endoresement', NULL, NULL, 'Revision Petition:Print Special Notice', 'Print Special Notice', 'Assistant', NULL, 'Print Endoresement', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (48, 'ANY', 'RevisionPetition', 'Revision Petition:Print Special Notice', NULL, 'Print Special Notice', NULL, NULL, 'Revision Petition:END', 'END', 'ASSISTANT', NULL, 'Print Special Notice', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (49, 'ANY', 'PropertyImpl', 'Bifurcate:NEW', NULL, NULL, 'Revenue Clerk', 'BIFURCATE ASSESSMENT', 'Bifurcate:Revenue Clerk Approved', 'Bill Collector Approval Pending', 'Bill Collector', 'Revenue Clerk Approved', 'Create', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (50, 'ANY', 'PropertyImpl', 'Bifurcate:Revenue Clerk Approved', NULL, NULL, 'Bill Collector', 'BIFURCATE ASSESSMENT', 'Bifurcate:Bill Collector Approved', 'Revenue inspector Approval Pending', 'Revenue inspector', 'Bill Collector Approved', 'Forward,Reject', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (51, 'ANY', 'PropertyImpl', 'Bifurcate:Bill Collector Approved', NULL, NULL, 'Revenue inspector', 'BIFURCATE ASSESSMENT', 'Bifurcate:Revenue Inspector Approved', 'Revenue Officer Approval Pending', 'Revenue officer', 'Revenue inspector Approved', 'Forward,Reject', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (52, 'ANY', 'PropertyImpl', 'Bifurcate:Revenue Inspector Approved', NULL, NULL, 'Revenue officer', 'BIFURCATE ASSESSMENT', 'Bifurcate:Revenue Officer Approved', 'Commissioner Approval Pending', 'Commissioner', 'Revenue Officer Approved', 'Forward,Reject', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (53, 'ANY', 'PropertyImpl', 'Bifurcate:Revenue Officer Approved', NULL, NULL, 'Commissioner', 'BIFURCATE ASSESSMENT', 'Bifurcate:Commissioner Approved', 'Notice Print Pending', 'Revenue Clerk', 'Notice Generated', 'Approve,Reject', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (54, 'ANY', 'PropertyImpl', 'Bifurcate:Commissioner Approved', NULL, NULL, 'Revenue Clerk', 'BIFURCATE ASSESSMENT', 'Bifurcate:END', 'END', NULL, NULL, 'Generate Notice', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (55, 'ANY', 'PropertyImpl', 'Bifurcate:Rejected', NULL, NULL, 'Revenue Clerk', 'BIFURCATE ASSESSMENT', 'Bifurcate:Revenue Clerk Approved', 'Bill Collector Approval Pending', 'Bill Collector', NULL, 'Forward,Reject', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (56, 'ANY', 'PropertyImpl', 'Created', NULL, NULL, 'NULL', 'NEW ASSESSMENT', 'Create:NEW', 'Revenue Clerk approval pending', 'Revenue Clerk', 'Revenue Clerk Approved', 'Forward', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (57, 'ANY', 'PropertyImpl', 'Created', NULL, NULL, 'NULL', 'ALTER ASSESSMENT', 'Alter:NEW', 'Revenue Clerk approval pending', 'Revenue Clerk', 'Revenue Clerk Approved', 'Forward', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (58, 'ANY', 'PropertyMutation', 'Created', NULL, NULL, 'NULL', 'PROPERTY TRANSFER', 'NEW', 'Revenue Clerk approval pending', 'Revenue Clerk', 'Revenue Clerk Approved', 'Forward', NULL, NULL, '2015-04-01', '2099-04-01');
INSERT INTO eg_wf_matrix (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (78, 'ANY', 'RevisionPetition', 'Revision Petition:Registered', NULL, 'ADD HEARING DATE', NULL, NULL, 'Revision Petition:Hearing date fixed', 'Generate Hearing Notice', 'Commissioner', '', 'Forward', NULL, NULL, '2015-04-01', '2099-04-01');


------------------END---------------------

-----------------START-------------------
Insert into EGPT_APPLICATION_TYPE (id,code,name,resolutiontime,description,createddate,lastmodifieddate,createdby,lastmodifiedby,version) values (nextval('seq_egpt_application_type'),'CREATE','CREATE',15,'Create Assessment',to_timestamp('2015-07-15 19:17:57.739424','null'),null,1,null,null);
Insert into EGPT_APPLICATION_TYPE (id,code,name,resolutiontime,description,createddate,lastmodifieddate,createdby,lastmodifiedby,version) values (nextval('seq_egpt_application_type'),'MODIFY','MODIFY',15,'Alter Assessment',to_timestamp('2015-07-15 19:17:57.739424','null'),null,1,null,null);
Insert into EGPT_APPLICATION_TYPE (id,code,name,resolutiontime,description,createddate,lastmodifieddate,createdby,lastmodifiedby,version) values (nextval('seq_egpt_application_type'),'TRANSFER','TRANSFER',15,'Transfer Assessment',to_timestamp('2015-07-15 19:17:57.739424','null'),null,1,null,null);
------------------END---------------------

-----------------START-------------------
Insert into EGPT_APARTMENT (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (nextval('seq_egpt_apartment'),0,'Spring Fields Appartment','Spring',to_timestamp('2015-07-15 19:17:56.434462','null'),to_timestamp('2015-07-15 19:17:56.434462','null'),1,1);
Insert into EGPT_APARTMENT (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (nextval('seq_egpt_apartment'),0,'Mantri Square','MS',to_timestamp('2015-07-15 19:17:56.434462','null'),to_timestamp('2015-07-15 19:17:56.434462','null'),1,1);
Insert into EGPT_APARTMENT (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (nextval('seq_egpt_apartment'),0,'Alankara Plaza','A-plaza',to_timestamp('2015-07-15 19:17:56.434462','null'),to_timestamp('2015-07-15 19:17:56.434462','null'),1,1);
Insert into EGPT_APARTMENT (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (nextval('seq_egpt_apartment'),0,'Nitesh Estates','Nitesh',to_timestamp('2015-07-15 19:17:56.434462','null'),to_timestamp('2015-07-15 19:17:56.434462','null'),1,1);
------------------END---------------------

-----------------START-------------------
Insert into EGPT_DOCUMENT_TYPE (id,name,mandatory,version,transactiontype,id_application_type) values (nextval('seq_egpt_document_type'),'Photo Of Assessment','false',null,'CREATE',1);
Insert into EGPT_DOCUMENT_TYPE (id,name,mandatory,version,transactiontype,id_application_type) values (nextval('seq_egpt_document_type'),'Building Permission Copy','false',null,'CREATE',1);
Insert into EGPT_DOCUMENT_TYPE (id,name,mandatory,version,transactiontype,id_application_type) values (nextval('seq_egpt_document_type'),'Attested Copies Of Property Documents','false',null,'CREATE',1);
Insert into EGPT_DOCUMENT_TYPE (id,name,mandatory,version,transactiontype,id_application_type) values (nextval('seq_egpt_document_type'),'Two Non-Judicial stamp papers of Rs.10','false',null,'CREATE',1);
Insert into EGPT_DOCUMENT_TYPE (id,name,mandatory,version,transactiontype,id_application_type) values (nextval('seq_egpt_document_type'),'Notarized Affidavit Cum Indemnity Bond On Rs.100 Stamp Paper','false',null,'CREATE',1);
Insert into EGPT_DOCUMENT_TYPE (id,name,mandatory,version,transactiontype,id_application_type) values (nextval('seq_egpt_document_type'),'Copy Of Death Certificate/ Succession Certificate/ Legal Hair Certificate','false',null,'CREATE',1);
Insert into EGPT_DOCUMENT_TYPE (id,name,mandatory,version,transactiontype,id_application_type) values (nextval('seq_egpt_document_type'),'Assessment Photo','false',null,'MODIFY',2);
Insert into EGPT_DOCUMENT_TYPE (id,name,mandatory,version,transactiontype,id_application_type) values (nextval('seq_egpt_document_type'),'Building Plan Document','false',null,'MODIFY',2);
Insert into EGPT_DOCUMENT_TYPE (id,name,mandatory,version,transactiontype,id_application_type) values (nextval('seq_egpt_document_type'),'Address Proof Of Parties','false',null,'TRANSFER',3);
Insert into EGPT_DOCUMENT_TYPE (id,name,mandatory,version,transactiontype,id_application_type) values (nextval('seq_egpt_document_type'),'Attested Copies Of Property Documents','false',null,'TRANSFER',3);
Insert into EGPT_DOCUMENT_TYPE (id,name,mandatory,version,transactiontype,id_application_type) values (nextval('seq_egpt_document_type'),'Title Deeds Issued By Revenue Department','false',null,'TRANSFER',3);
------------------END---------------------

-----------------START-------------------
Insert into EGPT_EXEMPTION_REASON (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (nextval('seq_egpt_exemption_reason'),1,'Temples','Temples',to_timestamp('2015-07-15 19:18:01.695089','null'),to_timestamp('2015-07-15 19:18:01.695089','null'),1,1);
Insert into EGPT_EXEMPTION_REASON (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (nextval('seq_egpt_exemption_reason'),1,'Mosque','Mosque',to_timestamp('2015-07-15 19:18:01.695089','null'),to_timestamp('2015-07-15 19:18:01.695089','null'),1,1);
Insert into EGPT_EXEMPTION_REASON (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (nextval('seq_egpt_exemption_reason'),1,'Anadha Ashram','Ashram',to_timestamp('2015-07-15 19:18:01.695089','null'),to_timestamp('2015-07-15 19:18:01.695089','null'),1,1);
------------------END---------------------

-----------------START-------------------
Insert into EGPT_PROPERTY_USAGE_MASTER (id,usg_name,modified_date,usage_factor,usg_name_local,code,order_id,from_date,to_date,is_enabled,created_by,modified_by,created_date,ISRESIDENTIAL) values (nextval('seq_property_usage_master'),'Residence','2015-07-15',4.0,'Residential','RESD',1,'0001-04-01',to_timestamp('0001-03-31 00:00:00.0','null'),1,1,1,'2015-07-15',true);
Insert into EGPT_PROPERTY_USAGE_MASTER (id,usg_name,modified_date,usage_factor,usg_name_local,code,order_id,from_date,to_date,is_enabled,created_by,modified_by,created_date,ISRESIDENTIAL) values (nextval('seq_property_usage_master'),'Shops','2015-07-15',4.0,'Shops','SHOP',2,'0001-04-01',to_timestamp('0001-03-31 00:00:00.0','null'),1,1,1,'2015-07-15',false);
Insert into EGPT_PROPERTY_USAGE_MASTER (id,usg_name,modified_date,usage_factor,usg_name_local,code,order_id,from_date,to_date,is_enabled,created_by,modified_by,created_date,ISRESIDENTIAL) values (nextval('seq_property_usage_master'),'Office/banks','2015-07-15',4.0,'Office/banks','OFFICE',3,'0001-04-01',to_timestamp('0001-03-31 00:00:00.0','null'),1,1,1,'2015-07-15',false);
Insert into EGPT_PROPERTY_USAGE_MASTER (id,usg_name,modified_date,usage_factor,usg_name_local,code,order_id,from_date,to_date,is_enabled,created_by,modified_by,created_date,ISRESIDENTIAL) values (nextval('seq_property_usage_master'),'Hospitals/ Nursing Homes','2015-07-15',4.0,'Hospitals/ Nursing Homes','Hospital',4,'0001-04-01',to_timestamp('0001-03-31 00:00:00.0','null'),1,1,1,'2015-07-15',false);
Insert into EGPT_PROPERTY_USAGE_MASTER (id,usg_name,modified_date,usage_factor,usg_name_local,code,order_id,from_date,to_date,is_enabled,created_by,modified_by,created_date,ISRESIDENTIAL) values (nextval('seq_property_usage_master'),'Educational Institutions','2015-07-15',4.0,'Educational Institutions','EDUCATION',3,'0001-04-01',to_timestamp('0001-03-31 00:00:00.0','null'),1,1,1,'2015-07-15',false);
Insert into EGPT_PROPERTY_USAGE_MASTER (id,usg_name,modified_date,usage_factor,usg_name_local,code,order_id,from_date,to_date,is_enabled,created_by,modified_by,created_date,ISRESIDENTIAL) values (nextval('seq_property_usage_master'),'Hotels/lodges/ Restarants','2015-07-15',4.0,'Hotels/lodges/ Restarants','HOTEL',3,'0001-04-01',to_timestamp('0001-03-31 00:00:00.0','null'),1,1,1,'2015-07-15',false);
------------------END---------------------

-----------------START-------------------
Insert into egpt_struc_cl (ID,CONSTR_NUM,CONSTR_TYPE,CONSTR_DESCR,CONSTR_FACTOR,MODIFIED_DATE,ID_INSTALLMENT,IS_HISTORY,CREATED_BY,FLOOR_NUM,CODE,ORDER_ID,FROM_DATE,TO_DATE,CREATED_DATE,MODIFIED_BY) values (nextval('SEQ_EGPT_STRUC_CL'),1,'Rcc Posh','Rcc Posh',1.25,CURRENT_TIMESTAMP,129,'N',1,1,'R-P',1,to_date('01-04-11','DD-MM-RR'),to_date('31-03-08','DD-MM-RR'),CURRENT_TIMESTAMP,1);
Insert into egpt_struc_cl (ID,CONSTR_NUM,CONSTR_TYPE,CONSTR_DESCR,CONSTR_FACTOR,MODIFIED_DATE,ID_INSTALLMENT,IS_HISTORY,CREATED_BY,FLOOR_NUM,CODE,ORDER_ID,FROM_DATE,TO_DATE,CREATED_DATE,MODIFIED_BY) values (nextval('SEQ_EGPT_STRUC_CL'),1,'Rcc Ordinary','Rcc Ordinary',1.25,CURRENT_TIMESTAMP,129,'N',1,1,'R-O',1,to_date('01-04-11','DD-MM-RR'),to_date('31-03-08','DD-MM-RR'),CURRENT_TIMESTAMP,1);
Insert into egpt_struc_cl (ID,CONSTR_NUM,CONSTR_TYPE,CONSTR_DESCR,CONSTR_FACTOR,MODIFIED_DATE,ID_INSTALLMENT,IS_HISTORY,CREATED_BY,FLOOR_NUM,CODE,ORDER_ID,FROM_DATE,TO_DATE,CREATED_DATE,MODIFIED_BY) values (nextval('SEQ_EGPT_STRUC_CL'),1,'M-terras','M-terras',1.25,CURRENT_TIMESTAMP,129,'N',1,1,'M-T',1,to_date('01-04-11','DD-MM-RR'),to_date('31-03-08','DD-MM-RR'),CURRENT_TIMESTAMP,1);
Insert into egpt_struc_cl (ID,CONSTR_NUM,CONSTR_TYPE,CONSTR_DESCR,CONSTR_FACTOR,MODIFIED_DATE,ID_INSTALLMENT,IS_HISTORY,CREATED_BY,FLOOR_NUM,CODE,ORDER_ID,FROM_DATE,TO_DATE,CREATED_DATE,MODIFIED_BY) values (nextval('SEQ_EGPT_STRUC_CL'),1,'M-tiled/ac Sheet/gi Roof','M-tiled/ac Sheet/gi Roof',1.25,CURRENT_TIMESTAMP,129,'N',1,1,'M-TSR',1,to_date('01-04-11','DD-MM-RR'),to_date('31-03-08','DD-MM-RR'),CURRENT_TIMESTAMP,1);
Insert into egpt_struc_cl (ID,CONSTR_NUM,CONSTR_TYPE,CONSTR_DESCR,CONSTR_FACTOR,MODIFIED_DATE,ID_INSTALLMENT,IS_HISTORY,CREATED_BY,FLOOR_NUM,CODE,ORDER_ID,FROM_DATE,TO_DATE,CREATED_DATE,MODIFIED_BY) values (nextval('SEQ_EGPT_STRUC_CL'),1,'Country Tiled','Country Tiled',1.25,CURRENT_TIMESTAMP,129,'N',1,1,'C-T',1,to_date('01-04-11','DD-MM-RR'),to_date('31-03-08','DD-MM-RR'),CURRENT_TIMESTAMP,1);
Insert into egpt_struc_cl (ID,CONSTR_NUM,CONSTR_TYPE,CONSTR_DESCR,CONSTR_FACTOR,MODIFIED_DATE,ID_INSTALLMENT,IS_HISTORY,CREATED_BY,FLOOR_NUM,CODE,ORDER_ID,FROM_DATE,TO_DATE,CREATED_DATE,MODIFIED_BY) values (nextval('SEQ_EGPT_STRUC_CL'),1,'Huts','Huts',1.25,CURRENT_TIMESTAMP,129,'N',1,1,'H',1,to_date('01-04-11','DD-MM-RR'),to_date('31-03-08','DD-MM-RR'),CURRENT_TIMESTAMP,1);
------------------END---------------------

-----------------START-------------------
Insert into EGPT_MSTR_CATEGORY (id,category_name,category_amnt,id_installment,is_history,created_by,id_usage,from_date,to_date,modified_by,created_date,modified_date,id_struct_cl) values (nextval('seq_egpt_mstr_category'),'RESD',2.0,null,'N',1,(select id from EGPT_PROPERTY_USAGE_MASTER where code='RESD'),to_timestamp('2004-04-01 00:00:00.0','null'),to_timestamp('2099-03-31 00:00:00.0','null'),1,to_timestamp('2015-07-15 19:17:49.992198','null'),null,null);
Insert into EGPT_MSTR_CATEGORY (id,category_name,category_amnt,id_installment,is_history,created_by,id_usage,from_date,to_date,modified_by,created_date,modified_date,id_struct_cl) values (nextval('seq_egpt_mstr_category'),'NR-SHOP',4.0,null,'N',1,(select id from EGPT_PROPERTY_USAGE_MASTER where code='SHOP'),to_timestamp('2004-04-01 00:00:00.0','null'),to_timestamp('2099-03-31 00:00:00.0','null'),1,to_timestamp('2015-07-15 19:17:49.992198','null'),null,null);
Insert into EGPT_MSTR_CATEGORY (id,category_name,category_amnt,id_installment,is_history,created_by,id_usage,from_date,to_date,modified_by,created_date,modified_date,id_struct_cl) values (nextval('seq_egpt_mstr_category'),'NR-OFFICE',4.0,null,'N',1,(select id from EGPT_PROPERTY_USAGE_MASTER where code='OFFICE'),to_timestamp('2004-04-01 00:00:00.0','null'),to_timestamp('2099-03-31 00:00:00.0','null'),1,to_timestamp('2015-07-15 19:17:49.992198','null'),null,null);
Insert into EGPT_MSTR_CATEGORY (id,category_name,category_amnt,id_installment,is_history,created_by,id_usage,from_date,to_date,modified_by,created_date,modified_date,id_struct_cl) values (nextval('seq_egpt_mstr_category'),'NR-Hospital',4.0,null,'N',1,(select id from EGPT_PROPERTY_USAGE_MASTER where code='Hospital'),to_timestamp('2004-04-01 00:00:00.0','null'),to_timestamp('2099-03-31 00:00:00.0','null'),1,to_timestamp('2015-07-15 19:17:49.992198','null'),null,null);
Insert into EGPT_MSTR_CATEGORY (id,category_name,category_amnt,id_installment,is_history,created_by,id_usage,from_date,to_date,modified_by,created_date,modified_date,id_struct_cl) values (nextval('seq_egpt_mstr_category'),'NR-EDUCATION',4.0,null,'N',1,(select id from EGPT_PROPERTY_USAGE_MASTER where code='EDUCATION'),to_timestamp('2004-04-01 00:00:00.0','null'),to_timestamp('2099-03-31 00:00:00.0','null'),1,to_timestamp('2015-07-15 19:17:49.992198','null'),null,null);
Insert into EGPT_MSTR_CATEGORY (id,category_name,category_amnt,id_installment,is_history,created_by,id_usage,from_date,to_date,modified_by,created_date,modified_date,id_struct_cl) values (nextval('seq_egpt_mstr_category'),'NR-HOTEL',4.0,null,'N',1,(select id from EGPT_PROPERTY_USAGE_MASTER where code='HOTEL'),to_timestamp('2004-04-01 00:00:00.0','null'),to_timestamp('2099-03-31 00:00:00.0','null'),1,to_timestamp('2015-07-15 19:17:49.992198','null'),null,null);
------------------END---------------------

-----------------START-------------------
Insert into EGPT_MSTR_BNDRY_CATEGORY (id,id_bndry,id_category,modified_date,from_date,to_date,created_by,modified_by,created_date) values (nextval('seq_egpt_mstr_bndry_category'),(select id from eg_boundary where name = 'Zone-1' and boundarytype = (select id from eg_boundary_type where name = 'Zone')),1,'2015-07-15',to_date('01-04-04','DD-MM-YY'),to_date('31-03-2099','DD-MM-YYYY'),1,1,'2015-07-15');
Insert into EGPT_MSTR_BNDRY_CATEGORY (id,id_bndry,id_category,modified_date,from_date,to_date,created_by,modified_by,created_date) values (nextval('seq_egpt_mstr_bndry_category'),(select id from eg_boundary where name = 'Zone-1' and boundarytype = (select id from eg_boundary_type where name = 'Zone')),2,'2015-07-15',to_date('01-04-04','DD-MM-YY'),to_date('31-03-2099','DD-MM-YYYY'),1,1,'2015-07-15');
Insert into EGPT_MSTR_BNDRY_CATEGORY (id,id_bndry,id_category,modified_date,from_date,to_date,created_by,modified_by,created_date) values (nextval('seq_egpt_mstr_bndry_category'),(select id from eg_boundary where name = 'Zone-1' and boundarytype = (select id from eg_boundary_type where name = 'Zone')),3,'2015-07-15',to_date('01-04-04','DD-MM-YY'),to_date('31-03-2099','DD-MM-YYYY'),1,1,'2015-07-15');
Insert into EGPT_MSTR_BNDRY_CATEGORY (id,id_bndry,id_category,modified_date,from_date,to_date,created_by,modified_by,created_date) values (nextval('seq_egpt_mstr_bndry_category'),(select id from eg_boundary where name = 'Zone-1' and boundarytype = (select id from eg_boundary_type where name = 'Zone')),4,'2015-07-15',to_date('01-04-04','DD-MM-YY'),to_date('31-03-2099','DD-MM-YYYY'),1,1,'2015-07-15');
Insert into EGPT_MSTR_BNDRY_CATEGORY (id,id_bndry,id_category,modified_date,from_date,to_date,created_by,modified_by,created_date) values (nextval('seq_egpt_mstr_bndry_category'),(select id from eg_boundary where name = 'Zone-1' and boundarytype = (select id from eg_boundary_type where name = 'Zone')),5,'2015-07-15',to_date('01-04-04','DD-MM-YY'),to_date('31-03-2099','DD-MM-YYYY'),1,1,'2015-07-15');
Insert into EGPT_MSTR_BNDRY_CATEGORY (id,id_bndry,id_category,modified_date,from_date,to_date,created_by,modified_by,created_date) values (nextval('seq_egpt_mstr_bndry_category'),(select id from eg_boundary where name = 'Zone-1' and boundarytype = (select id from eg_boundary_type where name = 'Zone')),6,'2015-07-15',to_date('01-04-04','DD-MM-YY'),to_date('31-03-2099','DD-MM-YYYY'),1,1,'2015-07-15');
Insert into EGPT_MSTR_BNDRY_CATEGORY (id,id_bndry,id_category,modified_date,from_date,to_date,created_by,modified_by,created_date) values (nextval('seq_egpt_mstr_bndry_category'),(select id from eg_boundary where name = 'Zone-2' and boundarytype = (select id from eg_boundary_type where name = 'Zone')),1,'2015-07-15',to_date('01-04-04','DD-MM-YY'),to_date('31-03-2099','DD-MM-YYYY'),1,1,'2015-07-15');
Insert into EGPT_MSTR_BNDRY_CATEGORY (id,id_bndry,id_category,modified_date,from_date,to_date,created_by,modified_by,created_date) values (nextval('seq_egpt_mstr_bndry_category'),(select id from eg_boundary where name = 'Zone-2' and boundarytype = (select id from eg_boundary_type where name = 'Zone')),2,'2015-07-15',to_date('01-04-04','DD-MM-YY'),to_date('31-03-2099','DD-MM-YYYY'),1,1,'2015-07-15');
Insert into EGPT_MSTR_BNDRY_CATEGORY (id,id_bndry,id_category,modified_date,from_date,to_date,created_by,modified_by,created_date) values (nextval('seq_egpt_mstr_bndry_category'),(select id from eg_boundary where name = 'Zone-2' and boundarytype = (select id from eg_boundary_type where name = 'Zone')),3,'2015-07-15',to_date('01-04-04','DD-MM-YY'),to_date('31-03-2099','DD-MM-YYYY'),1,1,'2015-07-15');
Insert into EGPT_MSTR_BNDRY_CATEGORY (id,id_bndry,id_category,modified_date,from_date,to_date,created_by,modified_by,created_date) values (nextval('seq_egpt_mstr_bndry_category'),(select id from eg_boundary where name = 'Zone-2' and boundarytype = (select id from eg_boundary_type where name = 'Zone')),4,'2015-07-15',to_date('01-04-04','DD-MM-YY'),to_date('31-03-2099','DD-MM-YYYY'),1,1,'2015-07-15');
Insert into EGPT_MSTR_BNDRY_CATEGORY (id,id_bndry,id_category,modified_date,from_date,to_date,created_by,modified_by,created_date) values (nextval('seq_egpt_mstr_bndry_category'),(select id from eg_boundary where name = 'Zone-2' and boundarytype = (select id from eg_boundary_type where name = 'Zone')),5,'2015-07-15',to_date('01-04-04','DD-MM-YY'),to_date('31-03-2099','DD-MM-YYYY'),1,1,'2015-07-15');
Insert into EGPT_MSTR_BNDRY_CATEGORY (id,id_bndry,id_category,modified_date,from_date,to_date,created_by,modified_by,created_date) values (nextval('seq_egpt_mstr_bndry_category'),(select id from eg_boundary where name = 'Zone-2' and boundarytype = (select id from eg_boundary_type where name = 'Zone')),6,'2015-07-15',to_date('01-04-04','DD-MM-YY'),to_date('31-03-2099','DD-MM-YYYY'),1,1,'2015-07-15');
Insert into EGPT_MSTR_BNDRY_CATEGORY (id,id_bndry,id_category,modified_date,from_date,to_date,created_by,modified_by,created_date) values (nextval('seq_egpt_mstr_bndry_category'),(select id from eg_boundary where name = 'Zone-3' and boundarytype = (select id from eg_boundary_type where name = 'Zone')),1,'2015-07-15',to_date('01-04-04','DD-MM-YY'),to_date('31-03-2099','DD-MM-YYYY'),1,1,'2015-07-15');
Insert into EGPT_MSTR_BNDRY_CATEGORY (id,id_bndry,id_category,modified_date,from_date,to_date,created_by,modified_by,created_date) values (nextval('seq_egpt_mstr_bndry_category'),(select id from eg_boundary where name = 'Zone-3' and boundarytype = (select id from eg_boundary_type where name = 'Zone')),2,'2015-07-15',to_date('01-04-04','DD-MM-YY'),to_date('31-03-2099','DD-MM-YYYY'),1,1,'2015-07-15');
Insert into EGPT_MSTR_BNDRY_CATEGORY (id,id_bndry,id_category,modified_date,from_date,to_date,created_by,modified_by,created_date) values (nextval('seq_egpt_mstr_bndry_category'),(select id from eg_boundary where name = 'Zone-3' and boundarytype = (select id from eg_boundary_type where name = 'Zone')),3,'2015-07-15',to_date('01-04-04','DD-MM-YY'),to_date('31-03-2099','DD-MM-YYYY'),1,1,'2015-07-15');
Insert into EGPT_MSTR_BNDRY_CATEGORY (id,id_bndry,id_category,modified_date,from_date,to_date,created_by,modified_by,created_date) values (nextval('seq_egpt_mstr_bndry_category'),(select id from eg_boundary where name = 'Zone-3' and boundarytype = (select id from eg_boundary_type where name = 'Zone')),4,'2015-07-15',to_date('01-04-04','DD-MM-YY'),to_date('31-03-2099','DD-MM-YYYY'),1,1,'2015-07-15');
Insert into EGPT_MSTR_BNDRY_CATEGORY (id,id_bndry,id_category,modified_date,from_date,to_date,created_by,modified_by,created_date) values (nextval('seq_egpt_mstr_bndry_category'),(select id from eg_boundary where name = 'Zone-3' and boundarytype = (select id from eg_boundary_type where name = 'Zone')),5,'2015-07-15',to_date('01-04-04','DD-MM-YY'),to_date('31-03-2099','DD-MM-YYYY'),1,1,'2015-07-15');
Insert into EGPT_MSTR_BNDRY_CATEGORY (id,id_bndry,id_category,modified_date,from_date,to_date,created_by,modified_by,created_date) values (nextval('seq_egpt_mstr_bndry_category'),(select id from eg_boundary where name = 'Zone-3' and boundarytype = (select id from eg_boundary_type where name = 'Zone')),6,'2015-07-15',to_date('01-04-04','DD-MM-YY'),to_date('31-03-2099','DD-MM-YYYY'),1,1,'2015-07-15');
Insert into EGPT_MSTR_BNDRY_CATEGORY (id,id_bndry,id_category,modified_date,from_date,to_date,created_by,modified_by,created_date) values (nextval('seq_egpt_mstr_bndry_category'),(select id from eg_boundary where name = 'Zone-4' and boundarytype = (select id from eg_boundary_type where name = 'Zone')),1,'2015-07-15',to_date('01-04-04','DD-MM-YY'),to_date('31-03-2099','DD-MM-YYYY'),1,1,'2015-07-15');
Insert into EGPT_MSTR_BNDRY_CATEGORY (id,id_bndry,id_category,modified_date,from_date,to_date,created_by,modified_by,created_date) values (nextval('seq_egpt_mstr_bndry_category'),(select id from eg_boundary where name = 'Zone-4' and boundarytype = (select id from eg_boundary_type where name = 'Zone')),2,'2015-07-15',to_date('01-04-04','DD-MM-YY'),to_date('31-03-2099','DD-MM-YYYY'),1,1,'2015-07-15');
Insert into EGPT_MSTR_BNDRY_CATEGORY (id,id_bndry,id_category,modified_date,from_date,to_date,created_by,modified_by,created_date) values (nextval('seq_egpt_mstr_bndry_category'),(select id from eg_boundary where name = 'Zone-4' and boundarytype = (select id from eg_boundary_type where name = 'Zone')),3,'2015-07-15',to_date('01-04-04','DD-MM-YY'),to_date('31-03-2099','DD-MM-YYYY'),1,1,'2015-07-15');
Insert into EGPT_MSTR_BNDRY_CATEGORY (id,id_bndry,id_category,modified_date,from_date,to_date,created_by,modified_by,created_date) values (nextval('seq_egpt_mstr_bndry_category'),(select id from eg_boundary where name = 'Zone-4' and boundarytype = (select id from eg_boundary_type where name = 'Zone')),4,'2015-07-15',to_date('01-04-04','DD-MM-YY'),to_date('31-03-2099','DD-MM-YYYY'),1,1,'2015-07-15');
Insert into EGPT_MSTR_BNDRY_CATEGORY (id,id_bndry,id_category,modified_date,from_date,to_date,created_by,modified_by,created_date) values (nextval('seq_egpt_mstr_bndry_category'),(select id from eg_boundary where name = 'Zone-4' and boundarytype = (select id from eg_boundary_type where name = 'Zone')),5,'2015-07-15',to_date('01-04-04','DD-MM-YY'),to_date('31-03-2099','DD-MM-YYYY'),1,1,'2015-07-15');
Insert into EGPT_MSTR_BNDRY_CATEGORY (id,id_bndry,id_category,modified_date,from_date,to_date,created_by,modified_by,created_date) values (nextval('seq_egpt_mstr_bndry_category'),(select id from eg_boundary where name = 'Zone-4' and boundarytype = (select id from eg_boundary_type where name = 'Zone')),6,'2015-07-15',to_date('01-04-04','DD-MM-YY'),to_date('31-03-2099','DD-MM-YYYY'),1,1,'2015-07-15');
------------------END---------------------

-----------------START-------------------
Insert into EGPT_FLOOR_TYPE (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (nextval('seq_egpt_floor_type'),0,'Bhetancherlla','1',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
Insert into EGPT_FLOOR_TYPE (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (nextval('seq_egpt_floor_type'),0,'Cement','2',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
Insert into EGPT_FLOOR_TYPE (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (nextval('seq_egpt_floor_type'),0,'Ceramic Tiles','3',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
Insert into EGPT_FLOOR_TYPE (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (nextval('seq_egpt_floor_type'),0,'Cudapha Slab','4',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
Insert into EGPT_FLOOR_TYPE (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (nextval('seq_egpt_floor_type'),0,'Marble','5',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
Insert into EGPT_FLOOR_TYPE (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (nextval('seq_egpt_floor_type'),0,'Mosaic','6',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
------------------END---------------------

-----------------START-------------------
Insert into EGPT_WALL_TYPE (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (nextval('seq_EGPT_WALL_TYPE'),0,'Boom Walls','1',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
Insert into EGPT_WALL_TYPE (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (nextval('seq_EGPT_WALL_TYPE'),0,'Bricks With Cement','2',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
Insert into EGPT_WALL_TYPE (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (nextval('seq_EGPT_WALL_TYPE'),0,'Bricks With Mud','3',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
Insert into EGPT_WALL_TYPE (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (nextval('seq_EGPT_WALL_TYPE'),0,'C.C.Bricks','4',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
Insert into EGPT_WALL_TYPE (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (nextval('seq_EGPT_WALL_TYPE'),0,'Mud','5',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
Insert into EGPT_WALL_TYPE (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (nextval('seq_EGPT_WALL_TYPE'),0,'Bcw','6',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
------------------END---------------------

-----------------START-------------------
Insert into EGPT_WOOD_TYPE (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (nextval('seq_EGPT_WOOD_TYPE'),0,'Country Wood','1',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
Insert into EGPT_WOOD_TYPE (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (nextval('seq_EGPT_WOOD_TYPE'),0,'RoseWood','2',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
Insert into EGPT_WOOD_TYPE (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (nextval('seq_EGPT_WOOD_TYPE'),0,'Teak Wood','3',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
Insert into EGPT_WOOD_TYPE (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (nextval('seq_EGPT_WOOD_TYPE'),0,'Od','4',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
Insert into EGPT_WOOD_TYPE (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (nextval('seq_EGPT_WOOD_TYPE'),0,'Odb','6',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
Insert into EGPT_WOOD_TYPE (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (nextval('seq_EGPT_WOOD_TYPE'),0,'Of','7',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
------------------END---------------------

-----------------START-------------------
Insert into EGPT_PROPERTY_TYPE_MASTER (id,property_type,modified_date,type_factor,property_type_local,code,created_by,modified_by,created_date,orderno) values (nextval('seq_egpt_property_type_master'),'Vacant Land','2015-07-15',1,null,'VAC_LAND',1,1,to_timestamp('2015-07-15 19:10:28.708865','null'),1);
Insert into EGPT_PROPERTY_TYPE_MASTER (id,property_type,modified_date,type_factor,property_type_local,code,created_by,modified_by,created_date,orderno) values (nextval('seq_egpt_property_type_master'),'Private','2015-07-15',1,null,'PRIVATE',1,1,to_timestamp('2015-07-15 19:10:28.708865','null'),2);
Insert into EGPT_PROPERTY_TYPE_MASTER (id,property_type,modified_date,type_factor,property_type_local,code,created_by,modified_by,created_date,orderno) values (nextval('seq_egpt_property_type_master'),'Central Government 33.5%','2015-07-15',1,null,'CENTRAL_GOVT_33.5',1,1,to_timestamp('2015-07-15 19:10:28.708865','null'),4);
Insert into EGPT_PROPERTY_TYPE_MASTER (id,property_type,modified_date,type_factor,property_type_local,code,created_by,modified_by,created_date,orderno) values (nextval('seq_egpt_property_type_master'),'Central Government 50%','2015-07-15',1,null,'CENTRAL_GOVT_50',1,1,to_timestamp('2015-07-15 19:10:28.708865','null'),5);
Insert into EGPT_PROPERTY_TYPE_MASTER (id,property_type,modified_date,type_factor,property_type_local,code,created_by,modified_by,created_date,orderno) values (nextval('seq_egpt_property_type_master'),'Central Government 75%','2015-07-15',1,null,'CENTRAL_GOVT_75',1,1,to_timestamp('2015-07-15 19:10:28.708865','null'),6);
Insert into EGPT_PROPERTY_TYPE_MASTER (id,property_type,modified_date,type_factor,property_type_local,code,created_by,modified_by,created_date,orderno) values (nextval('seq_egpt_property_type_master'),'State Government','2015-07-15',1,null,'STATE_GOVT',1,1,to_timestamp('2015-07-15 19:10:28.708865','null'),3);
------------------END---------------------

-----------------START-------------------
Insert into EGPT_ROOF_TYPE (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (nextval('seq_EGPT_ROOF_TYPE'),0,'A.C.Sheet','1',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
Insert into EGPT_ROOF_TYPE (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (2,0,'Country Tiled','2',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
Insert into EGPT_ROOF_TYPE (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (3,0,'G.I.Sheet','3',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
Insert into EGPT_ROOF_TYPE (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (4,0,'Madras Terraced','4',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
Insert into EGPT_ROOF_TYPE (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (5,0,'Mangalore Tiled','5',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
Insert into EGPT_ROOF_TYPE (id,version,name,code,createddate,lastmodifieddate,createdby,lastmodifiedby) values (6,0,'Ordinary RCC','6',CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, 1, 1);
------------------END---------------------

-----------------START-------------------
Insert into EGPT_OCCUPATION_TYPE_MASTER (id,occupation,modified_date,occupany_factor,occupation_local,code,from_date,to_date,id_usg_mstr,created_by,modified_by,created_date) values (nextval('seq_egpt_occupation_type_master'),'Owner','2015-07-15',2.0,null,'OWNER',to_timestamp('0001-04-01 00:00:00.0','null'),to_timestamp('0001-03-31 00:00:00.0','null'),null,1,1,'2015-07-15');
Insert into EGPT_OCCUPATION_TYPE_MASTER (id,occupation,modified_date,occupany_factor,occupation_local,code,from_date,to_date,id_usg_mstr,created_by,modified_by,created_date) values (nextval('seq_egpt_occupation_type_master'),'Tenant','0001-09-25',3.0,null,'TENANT',to_timestamp('0001-09-14 00:00:00.0','null'),to_timestamp('0001-03-31 00:00:00.0','null'),null,1,1,'0001-09-25');
------------------END---------------------

-----------------START-------------------
INSERT INTO egdm_depreciationmaster (ID, YEAR, DEPRECIATION_PCT, MODULE, lastmodifieddate, INSTALLMENT, IS_HISTORY, USERID, depreciation_name, depreciation_type, from_date, to_date) VALUES (NEXTVAL('SEQ_EGDM_DEPRECIATIONMASTER'),25,10, (select ID from EG_MODULE where name = 'Property Tax'),current_timestamp,(SELECT id FROM eg_installment_master WHERE start_date <= current_timestamp AND end_date  >= current_timestamp AND id_module = (SELECT id FROM eg_module WHERE name='Property Tax')),'N',1, '0-25', null, to_date('01/04/2004 00:00:00','dd/MM/yyyy HH24:MI:SS'), to_date('31/03/2099 23:59:59','dd/MM/yyyy HH24:MI:SS'));
INSERT INTO egdm_depreciationmaster (ID, YEAR, DEPRECIATION_PCT, MODULE, lastmodifieddate, INSTALLMENT, IS_HISTORY, USERID, depreciation_name, depreciation_type, from_date, to_date) VALUES (NEXTVAL('SEQ_EGDM_DEPRECIATIONMASTER'),25,20, (select ID from EG_MODULE where name = 'Property Tax'),current_timestamp,(SELECT id FROM eg_installment_master WHERE start_date <= current_timestamp AND end_date  >= current_timestamp AND id_module = (SELECT id FROM eg_module WHERE name='Property Tax')),'N',1, '26-40', null, to_date('01/04/2004 00:00:00','dd/MM/yyyy HH24:MI:SS'), to_date('31/03/2099 23:59:59','dd/MM/yyyy HH24:MI:SS'));
INSERT INTO egdm_depreciationmaster (ID, YEAR, DEPRECIATION_PCT, MODULE, lastmodifieddate, INSTALLMENT, IS_HISTORY, USERID, depreciation_name, depreciation_type, from_date, to_date) VALUES (NEXTVAL('SEQ_EGDM_DEPRECIATIONMASTER'),25,30, (select ID from EG_MODULE where name = 'Property Tax'),current_timestamp,(SELECT id FROM eg_installment_master WHERE start_date <= current_timestamp AND end_date  >= current_timestamp AND id_module = (SELECT id FROM eg_module WHERE name='Property Tax')),'N',1, 'Above 40', null, to_date('01/04/2004 00:00:00','dd/MM/yyyy HH24:MI:SS'), to_date('31/03/2099 23:59:59','dd/MM/yyyy HH24:MI:SS'));
------------------END---------------------

-----------------START-------------------
INSERT INTO eg_userrole  (userid,roleid) VALUES ((SELECT id FROM eg_user WHERE username='chandrashekar'),(SELECT id FROM eg_role where name ='Property Approver'));
INSERT INTO eg_userrole  (userid,roleid) VALUES ((SELECT id FROM eg_user WHERE username='gireesh'),(SELECT id FROM eg_role where name ='Property Verifier'));
INSERT INTO eg_userrole  (userid,roleid) VALUES ((SELECT id FROM eg_user WHERE username='ramakrishna'),(SELECT id FROM eg_role where name ='Property Verifier'));
INSERT INTO eg_userrole  (userid,roleid) VALUES ((SELECT id FROM eg_user WHERE username='satyam'),(SELECT id FROM eg_role where name ='Property Verifier'));
------------------END---------------------

-----------------START-------------------
DELETE FROM eg_userrole  where roleid in(SELECT id FROM eg_role WHERE name='CSC Operator') and userid in(SELECT id FROM eg_user WHERE name='satyam');
------------------END---------------------

-----------------START-------------------
INSERT INTO eg_wf_types (id,module,type,link,createdby,createddate,lastmodifiedby,lastmodifieddate,renderyn,groupyn,typefqn,displayname) VALUES (nextval('seq_eg_wf_types'),(SELECT id FROM eg_module WHERE name='Property Tax'),'PropertyImpl',':ID',1,now(),1,now(), 'Y', 'N','org.egov.ptis.domain.entity.property.PropertyImpl', 'Property' );

insert into eg_wf_types values(nextval('seq_eg_wf_types'),(SELECT id FROM eg_module WHERE name='Property Tax'),'PropertyMutation','/ptis/property/transfer/view.action?mutationId=:ID',1,now(),1,now(),'Y','N','org.egov.ptis.domain.entity.property.PropertyMutation','Property Owner Transfer',0);
------------------END---------------------
