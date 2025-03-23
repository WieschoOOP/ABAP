@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Anspruch'
define view entity ZMU_Anspruch_R as select from ZMU_ANSPRUCH_A
  association to parent ZMU_EMPLOYEE_R as _Employee on $projection.Mitarbeiter = _Employee.ID
{
    key id as Id,
    mitarbeiter as Mitarbeiter,
    jahr as Jahr,
    urlaubstage as Urlaubstage,
    
    _Employee
}
