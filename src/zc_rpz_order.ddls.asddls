@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cds consuption Order'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

define root view entity zc_rpz_order
  provider contract transactional_query
  as projection on ZI_RPZ_ORDER
{
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_rpc_order_VH',  element: 'Orderid' }, useForValidation: true }]
  key OrderId,
      @ObjectModel.text.element: [ 'CustomerName' ]
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_rpc_customer_VH',  element: 'CustomerId' }, useForValidation: true }]
      Customer,
      CustomerName,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_rpc_vendor_VH',  element: 'VendorId' }, useForValidation: true }]
      @ObjectModel.text.element: [ 'VendorName' ]
      Vendor,
      VendorName,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_rpc_company_VH',  element: 'CompanyId' }, useForValidation: true }]
      @ObjectModel.text.element: [ 'CompanyName' ]
      Company,
      CompanyName,
      Usnam,
      /* Associations */
      _Itens: redirected to composition child zc_rpz_order_it
}
