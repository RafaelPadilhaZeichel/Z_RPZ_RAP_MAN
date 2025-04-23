@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds Basic Order'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zr_rpz_order
  as select from ztrpz_order
{
  key orderid  as Orderid,
      customer as Customer,
      vendor   as Vendor,
      company  as Company,
      usnam    as Usnam
}
