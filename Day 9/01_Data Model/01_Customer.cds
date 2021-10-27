@AbapCatalog.sqlViewName: 'ZATS00IUCUST'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Unmanaged Scenario Base Later- Customer Data'
define view ZATS_00_I_U_CUSTOMER as select from /dmo/customer
association [1] to I_Country as _Country
    on $projection.country_code = _Country.Country {
    ///dmo/customer
    key customer_id as CustomerID,
    first_name as FirstName,
    last_name as LastName,
    title as Title,
    street as Street,
    postal_code as PostalCode,
    city as City,
    country_code as CountryCd,
    phone_number as PhoneNo,
    email_address as EmailAddr,
    _Country // Make association public
}
