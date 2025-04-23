@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds order view'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity ZI_RPZ_ORDER
  as select from zr_rpz_order 
  composition [1..*] of zi_rpz_order_it    as _Itens
  association [1..1] to ZC_RPZ_Company_VH  as _Company  on $projection.Company  = _Company.CompanyId
  association [1..1] to ZC_rpz_Customer_VH as _Customer on $projection.Customer = _Customer.CustomerId
  association [1..1] to ZC_RPZ_VENDOR_VH   as _Vendor   on $projection.Vendor   = _Vendor.VendorId

{
  key Orderid,
      Customer,
      _Customer.Name as CustomerName,
      Vendor,
      _Vendor.Name   as VendorName,
      Company,
      _Company.Name  as CompanyName,
      Usnam,
      _Itens,
      _Company,
      _Customer,
      _Vendor
}
