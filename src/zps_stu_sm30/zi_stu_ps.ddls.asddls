@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Student Interface View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_STU_PS
  as select from zstudent_ps_31
  association to parent ZI_STUNAME_PS as _stuname on $projection.StuName = _stuname.supplementcode
{
  key student_id            as StudentId,
      002                  as StuName,
      first_name            as FirstName,
      last_name             as LastName,
      address               as Address,
      email                 as Email,
      phone                 as Phone,
      attendance            as Attendance,
      @Semantics.user.lastChangedBy: true
      changed_by            as ChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      changed_at            as ChangedAt,
      _stuname
}
