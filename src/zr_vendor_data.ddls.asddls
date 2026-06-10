@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZVENDOR_DATA'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_VENDOR_DATA
  as select from ZVENDOR_DATA
{
  key vendor_id as VendorID,
  vendor_name as VendorName,
  po_number as PoNumber,
  delay_days as DelayDays,
  stock_status as StockStatus,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
}
