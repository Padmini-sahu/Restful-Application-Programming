@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Employee Singleton Projection View'
@Metadata.ignorePropagatedAnnotations: true
@UI:{ headerInfo: {
    typeName: 'Manage Employee',
    typeNamePlural: 'Employee Singleton',
    title: {
        type: #STANDARD,
        value: 'EmpSingleton'
    }
}
}
define root view entity ZC_EMPSINGLETON_PS
  provider contract transactional_query
  as projection on ZI_EMPSINGLETON_PS

{
      @UI.facet: [{
          purpose: #STANDARD,
          position: 10,
          label: 'Employee Multi LIne Edit',
          type: #LINEITEM_REFERENCE,
          targetElement: '_emp'
      }]
      @UI.lineItem: [{ position: 10 }]
  key EmpSingleton,
      maxChangedat,
      /* Associations */
      _emp : redirected to composition child ZC_EMP_PS
}
