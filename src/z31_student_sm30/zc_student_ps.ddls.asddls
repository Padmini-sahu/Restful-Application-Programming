@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Student Projection View'
//@Metadata.ignorePropagatedAnnotations: true
@UI.headerInfo: {
    typeName: 'Student',
    typeNamePlural: 'Students',
    title: {
        type: #STANDARD,
        label:'Students Data',
        value: 'StudentId'
    }
}
define view entity ZC_STUDENT_PS
  as projection on ZI_STUDENT_PS
{
      @UI.facet: [{ type: #IDENTIFICATION_REFERENCE }]
      @UI.lineItem: [{ position: 10 }]
      @UI.identification: [{ position: 10 }]
  key StudentId,
      StudentName,
      @UI.lineItem: [{ position: 20 }]
      @UI.identification: [{ position: 20 }]
      FirstName,
      @UI.lineItem: [{ position: 30 }]
      @UI.identification: [{ position: 30 }]
      LastName,
      @UI.lineItem: [{ position: 40 }]
      @UI.identification: [{ position: 40 }]
      Address,
      @UI.lineItem: [{ position: 50 }]
      @UI.identification: [{ position: 50 }]
      Email,
      @UI.lineItem: [{ position: 60 }]
      @UI.identification: [{ position: 60 }]
      Phone,
      @UI.lineItem: [{ position: 70 }]
      @UI.identification: [{ position: 70 }]
      Attendance,
      ChangedBy,
      LocalLastChangedAt,
      ChangedAt,
      /* Associations */
      _sname : redirected to parent ZC_STUDENTNAME_PS
}
