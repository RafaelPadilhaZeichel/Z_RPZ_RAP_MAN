@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'dsaf'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_rpz_Customer_VH
  as select from ztrpz_customer
{
      @ObjectModel.text.element: [ 'Name' ]
      @EndUserText.label: 'ID Cliente'
  key customer_id as CustomerId,

      @Semantics.text: true
      @EndUserText.label: 'Nome CLiente'
      name        as Name

}
group by
  customer_id,
  name
