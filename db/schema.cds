namespace cdaydemo;

entity Project {
  key ID: UUID;
  ProjectID: String(10) @assert.unique @mandatory;
  ProjectName: String(100);
  ProjectStage: String(20);
  OrgID: String(10);
  ProjectCategory: String(20);
  Currency: String(3);
  StartDate: Date;
  EndDate: Date;
  ProjManagerExtId: String(10);
  ProjManagerCompCode: String(4);
  Customer: String(10);
  CostCenter: String(10);
  ProfitCenter: String(10);
  ProjAccountantExtId: String(10);
  ProjAccountantCompCode: String(4);
  ProjControllerExtId: String(10);
  ProjControllerCompCode: String(4);
  ProjPartnerExtId: String(10);
  ProjPartnerCompCode: String(4);
  ProjectDesc: String(500);
  Confidential: Boolean;
  UseProjectBilling: Boolean;
  RestrictTimePosting: Boolean;
  CreatedOn: DateTime;
  ChangedOn: DateTime;
}

