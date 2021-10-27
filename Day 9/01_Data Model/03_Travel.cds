@AbapCatalog.sqlViewName: 'ZATS00CUTRAVEL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Unmanaged Scenario Projection Layer - Consumption Travel'
define view ZATS_00_C_U_TRAVEL as select from /dmo/travel as Travel
association [1] to ZATS_00_I_U_agency as _Agency
    on $projection.AgencyId = _Agency.AgencyId
association [1] to ZATS_00_I_U_CUSTOMER as _Customer
    on $projection.CustomerId = _Customer.CustomerID
association [1] to I_Currency as _Currency
    on $projection.CurrencyCode = _Currency.Currency {
    //Travel
    key travel_id as TravelId,
    agency_id as AgencyId,
    customer_id as CustomerId,
    begin_date as BeginDate,
    end_date as EndDate,
    booking_fee as BookingFee,
    total_price as TotalPrice,
    currency_code as CurrencyCode,
    description as Description,
    status as Status,
    _Agency,
    _Customer,
    _Currency
}