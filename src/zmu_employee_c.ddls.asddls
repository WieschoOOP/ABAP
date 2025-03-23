@EndUserText.label: 'Travel'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZMU_EMPLOYEE_C
provider contract transactional_query
  as projection on ZMU_EMPLOYEE_R

{
    key ID,
    Mitarbeiternummer,
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.7
    Vorname,
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.7
    Nachname,
    Eintrittsdatum,

    _Antrag: redirected to composition child ZMU_Antrag_C,
    _Anspruch: redirected to composition child ZMU_ANSPRUCH_C
    
}
