@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds Composition Order Itens'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

define view entity zi_rpz_order_it
  as select from zr_rpz_order_it 
  association        to parent ZI_RPZ_ORDER        as _Order   on $projection.OrderId = _Order.Orderid
  association [1..1] to        Zr_rpz_product      as _Product on $projection.Product = _Product.ProductId

{
  key OrderId,
  key Item,
      Product,
      _Product.Description,
      _Product.Value,
      _Product.Currency,
      Quantity,
      cast(_Product.Value as abap.dec( 10,2 )) * cast(Quantity as abap.dec( 10, 2 )) as SalesPrice,
      UnityMeasure,
      _Order,
      _Product
}
