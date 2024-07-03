/* checksum : dc6bc06ef9d494f7046a49448cca19fb */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service CommercialProject_CreateUpdate {};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.content.version : '1'
@sap.label : 'Work Package Functions'
entity CommercialProject_CreateUpdate.WorkPackageFunctionSet {
  @sap.unicode : 'false'
  @sap.label : 'Project ID'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  key ProjectID : String(40) not null;
  @sap.unicode : 'false'
  @sap.label : 'Work Package ID'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  key WorkPackageID : String(50) not null;
  @sap.unicode : 'false'
  @sap.label : 'Work Package Name'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  key WorkPackageName : String(60) not null;
  @sap.unicode : 'false'
  @sap.label : 'Work Package Function ID'
  @sap.updatable : 'false'
  key WorkPackageFunctionId : String(4) not null;
  @sap.unicode : 'false'
  @sap.label : 'Work Package Function Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  WorkPackageFunctionName : String(60) not null;
  @sap.unicode : 'false'
  @sap.label : 'Work Package Function Is Blocked'
  WorkPackageFunctionIsBlocked : String(1);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.pageable : 'false'
@sap.content.version : '1'
@sap.label : 'Project'
entity CommercialProject_CreateUpdate.ProjectSet {
  @sap.unicode : 'false'
  @sap.label : 'Project ID'
  @sap.updatable : 'false'
  key ProjectID : String(40) not null;
  @sap.unicode : 'false'
  @sap.label : 'Project Name'
  ProjectName : String(40);
  @sap.unicode : 'false'
  @sap.label : 'Stage ID'
  ProjectStage : String(4);
  @sap.unicode : 'false'
  @sap.label : 'Service Organization ID'
  @sap.updatable : 'false'
  OrgID : String(5);
  @sap.unicode : 'false'
  @sap.label : 'Project Type'
  @sap.updatable : 'false'
  ProjectCategory : String(1);
  @sap.unicode : 'false'
  @sap.label : 'Currency'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.unicode : 'false'
  @sap.label : 'Start Date'
  StartDate : Timestamp;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.unicode : 'false'
  @sap.label : 'End Date'
  EndDate : Timestamp;
  @sap.unicode : 'false'
  @sap.label : 'Project Manager ID'
  ProjManagerExtId : String(38);
  @sap.unicode : 'false'
  @sap.label : 'Project Manager''s Company Code'
  ProjManagerCompCode : String(4) not null;
  @sap.unicode : 'false'
  @sap.label : 'Customer ID'
  @sap.updatable : 'false'
  Customer : String(10);
  @sap.unicode : 'false'
  @sap.label : 'Project Cost Center ID'
  @sap.updatable : 'false'
  CostCenter : String(20);
  @sap.unicode : 'false'
  @sap.label : 'Profit Center ID'
  ProfitCenter : String(10);
  @sap.unicode : 'false'
  @sap.label : 'Project Accountant ID'
  ProjAccountantExtId : String(38);
  @sap.unicode : 'false'
  @sap.label : 'Project Accountant''s Company Code'
  ProjAccountantCompCode : String(4) not null;
  @sap.unicode : 'false'
  @sap.label : 'Project Controller ID'
  ProjControllerExtId : String(38);
  @sap.unicode : 'false'
  @sap.label : 'Project Controller''s Company Code'
  ProjControllerCompCode : String(4) not null;
  @sap.unicode : 'false'
  @sap.label : 'Project Partner ID'
  ProjPartnerExtId : String(38);
  @sap.unicode : 'false'
  @sap.label : 'Project Partner''s Company Code'
  ProjPartnerCompCode : String(4) not null;
  @sap.unicode : 'false'
  @sap.label : 'Project Desc.'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ProjectDesc : LargeString;
  @sap.unicode : 'false'
  @sap.label : 'Confidential'
  Confidential : String(1);
  @sap.unicode : 'false'
  @sap.label : 'Use Project Billiing'
  @sap.sortable : 'false'
  UseProjectBilling : String(1);
  @sap.unicode : 'false'
  @sap.label : 'Restrict time post'
  @sap.sortable : 'false'
  RestrictTimePosting : String(1);
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.unicode : 'false'
  @sap.label : 'Created On'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedOn : Timestamp;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.unicode : 'false'
  @sap.label : 'Changed On'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ProjectRoleSet : Association to many CommercialProject_CreateUpdate.ProjectRoleSet on ProjectRoleSet.ProjectID = ProjectID;
  @cds.ambiguous : 'missing on condition?'
  WorkPackageSet : Association to many CommercialProject_CreateUpdate.WorkPackageSet on WorkPackageSet.ProjectID = ProjectID;
};

@cds.external : true
@cds.persistence.skip : true
@sap.pageable : 'false'
@sap.content.version : '1'
@sap.label : 'Work Packages'
entity CommercialProject_CreateUpdate.WorkPackageSet {
  @sap.unicode : 'false'
  @sap.label : 'Project ID'
  @sap.updatable : 'false'
  key ProjectID : String(40) not null;
  @sap.unicode : 'false'
  @sap.label : 'Work Package ID'
  @sap.updatable : 'false'
  key WorkPackageID : String(50) not null;
  @sap.unicode : 'false'
  @sap.label : 'Work Package Name'
  key WorkPackageName : String(60) not null;
  @sap.unicode : 'false'
  @sap.label : 'Work Package Desc.'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Description : LargeString;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.unicode : 'false'
  @sap.label : 'Start Date'
  WPStartDate : Timestamp;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.unicode : 'false'
  @sap.label : 'End Date'
  WPEndDate : Timestamp;
  @sap.unicode : 'false'
  @sap.label : 'Work Package Type'
  @sap.updatable : 'false'
  WorkPackageType : String(1) not null;
  @sap.unicode : 'false'
  @sap.label : 'Total Quantity'
  UnitQuantity : Decimal(15, 3) not null;
  @sap.unicode : 'false'
  @sap.label : 'Resource ID'
  @sap.updatable : 'false'
  UnitId : String(40) not null;
  @odata.Type : 'Edm.DateTime'
  @odata.Precision : 7
  @sap.unicode : 'false'
  @sap.label : 'Created On'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CreatedOn : Timestamp;
  @odata.Type : 'Edm.DateTimeOffset'
  @odata.Precision : 7
  @sap.unicode : 'false'
  @sap.label : 'Changed On'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  to_ResourceDemand : Association to many CommercialProject_CreateUpdate.A_EngmntProjRsceDmnd on to_ResourceDemand.WorkPackage = WorkPackageID;
  @cds.ambiguous : 'missing on condition?'
  to_Project : Association to CommercialProject_CreateUpdate.ProjectSet on to_Project.ProjectID = ProjectID;
  @cds.ambiguous : 'missing on condition?'
  WorkItemSet : Association to many CommercialProject_CreateUpdate.WorkItemSet on WorkItemSet.ProjectID = ProjectID and WorkItemSet.WorkPackageName = WorkPackageName and WorkItemSet.WorkPackageID = WorkPackageID;
  @cds.ambiguous : 'missing on condition?'
  DemandSet : Association to many CommercialProject_CreateUpdate.DemandSet on DemandSet.ProjectID = ProjectID and DemandSet.WorkPackageName = WorkPackageName and DemandSet.WorkPackageID = WorkPackageID;
  @cds.ambiguous : 'missing on condition?'
  WorkPackageFunctionSet : Association to many CommercialProject_CreateUpdate.WorkPackageFunctionSet on WorkPackageFunctionSet.WorkPackageName = WorkPackageName and WorkPackageFunctionSet.ProjectID = ProjectID and WorkPackageFunctionSet.WorkPackageID = WorkPackageID;
};

@cds.external : true
@cds.persistence.skip : true
@sap.updatable : 'false'
@sap.pageable : 'false'
@sap.content.version : '1'
@sap.label : 'Work Items'
entity CommercialProject_CreateUpdate.WorkItemSet {
  @sap.unicode : 'false'
  @sap.label : 'Project ID'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  key ProjectID : String(40) not null;
  @sap.unicode : 'false'
  @sap.label : 'Work Package ID'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  key WorkPackageID : String(50) not null;
  @sap.unicode : 'false'
  @sap.label : 'Work Package Name'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  key WorkPackageName : String(60) not null;
  @sap.unicode : 'false'
  @sap.label : 'Work Item ID'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  key Workitem : String(10) not null;
  @sap.unicode : 'false'
  @sap.label : 'Work Item Desc.'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  Workitemname : String(40);
};

@cds.external : true
@cds.persistence.skip : true
@sap.pageable : 'false'
@sap.content.version : '1'
@sap.label : 'Demands'
entity CommercialProject_CreateUpdate.DemandSet {
  @sap.unicode : 'false'
  @sap.label : 'Project ID'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ProjectID : String(40) not null;
  @sap.unicode : 'false'
  @sap.label : 'Work Package ID'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key WorkPackageID : String(50) not null;
  @sap.unicode : 'false'
  @sap.label : 'Work Package Name'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key WorkPackageName : String(60) not null;
  @sap.unicode : 'false'
  @sap.label : 'Resource Type ID'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ResType : String(4) not null;
  @sap.unicode : 'false'
  @sap.label : 'Resource ID'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ResourceId : String(40) not null;
  @sap.unicode : 'false'
  @sap.label : 'Work Item ID'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key Workitem : String(10) not null;
  @sap.unicode : 'false'
  @sap.label : 'Delivery Org. ID'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key DelvryServOrg : String(5) not null;
  @sap.unicode : 'false'
  @sap.label : 'Billing Control Category'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  BillingControlCategory : String(8);
  @sap.unicode : 'false'
  @sap.label : 'Unit of Measure'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  @sap.semantics : 'unit-of-measure'
  Uom : String(3);
  @sap.unicode : 'false'
  @sap.label : 'Skills (Comma Separated)'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Skills : LargeString;
  @sap.unicode : 'false'
  @sap.label : 'Expense (Cost)'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ExpenseCost : Decimal(18, 2);
  @sap.unicode : 'false'
  @sap.label : 'Expense (Revenue)'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ExpenseRevenue : Decimal(18, 2);
  @sap.unicode : 'false'
  @sap.unit : 'Uom'
  @sap.label : 'Total Quantity'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Effort : Decimal(18, 3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.pageable : 'false'
@sap.content.version : '1'
@sap.label : 'Project Roles'
entity CommercialProject_CreateUpdate.ProjectRoleSet {
  @sap.unicode : 'false'
  @sap.label : 'Project ID'
  @sap.updatable : 'false'
  key ProjectID : String(40) not null;
  @sap.unicode : 'false'
  @sap.label : 'Project Role ID'
  key ProjectRoleID : String(15) not null;
  @sap.unicode : 'false'
  @sap.label : 'Project Role Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  ProjectRoleName : String(40);
  @sap.unicode : 'false'
  @sap.label : 'Business Partner ID'
  BusinessPartnerID : String(10) not null;
  @sap.unicode : 'false'
  @sap.label : 'Business Partner Name'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  BusinessPartnerName : String(80);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Sales Order Header'
entity CommercialProject_CreateUpdate.A_CustProjSlsOrd {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Project ID'
  @sap.quickinfo : 'Commercial Project ID'
  key CustomerProject : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SalesOrder : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sold-to Party'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SoldToParty : String(10);
  @sap.unit : 'TransactionCurrency'
  @sap.label : 'Net Value'
  @sap.quickinfo : 'Net Value of the Sales Document in Document Currency'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TotalNetAmount : Decimal(16, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document Currency'
  @sap.quickinfo : 'SD Document Currency'
  @sap.semantics : 'currency-code'
  TransactionCurrency : String(5);
  @sap.label : 'Customer Reference'
  PurchaseOrderByCustomer : String(35);
  @sap.display.format : 'Date'
  @sap.label : 'Customer Reference Date'
  CustomerPurchaseOrderDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Office'
  SalesOffice : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Group'
  SalesGroup : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Terms of Payment'
  @sap.quickinfo : 'Key for Terms of Payment'
  CustomerPaymentTerms : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Payment Method'
  PaymentMethod : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Account Assignment Group for Customer'
  CustomerAccountAssignmentGroup : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Block'
  @sap.quickinfo : 'Billing Block in SD Document'
  HeaderBillingBlockReason : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Organization'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SalesOrganization : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Distribution Channel'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  DistributionChannel : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Division'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  OrganizationDivision : String(2);
  @cds.ambiguous : 'missing on condition?'
  to_CustProjSlsOrdItem : Association to many CommercialProject_CreateUpdate.A_CustProjSlsOrdItem {  };
  @cds.ambiguous : 'missing on condition?'
  to_CustProjSlsOrdPartner : Association to many CommercialProject_CreateUpdate.A_CustProjSlsOrdPartner {  };
  @cds.ambiguous : 'missing on condition?'
  to_CustProjSlsOrdText : Association to many CommercialProject_CreateUpdate.A_CustProjSlsOrdText {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Sales Order Item'
entity CommercialProject_CreateUpdate.A_CustProjSlsOrdItem {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Project ID'
  @sap.quickinfo : 'Commercial Project ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key CustomerProject : String(40) not null;
  @sap.display.format : 'NonNegative'
  @sap.text : 'SalesOrderItemText'
  @sap.label : 'Item'
  @sap.quickinfo : 'Sales Order Item'
  key SalesOrderItem : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SalesOrder : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Item Category'
  @sap.quickinfo : 'Sales Document Item Category'
  SalesOrderItemCategory : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  Material : String(40);
  @sap.label : 'Item Description'
  @sap.quickinfo : 'Short Text for Sales Order Item'
  SalesOrderItemText : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Profit Center'
  ProfitCenter : String(10);
  @sap.unit : 'TransactionCurrency'
  @sap.label : 'Net Amount Cap'
  CappedNetAmount : Decimal(16, 3);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Cap Notif. Threshold'
  @sap.quickinfo : 'Notification Threshold (in Pct) for Exceeded Net Amount Cap'
  CappedNetAmtAlertThldInPct : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Material'
  @sap.quickinfo : 'Material Number Used by Customer'
  MaterialByCustomer : String(35);
  @sap.unit : 'TransactionCurrency'
  @sap.label : 'Net Value'
  @sap.quickinfo : 'Net Value of the Document Item in Document Currency'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  NetAmount : Decimal(16, 3);
  @sap.unit : 'TransactionCurrency'
  @sap.label : 'Expected Net Amount'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  ExpectedNetAmount : Decimal(16, 3);
  @sap.unit : 'TransactionCurrency'
  @sap.label : 'SSP'
  @sap.quickinfo : 'IFRS 15: Standalone Selling Price'
  TotalStandAloneSellingPrice : Decimal(16, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document Currency'
  @sap.quickinfo : 'SD Document Currency'
  @sap.semantics : 'currency-code'
  TransactionCurrency : String(5);
  @sap.display.format : 'NonNegative'
  @sap.label : 'WBS Element'
  @sap.quickinfo : 'Work Breakdown Structure Element (WBS Element)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WBSElement : String(24);
  @sap.label : 'Customer Reference'
  PurchaseOrderByCustomer : String(35);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Purchase Order Item'
  @sap.quickinfo : 'Item Number of the Underlying Purchase Order'
  UnderlyingPurchaseOrderItem : String(6);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Terms of Payment'
  @sap.quickinfo : 'Key for Terms of Payment'
  CustomerPaymentTerms : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Reason for Rejection'
  @sap.quickinfo : 'Reason for Rejection of Sales Documents'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SalesDocumentRjcnReason : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Rejection Status'
  @sap.quickinfo : 'Rejection Status (Item)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SDDocumentRejectionStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Overall Status'
  @sap.quickinfo : 'Overall Processing Status (Item)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SDProcessStatus : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Block'
  @sap.quickinfo : 'Billing Block for Item'
  ItemBillingBlockReason : String(2);
  @cds.ambiguous : 'missing on condition?'
  to_CustProjSlsOrdItemPartner : Association to many CommercialProject_CreateUpdate.A_CustProjSlsOrdItemPartner {  };
  @cds.ambiguous : 'missing on condition?'
  to_CustProjSlsOrdItemText : Association to many CommercialProject_CreateUpdate.A_CustProjSlsOrdItemText {  };
  @cds.ambiguous : 'missing on condition?'
  to_CustProjSlsOrdItemWorkPckg : Association to many CommercialProject_CreateUpdate.A_CustProjSlsOrdItemWorkPckg {  };
  @cds.ambiguous : 'missing on condition?'
  to_CustProjSlsOrdItmPrcgElement : Association to many CommercialProject_CreateUpdate.A_CustProjSlsOrdItmPrcgElement {  };
  @cds.ambiguous : 'missing on condition?'
  to_CustProjSOIBillgPlnItm : Association to many CommercialProject_CreateUpdate.A_CustProjSlsOrdItmBillgPlnItm {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Sales Order Item Partner'
entity CommercialProject_CreateUpdate.A_CustProjSlsOrdItemPartner {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Project ID'
  @sap.quickinfo : 'Commercial Project ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key CustomerProject : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partner Function'
  key PartnerFunction : String(2) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Sales Order Item'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrderItem : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SalesOrder : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  BusinessPartner : String(10);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Sales Order Item Text'
entity CommercialProject_CreateUpdate.A_CustProjSlsOrdItemText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Project ID'
  @sap.quickinfo : 'Commercial Project ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key CustomerProject : String(40) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Sales Order Item'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrderItem : String(6) not null;
  @sap.label : 'Language Key'
  key Language : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Text ID'
  key LongTextID : String(4) not null;
  @sap.label : 'String'
  @sap.heading : ''
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  LongText : LargeString;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SalesOrder : String(10);
};

@cds.external : true
@cds.persistence.skip : true
@sap.updatable : 'false'
@sap.content.version : '1'
@sap.label : 'Sales Order Item Work Package'
entity CommercialProject_CreateUpdate.A_CustProjSlsOrdItemWorkPckg {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Project ID'
  @sap.quickinfo : 'Commercial Project ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key CustomerProject : String(40) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Sales Order Item'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrderItem : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plan Item'
  key WorkPackage : String(50) not null;
  @sap.label : 'Plan Item Desc.'
  @sap.quickinfo : 'Plan Item Description'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WorkPackageName : String(60);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SalesOrder : String(10);
  @sap.display.format : 'Date'
  @sap.label : 'Start Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WorkPackageStartDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'End Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WorkPackageEndDate : Date;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Sales Order Item Billing Plan'
entity CommercialProject_CreateUpdate.A_CustProjSlsOrdItmBillgPlnItm {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Project ID'
  @sap.quickinfo : 'Commercial Project ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key CustomerProject : String(40) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Sales Order Item'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrderItem : String(6) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Item for billing plan/invoice plan/payment cards'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key BillingPlanItem : String(6) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SalesOrder : String(10);
  @sap.display.format : 'Date'
  @sap.label : 'Billing Date'
  BillingPlanBillingDate : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Status'
  @sap.quickinfo : 'Billing Status for Billing/Invoicing Plan Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  BillingPlanRelatedBillgStatus : String(1);
  @sap.unit : 'TransactionCurrency'
  @sap.label : 'Billing Value'
  @sap.quickinfo : 'Value to be billed/calc. on date in billing/invoice plan'
  BillingPlanAmount : Decimal(16, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  TransactionCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Usage'
  @sap.quickinfo : 'Billing Plan Item Usage'
  BillingPlanItemUsage : String(2);
  @sap.label : 'Description'
  @sap.quickinfo : 'Billing Plan Item Description'
  BillingPlanItemDescription : String(255);
  @sap.display.format : 'Date'
  @sap.label : 'Settlement Start Date'
  @sap.quickinfo : 'Settlement Start Date of Billing/Invoicing Date'
  BillingPlanServiceStartDate : Date;
  @sap.display.format : 'Date'
  @sap.label : 'Settlement End Date'
  @sap.quickinfo : 'Settlement End Date of Billing/Invoicing Date'
  BillingPlanServiceEndDate : Date;
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Sales Order Item Pricing Element'
entity CommercialProject_CreateUpdate.A_CustProjSlsOrdItmPrcgElement {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Project ID'
  @sap.quickinfo : 'Commercial Project ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key CustomerProject : String(40) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Item'
  @sap.quickinfo : 'Sales Order Item'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key SalesOrderItem : String(6) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Step Number'
  key PricingProcedureStep : String(3) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'Condition Counter'
  key PricingProcedureCounter : String(3) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  SalesOrder : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Type'
  ConditionType : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'Cndn Pricing Date'
  @sap.quickinfo : 'Condition Pricing Date'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PriceConditionDeterminationDte : Date;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Calculation Type'
  @sap.quickinfo : 'Calculation Type for Condition'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionCalculationType : String(3);
  @sap.label : 'Condition Basis'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionBaseValue : Decimal(24, 9);
  @sap.label : 'Amount'
  @sap.quickinfo : 'Condition Amount or Percentage'
  ConditionRateValue : Decimal(24, 9);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  ConditionCurrency : String(5);
  @sap.unit : 'ConditionQuantitySAPUnit'
  @sap.label : 'Pricing Unit'
  @sap.quickinfo : 'Condition Pricing Unit'
  ConditionQuantity : Decimal(5, 0);
  @sap.label : 'Condition Unit'
  @sap.quickinfo : 'Condition Unit in the Document'
  @sap.semantics : 'unit-of-measure'
  ConditionQuantityUnit : String(3);
  @sap.label : 'SAP Condition Qty'
  @sap.quickinfo : 'SAP Unit Code for Condition Quantity'
  @sap.semantics : 'unit-of-measure'
  ConditionQuantitySAPUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'ISO Condition Qty'
  @sap.quickinfo : 'ISO Unit Code for Condition Quantity'
  ConditionQuantityISOUnit : String(3);
  @sap.label : 'Condition Category'
  @sap.quickinfo : 'Condition Category (Examples: Tax, Freight, Price, Cost)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionCategory : String(1);
  @sap.label : 'Statistical'
  @sap.quickinfo : 'Condition is used for statistics'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionIsForStatistics : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scale Type'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PricingScaleType : String(1);
  @sap.label : 'Accruals'
  @sap.quickinfo : 'Condition is Relevant for Accrual (e.g. Freight)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  IsRelevantForAccrual : Boolean;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Invoice List Cond.'
  @sap.quickinfo : 'Condition for Invoice List'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CndnIsRelevantForInvoiceList : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Origin'
  @sap.quickinfo : 'Origin of the Condition'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionOrigin : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Group Condition'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  IsGroupCondition : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Record No.'
  @sap.quickinfo : 'Number of Condition Record'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionRecord : String(10);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Sequent.No. of Cond.'
  @sap.quickinfo : 'Sequential Number of the Condition'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionSequentialNumber : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Tax Code'
  @sap.quickinfo : 'Tax on Sales/Purchases Code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  TaxCode : String(2);
  @sap.display.format : 'UpperCase'
  @sap.label : 'W/Tax Code'
  @sap.quickinfo : 'Withholding Tax Code'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  WithholdingTaxCode : String(2);
  @sap.unit : 'TransactionCurrency'
  @sap.label : 'Cond.Rounding Diff.'
  @sap.quickinfo : 'Rounding-Off Difference of the Condition'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CndnRoundingOffDiffAmount : Decimal(6, 3);
  @sap.unit : 'TransactionCurrency'
  @sap.label : 'Condition Value'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionAmount : Decimal(16, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Document Currency'
  @sap.quickinfo : 'SD Document Currency'
  @sap.semantics : 'currency-code'
  TransactionCurrency : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Control'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionControl : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Inactive Condition'
  @sap.quickinfo : 'Condition is Inactive'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionInactiveReason : String(1);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Condition Class'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionClass : String(1);
  @sap.display.format : 'NonNegative'
  @sap.label : 'Counter'
  @sap.quickinfo : 'Condition Counter (Header)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PrcgProcedureCounterForHeader : String(3);
  @sap.label : 'Condition Factor'
  @sap.quickinfo : 'Factor for Condition Base Value'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  FactorForConditionBasisValue : Double;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Structure Condition'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  StructureCondition : String(1);
  @sap.label : 'Condition Factor'
  @sap.quickinfo : 'Factor for Condition Basis (Period)'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PeriodFactorForCndnBasisValue : Double;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scale Basis'
  @sap.quickinfo : 'Scale Basis Indicator'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  PricingScaleBasis : String(3);
  @sap.label : 'Scale Base Val.'
  @sap.quickinfo : 'Scale Base Value'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionScaleBasisValue : Decimal(24, 9);
  @sap.label : 'Scale Unit of Meas.'
  @sap.quickinfo : 'Condition Scale Unit of Measure'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'unit-of-measure'
  ConditionScaleBasisUnit : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Scale Currency'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'currency-code'
  ConditionScaleBasisCurrency : String(5);
  @sap.label : 'Intercomp.Billing'
  @sap.quickinfo : 'Condition for Intercompany Billing'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  CndnIsRelevantForIntcoBilling : Boolean;
  @sap.label : 'Changed Manually'
  @sap.quickinfo : 'Condition Changed Manually'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionIsManuallyChanged : Boolean;
  @sap.label : 'UsedforVariantConfig'
  @sap.quickinfo : 'Condition Used for Variant Configuration'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ConditionIsForConfiguration : Boolean;
  @sap.label : 'Variant Key'
  @sap.quickinfo : 'Variant Condition Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  VariantCondition : String(26);
};

@cds.external : true
@cds.persistence.skip : true
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Sales Order Header Partner'
entity CommercialProject_CreateUpdate.A_CustProjSlsOrdPartner {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Project ID'
  @sap.quickinfo : 'Commercial Project ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key CustomerProject : String(40) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Partner Function'
  key PartnerFunction : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SalesOrder : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer'
  @sap.quickinfo : 'Customer Number'
  BusinessPartner : String(10);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Sales Order Header Text'
entity CommercialProject_CreateUpdate.A_CustProjSlsOrdText {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Customer Project ID'
  @sap.quickinfo : 'Commercial Project ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  key CustomerProject : String(40) not null;
  @sap.label : 'Language Key'
  key Language : String(2) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Text ID'
  key LongTextID : String(4) not null;
  @sap.label : 'String'
  @sap.heading : ''
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  LongText : LargeString;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales Order'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SalesOrder : String(10);
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Resource Demands'
entity CommercialProject_CreateUpdate.A_EngmntProjRsceDmnd {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Work Package ID'
  key WorkPackage : String(50) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Resource Demand'
  @sap.quickinfo : 'Resource Demand ID'
  key ResourceDemand : String(24) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plan Version ID'
  key Version : String(28) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Engmnt Project ID'
  @sap.quickinfo : 'Engagement Project ID'
  EngagementProject : String(40);
  @sap.label : 'Demand Key'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  ResourceDemandUUID : UUID;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Work Item ID'
  WorkItem : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Billing Category'
  @sap.quickinfo : 'Billing Control Category'
  BillingControlCategory : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery Organization'
  DeliveryOrganization : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Resource Type ID'
  EngagementProjectResourceType : String(4);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Resource ID'
  EngagementProjectResource : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'User ID'
  WorkforcePersonUserID : String(100);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region'
  Country2DigitISOCode : String(2);
  @sap.display.format : 'Date'
  @sap.label : 'Date'
  KeyDate : Date;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Personnel Number'
  PersonWorkAgreement : String(8);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Rsce Demand Status'
  @sap.quickinfo : 'Assignment Status for a Resource Demand'
  ResourceDemandStatus : String(1);
  @sap.label : 'Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  UnitOfMeasure : String(3);
  @sap.unit : 'UnitOfMeasure'
  Quantity : Decimal(15, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plan Currency'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.unit : 'Currency'
  @sap.label : 'Demand Cost Amount'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  DemandCostAmt : Decimal(18, 3);
  @sap.unit : 'Currency'
  @sap.label : 'Demand Revenue Amount'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  DemandRevAmt : Decimal(18, 3);
  @cds.ambiguous : 'missing on condition?'
  to_ResourceDemandDistribution : Association to many CommercialProject_CreateUpdate.A_EngmntProjRsceDmndDistr {  };
  @cds.ambiguous : 'missing on condition?'
  to_ResourceDemandSkills : Association to CommercialProject_CreateUpdate.A_EngmntProjRsceDmndSkill {  };
  @cds.ambiguous : 'missing on condition?'
  to_ResourceSupply : Association to many CommercialProject_CreateUpdate.A_EngmntProjRsceSup {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Resource Demand Distribution'
entity CommercialProject_CreateUpdate.A_EngmntProjRsceDmndDistr {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Work Package ID'
  key WorkPackage : String(50) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Resource Demand'
  @sap.quickinfo : 'Resource Demand ID'
  key ResourceDemand : String(24) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plan Version ID'
  key Version : String(28) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Calendar Month'
  key CalendarMonth : String(3) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Calendar Year'
  key CalendarYear : String(4) not null;
  @sap.label : 'Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  UnitOfMeasure : String(3);
  @sap.unit : 'UnitOfMeasure'
  @sap.label : 'Total Quantity'
  Quantity : Decimal(15, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plan Currency'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.unit : 'Currency'
  @sap.label : 'Demand Cost Amount'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  DemandCostAmt : Decimal(18, 3);
  @sap.unit : 'Currency'
  @sap.label : 'Demand Revenue Amount'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  DemandRevAmt : Decimal(18, 3);
  @cds.ambiguous : 'missing on condition?'
  to_ResourceDemand : Association to CommercialProject_CreateUpdate.A_EngmntProjRsceDmnd {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Resource Demand Skills'
entity CommercialProject_CreateUpdate.A_EngmntProjRsceDmndSkill {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Work Package ID'
  key WorkPackage : String(50) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Resource Demand'
  @sap.quickinfo : 'Resource Demand ID'
  key ResourceDemand : String(24) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plan Version ID'
  key Version : String(28) not null;
  @sap.label : 'Skill Tag Description'
  SkillTagDescription : LargeString;
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Resource Supplies'
entity CommercialProject_CreateUpdate.A_EngmntProjRsceSup {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Work Package ID'
  key WorkPackage : String(50) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Resource Demand'
  @sap.quickinfo : 'Resource Demand ID'
  key ResourceDemand : String(24) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Resource Supply'
  @sap.quickinfo : 'Resource Supply ID'
  key ResourceSupply : String(24) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plan Version ID'
  key Version : String(28) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Engmnt Project ID'
  @sap.quickinfo : 'Engagement Project ID'
  EngagementProject : String(40);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Delivery Organization'
  DeliveryOrganization : String(5);
  @sap.display.format : 'UpperCase'
  @sap.label : 'User ID'
  WorkforcePersonUserID : String(100);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Country/Region'
  Country2DigitISOCode : String(2);
  @sap.display.format : 'Date'
  @sap.label : 'Date'
  KeyDate : Date;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Personnel Number'
  PersonWorkAgreement : String(8);
  @sap.label : 'Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  UnitOfMeasure : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plan Currency'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.unit : 'UnitOfMeasure'
  Quantity : Decimal(15, 3);
  @sap.unit : 'Currency'
  @sap.label : 'Supply Cost Amount'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SupplyCostAmt : Decimal(18, 3);
  @sap.unit : 'Currency'
  @sap.label : 'Supply Revenue Amount'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SupplyRevnAmt : Decimal(18, 3);
  @cds.ambiguous : 'missing on condition?'
  to_ResourceDemand : Association to CommercialProject_CreateUpdate.A_EngmntProjRsceDmnd {  };
  @cds.ambiguous : 'missing on condition?'
  to_ResourceSupplyDistribution : Association to many CommercialProject_CreateUpdate.A_EngmntProjRsceSupDistr {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.label : 'Resource Supply Distribution'
entity CommercialProject_CreateUpdate.A_EngmntProjRsceSupDistr {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Work Package ID'
  key WorkPackage : String(50) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Resource Demand'
  @sap.quickinfo : 'Resource Demand ID'
  key ResourceDemand : String(24) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Resource Supply'
  @sap.quickinfo : 'Resource Supply ID'
  key ResourceSupply : String(24) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plan Version ID'
  key Version : String(28) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Calendar Month'
  key CalendarMonth : String(3) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Calendar Year'
  key CalendarYear : String(4) not null;
  @sap.label : 'Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  UnitOfMeasure : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plan Currency'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.semantics : 'currency-code'
  Currency : String(5);
  @sap.unit : 'UnitOfMeasure'
  @sap.label : 'Total Quantity'
  Quantity : Decimal(15, 3);
  @sap.unit : 'Currency'
  @sap.label : 'Supply Cost Amount'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SupplyCostAmt : Decimal(18, 3);
  @sap.unit : 'Currency'
  @sap.label : 'Supply Revenue Amount'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  SupplyRevnAmt : Decimal(18, 3);
  @cds.ambiguous : 'missing on condition?'
  to_ResourceSupply : Association to CommercialProject_CreateUpdate.A_EngmntProjRsceSup {  };
};

@cds.external : true
type CommercialProject_CreateUpdate.updateSOIMaterialResult {
  @sap.label : 'Indicator'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  Boolean : Boolean not null;
};

@cds.external : true
action CommercialProject_CreateUpdate.updateCustProjSlsOrdItemMaterial(
  CustomerProject : String(40),
  SalesOrderItem : String(6),
  Material : String(40)
) returns CommercialProject_CreateUpdate.updateSOIMaterialResult;

