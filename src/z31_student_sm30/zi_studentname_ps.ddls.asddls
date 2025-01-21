@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Student Name Interface View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_STUDENTNAME_PS as select from I_Language
left outer join zstudent_ps_31 as zstudent on 1 = 1
composition[0..*] of ZI_STUDENT_PS as _Student
{
    key 1 as StudentName,
    max(zstudent.changed_at) as maxChangedAt,
    _Student // Make association public
}
where I_Language.Language = $session.system_language
 