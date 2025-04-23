@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds Basic Product'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Zr_rpz_product
  as select from ztrpz_product
{
  key product_id    as ProductId,
      description   as Description,
      @Semantics.amount.currencyCode: 'Currency'
      value         as Value,
      currency      as Currency,
      @Semantics.quantity.unitOfMeasure: 'UnityMeasure'
      quantity      as Quantity,
      unity_measure as UnityMeasure
}
