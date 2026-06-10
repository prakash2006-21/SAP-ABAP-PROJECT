@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS views for Vendor Data'
@Metadata.ignorePropagatedAnnotations: true


define view entity Z_DDF_VENDOR_ANALYTICS
  as select from zvendor_data
{
    key vendor_id,

    vendor_name,
    po_number,
    delay_days,
    stock_status

}
