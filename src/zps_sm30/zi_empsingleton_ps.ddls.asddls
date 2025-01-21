 @AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee Singleton Interface View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_EMPSINGLETON_PS as select from I_Language
left outer join zemployee_ps_tab as zemp on 1 = 1  //we'll get all the fields from the custom table
composition[0..*] of ZI_EMP_PS as _emp
{
    key 1 as EmpSingleton,
    max(zemp.changed_at) as maxChangedat,
    _emp

}
where I_Language.Language = $session.system_language
 