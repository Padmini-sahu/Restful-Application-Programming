@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Student Name Projection View'
@Metadata.ignorePropagatedAnnotations: true
@UI.headerInfo: {
    typeName: 'Manage Student',
    typeNamePlural: 'Student Info',
    title: {
        type: #STANDARD,
        value: 'StudentName'
    }
}
define root view entity ZC_STUDENTNAME_PS
  provider contract transactional_query as projection on ZI_STUDENTNAME_PS
{
@UI.facet: [{
    purpose: #STANDARD,
    position: 10,
    label: 'Student Identification',
    type:#LINEITEM_REFERENCE ,
    targetElement: '_Student'
}]
@UI.lineItem: [{ position: 10 }]
    key StudentName,
        maxChangedAt,
    /* Associations */
    _Student : redirected to composition child ZC_STUDENT_PS
}
