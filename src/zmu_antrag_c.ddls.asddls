@EndUserText.label: 'REQUEST'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@Metadata.allowExtensions: true
define view entity ZMU_Antrag_C
  as projection on ZMU_Antrag_R
{
    key Id,
    Antragsteller,
    @Consumption.valueHelpDefinition: [{ entity: { name: 'ZMU_I_GESTATTER', element: 'ID' } }]
    Genehmigender,
    Startdatum,
    Enddatum,
    Urlaubstage,
    @Search.defaultSearchElement: true
    @Search.fuzzinessThreshold: 0.7
    Kommentar,
    @Search.defaultSearchElement: true
    @Consumption.valueHelpDefinition: [{ entity: { name: 'Zmu_I_status', element: 'Status' } }]
    Status,
    
    /* Transient Data */
    GenehmigenderName,
    
    /* Associations */
    _Employee: redirected to parent ZMU_EMPLOYEE_C
}
