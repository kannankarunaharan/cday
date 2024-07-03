using { cdaydemo as my } from '../db/schema.cds';

@path: '/service/cdaydemo'
@requires: 'authenticated-user'
service cdaydemoSrv {
  @odata.draft.enabled
  entity Project as projection on my.Project;
}