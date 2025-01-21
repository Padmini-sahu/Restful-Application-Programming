@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Student Interface View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_STUDENT_PS as select from zstudent_ps_31
association to parent ZI_STUDENTNAME_PS as _sname
on $projection.StudentName = _sname.StudentName
{
    @EndUserText.label: 'Student Id'
    key student_id as StudentId,
    1 as StudentName,
    @EndUserText.label: 'First Name'
    first_name as FirstName,
    @EndUserText.label: 'Last Name'
    last_name as LastName,
    @EndUserText.label: 'Address'
    address as Address,
    @EndUserText.label: 'Email'
    email as Email,
    @EndUserText.label: 'Phone Number'
    phone as Phone,
    @EndUserText.label: 'Attendance'
    attendance as Attendance,
    @Semantics.user.lastChangedBy: true
    changed_by as ChangedBy,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    local_last_changed_at as LocalLastChangedAt,
    @Semantics.systemDateTime.lastChangedAt: true
    changed_at as ChangedAt,
    _sname
}
