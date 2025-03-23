@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee'
define root view entity ZMU_EMPLOYEE_R
  as select from zmu_employee_a
  composition [0..*] of ZMU_ANTRAG_R as _Antrag
  composition [0..*] of ZMU_Anspruch_R as _Anspruch

{
  key id                as ID,
      mitarbeiternummer as Mitarbeiternummer,
      vorname           as Vorname,
      nachname          as Nachname,
      eintrittsdatum    as Eintrittsdatum,
      _Antrag,
      _Anspruch
}

 