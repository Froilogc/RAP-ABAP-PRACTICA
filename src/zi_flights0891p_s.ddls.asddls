@EndUserText.label: 'Flights 0891P Singleton'
@AccessControl.authorizationCheck: #NOT_ALLOWED
@ObjectModel.semanticKey: [ 'SingletonID' ]
@UI: {
  headerInfo: {
    typeName: 'Flights0891pAll'
  }
}
define root view entity ZI_Flights0891p_S
  as select from I_Language
    left outer join I_CstmBizConfignLastChgd on I_CstmBizConfignLastChgd.ViewEntityName = 'ZI_FLIGHTS0891P'
  composition [0..*] of ZI_Flights0891p as _Flights0891p
{
  @UI.facet: [ {
    id: 'ZI_Flights0891p', 
    purpose: #STANDARD, 
    type: #LINEITEM_REFERENCE, 
    label: 'Flights 0891P', 
    position: 1 , 
    targetElement: '_Flights0891p'
  } ]
  @UI.lineItem: [ {
    position: 1 
  } ]
  key 1 as SingletonID,
  _Flights0891p,
  @UI.hidden: true
  I_CstmBizConfignLastChgd.LastChangedDateTime as LastChangedAtMax
  
}
where I_Language.Language = $session.system_language
