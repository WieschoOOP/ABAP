@EndUserText.label: 'Anspruch'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZMU_ANSPRUCH_C as projection on ZMU_Anspruch_R
{
    key Id as Id,
    Mitarbeiter as Mitarbeiter,
    Jahr as Jahr,
    Urlaubstage as Urlaubstage,
    
    _Employee: redirected to parent ZMU_EMPLOYEE_C
    
}
