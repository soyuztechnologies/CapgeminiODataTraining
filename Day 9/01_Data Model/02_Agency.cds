@AbapCatalog.sqlViewName: 'ZATS00IUAGEN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Unmanaged Scenario Base Later- Agency Data'
define view ZATS_00_I_U_agency as select from /dmo/agency
association [1] to I_Country as _Country
    on $projection.country_code = _Country.Country {
    ///dmo/customer
    ///dmo/agency
    key agency_id as AgencyId,
    name as AgencyName,
    street as AStreet,
    postal_code as APostalCode,
    city as ACity,
    country_code as ACountry,
    phone_number as APhone,
    email_address as AEmailAddress,
    web_address as AWebAddress,
    _Country // Make association public
}