using { cdaydemoSrv } from '../srv/service.cds';

annotate cdaydemoSrv.Project with @UI.HeaderInfo: { TypeName: 'Project', TypeNamePlural: 'Projects', Title: { Value: ProjectID } };
annotate cdaydemoSrv.Project with {
  ID @UI.Hidden @Common.Text: { $value: ProjectID, ![@UI.TextArrangement]: #TextOnly }
};
annotate cdaydemoSrv.Project with @UI.Identification: [{ Value: ProjectID }];
annotate cdaydemoSrv.Project with @UI.DataPoint #ProjectName: {
  Value: ProjectName,
  Title: 'Project Name',
};
annotate cdaydemoSrv.Project with @UI.DataPoint #ProjectStage: {
  Value: ProjectStage,
  Title: 'Project Stage',
};
annotate cdaydemoSrv.Project with @UI.DataPoint #StartDate: {
  Value: StartDate,
  Title: 'Start Date',
};
annotate cdaydemoSrv.Project with {
  ProjectID @title: 'Project ID';
  ProjectName @title: 'Project Name';
  ProjectStage @title: 'Project Stage';
  OrgID @title: 'Organization ID';
  ProjectCategory @title: 'Project Category';
  Currency @title: 'Currency';
  StartDate @title: 'Start Date';
  EndDate @title: 'End Date';
  ProjManagerExtId @title: 'Project Manager External ID';
  ProjManagerCompCode @title: 'Project Manager Company Code';
  Customer @title: 'Customer';
  CostCenter @title: 'Cost Center';
  ProfitCenter @title: 'Profit Center';
  ProjAccountantExtId @title: 'Project Accountant External ID';
  ProjAccountantCompCode @title: 'Project Accountant Company Code';
  ProjControllerExtId @title: 'Project Controller External ID';
  ProjControllerCompCode @title: 'Project Controller Company Code';
  ProjPartnerExtId @title: 'Project Partner External ID';
  ProjPartnerCompCode @title: 'Project Partner Company Code';
  ProjectDesc @title: 'Project Description';
  Confidential @title: 'Confidential';
  UseProjectBilling @title: 'Use Project Billing';
  RestrictTimePosting @title: 'Restrict Time Posting';
  CreatedOn @title: 'Created On';
  ChangedOn @title: 'Changed On'
};

annotate cdaydemoSrv.Project with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: ProjectID },
    { $Type: 'UI.DataField', Value: ProjectName },
    { $Type: 'UI.DataField', Value: ProjectStage },
    { $Type: 'UI.DataField', Value: OrgID },
    { $Type: 'UI.DataField', Value: ProjectCategory },
    { $Type: 'UI.DataField', Value: Currency },
    { $Type: 'UI.DataField', Value: StartDate },
    { $Type: 'UI.DataField', Value: EndDate },
    { $Type: 'UI.DataField', Value: ProjManagerExtId },
    { $Type: 'UI.DataField', Value: ProjManagerCompCode },
    { $Type: 'UI.DataField', Value: Customer },
    { $Type: 'UI.DataField', Value: CostCenter },
    { $Type: 'UI.DataField', Value: ProfitCenter },
    { $Type: 'UI.DataField', Value: ProjAccountantExtId },
    { $Type: 'UI.DataField', Value: ProjAccountantCompCode },
    { $Type: 'UI.DataField', Value: ProjControllerExtId },
    { $Type: 'UI.DataField', Value: ProjControllerCompCode },
    { $Type: 'UI.DataField', Value: ProjPartnerExtId },
    { $Type: 'UI.DataField', Value: ProjPartnerCompCode },
    { $Type: 'UI.DataField', Value: ProjectDesc },
    { $Type: 'UI.DataField', Value: Confidential },
    { $Type: 'UI.DataField', Value: UseProjectBilling },
    { $Type: 'UI.DataField', Value: RestrictTimePosting },
    { $Type: 'UI.DataField', Value: CreatedOn },
    { $Type: 'UI.DataField', Value: ChangedOn }
];

annotate cdaydemoSrv.Project with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: ProjectID },
    { $Type: 'UI.DataField', Value: ProjectName },
    { $Type: 'UI.DataField', Value: ProjectStage },
    { $Type: 'UI.DataField', Value: OrgID },
    { $Type: 'UI.DataField', Value: ProjectCategory },
    { $Type: 'UI.DataField', Value: Currency },
    { $Type: 'UI.DataField', Value: StartDate },
    { $Type: 'UI.DataField', Value: EndDate },
    { $Type: 'UI.DataField', Value: ProjManagerExtId },
    { $Type: 'UI.DataField', Value: ProjManagerCompCode },
    { $Type: 'UI.DataField', Value: Customer },
    { $Type: 'UI.DataField', Value: CostCenter },
    { $Type: 'UI.DataField', Value: ProfitCenter },
    { $Type: 'UI.DataField', Value: ProjAccountantExtId },
    { $Type: 'UI.DataField', Value: ProjAccountantCompCode },
    { $Type: 'UI.DataField', Value: ProjControllerExtId },
    { $Type: 'UI.DataField', Value: ProjControllerCompCode },
    { $Type: 'UI.DataField', Value: ProjPartnerExtId },
    { $Type: 'UI.DataField', Value: ProjPartnerCompCode },
    { $Type: 'UI.DataField', Value: ProjectDesc },
    { $Type: 'UI.DataField', Value: Confidential },
    { $Type: 'UI.DataField', Value: UseProjectBilling },
    { $Type: 'UI.DataField', Value: RestrictTimePosting },
    { $Type: 'UI.DataField', Value: CreatedOn },
    { $Type: 'UI.DataField', Value: ChangedOn }
  ]
};

annotate cdaydemoSrv.Project with @UI.HeaderFacets: [
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#ProjectName' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#ProjectStage' },
 { $Type : 'UI.ReferenceFacet', Target : '@UI.DataPoint#StartDate' }
];

annotate cdaydemoSrv.Project with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate cdaydemoSrv.Project with @UI.SelectionFields: [
  ProjectID
];

