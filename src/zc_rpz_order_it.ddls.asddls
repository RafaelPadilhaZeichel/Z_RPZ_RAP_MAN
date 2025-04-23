@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds consuption Order Itens'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true

define view entity zc_rpz_order_it
  as projection on zi_rpz_order_it
{
  key OrderId,
  key Item,
      @ObjectModel.text.element: [ 'Description' ]
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_rpc_product_VH', element: 'ProductId' }, useForValidation: true }]
      Product,
      Description,
      Value,
      Currency,
      Quantity,
      SalesPrice,
      UnityMeasure,
      /* Associations */
      _Order: redirected to parent zc_rpz_order,
      _Product
}
