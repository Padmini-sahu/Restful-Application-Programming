@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee Interface View'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_EMP_PS
  as select from zemployee_ps_tab
  association to parent ZI_EMPSINGLETON_PS as _sEmp on $projection.EmpSingleton = _sEmp.EmpSingleton
{
      @EndUserText.label : 'Employee ID'
  key employee_id           as EmployeeId,
      1                     as EmpSingleton,
      @EndUserText.label : 'First Name'
      first_name            as FirstName,
      @EndUserText.label : 'Last Name'
      last_name             as LastName,
      @EndUserText.label : 'Department'
      department            as Department,
      @EndUserText.label : 'Joining Date'
      joining_date          as JoiningDate,
      @EndUserText.label : 'Active Employee'
      is_active             as IsActive,
      @Semantics.user.lastChangedBy: true
      //  @EndUserText.label : 'Changed By'
      changed_by            as ChangedBy,

      //etag
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      //total etag
      @Semantics.systemDateTime.lastChangedAt: true
      changed_at            as ChangedAt,
      _sEmp
}
