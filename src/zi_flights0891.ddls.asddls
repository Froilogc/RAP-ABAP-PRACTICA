@EndUserText.label: 'Flights'
@AccessControl.authorizationCheck: #NOT_ALLOWED
@Metadata.allowExtensions: true

define view entity ZI_Flights0891
  as select from ztravel_0891_p
  association to parent ZI_Flights_0891 as _FlightsAll0891 on $projection.SingletonID = _FlightsAll0891.SingletonID
{
  key travel_id as TravelId,
  agency_id as AgencyId,
  customer_id as CustomerId,
  begin_date as BeginDate,
  end_date as EndDate,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  booking_fee as BookingFee,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  total_price as TotalPrice,
  currency_code as CurrencyCode,
  description as Description,
  overall_status as OverallStatus,
  created_by as CreatedBy,
  created_at as CreatedAt,
  last_changed_by as LastChangedBy,
  last_changed_at as LastChangedAt,
  @Consumption.hidden: true
  1 as SingletonID,
  _FlightsAll0891
  
}
