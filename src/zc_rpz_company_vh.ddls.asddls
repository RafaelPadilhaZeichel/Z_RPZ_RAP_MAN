@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'asd'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_RPZ_Company_VH
  as select from ztrpz_company
{
      @ObjectModel.text.element: [ 'Name' ]
      @EndUserText.label: 'ID Emprresa'
  key company_id as CompanyId,
      @Semantics.text: true
      @EndUserText.label: 'Nome Empresa'
      name       as Name
}
group by
  company_id,
  name
