@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Student Name Supplement Projection View'
@Metadata.ignorePropagatedAnnotations: true
@UI.headerInfo: {
    typeName: 'Manage Student',
    typeNamePlural: 'Student Info',
    title: {
        type: #STANDARD,
        value: 'supplementcode'
   }
}
define root view entity ZC_STUNAME_PS
  provider contract transactional_query
  as projection on ZI_STUNAME_PS
{
@UI.facet: [{
    purpose: #STANDARD,
    label: 'Name Id',
    type: #LINEITEM_REFERENCE,
    targetElement: '_student'
}]
@UI.lineItem: [{ position: 10 }]
  key supplementcode,
      /* Associations */
      _student : redirected to composition child ZC_STU_PS
}
