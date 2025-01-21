@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Student Name Supplement Interface View'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_STUNAME_PS as select from I_NameSupplement
composition[0..*] of ZI_STU_PS as _student
{
    key 002 as supplementcode,
    _student

}
