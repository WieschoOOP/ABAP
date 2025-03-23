@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BV Antrag'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZMU_ANTRAG_R
  as select from zmu_antrag_a
  association [1..1] to ZMU_I_GESTATTENTEXT as _GenehmigenderText on $projection.Id = _GenehmigenderText.ID
  
  association        to parent ZMU_EMPLOYEE_R      as _Employee          on $projection.Antragsteller = _Employee.ID
{
  key zmu_antrag_a.id            as Id,
     zmu_antrag_a.antragsteller as Antragsteller,
      @ObjectModel.text.element: ['GenehmigenderName']
      zmu_antrag_a.genehmigender as Genehmigender,
      zmu_antrag_a.startdatum    as Startdatum,
      zmu_antrag_a.enddatum      as Enddatum,
      zmu_antrag_a.urlaubstage   as Urlaubstage,
      zmu_antrag_a.kommentar     as Kommentar,
      zmu_antrag_a.status        as Status,

      /* Transient Data */
      _GenehmigenderText.Name      as GenehmigenderName,

      /* Associations */
      _Employee
}
