@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Student Projection View'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_STU_PS
  as projection on ZI_STU_PS
{
      @UI.lineItem: [{ position: 10 }]
  key StudentId,
      @UI.lineItem: [{ position: 20 }]
      StuName,
      @UI.lineItem: [{ position: 30 }]
      FirstName,
      @UI.lineItem: [{ position: 40 }]
      LastName,
      @UI.lineItem: [{ position: 50 }]
      Address,
      @UI.lineItem: [{ position: 60 }]
      Email,
      @UI.lineItem: [{ position: 70 }]
      Phone,
      @UI.lineItem: [{ position: 80 }]
      Attendance,
      ChangedBy,
      LocalLastChangedAt,
      ChangedAt,
      /* Associations */
      _stuname : redirected to parent ZC_STUNAME_PS
}
