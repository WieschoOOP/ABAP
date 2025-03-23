@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Textelement for Customer'
define view entity ZMU_I_GESTATTENTEXT
  as select from zmu_employee_a
{
  key id                                      as ID,
      vorname                                 as Vorname,
      nachname                                as Nachname,

      /* Transient Data */
      concat_with_space(vorname, nachname, 1) as Name

}
