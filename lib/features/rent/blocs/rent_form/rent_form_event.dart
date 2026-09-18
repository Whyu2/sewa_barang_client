part of 'rent_form_bloc.dart';

@freezed
class RentFormEvent with _$RentFormEvent {
  const factory RentFormEvent.changeRenterName({
    String? renterName,
  }) = _ChangeRenterName;

  const factory RentFormEvent.changeRenterPhone({
    String? renterPhone,
  }) = _ChangeRenterPhone;

  const factory RentFormEvent.changeRentPrice({
    String? rentPrice,
  }) = _ChangeRentPrice;

  const factory RentFormEvent.changeQty({
    String? qty,
  }) = _ChangeQty;

  const factory RentFormEvent.changeRentalDuration({
    String? rentalDuration,
  }) = _ChangeRentalDuration;

  const factory RentFormEvent.changeNotes({
    String? notes,
  }) = _ChangeNotes;

  const factory RentFormEvent.changeRentDate({
    required DateTime rentDate,
  }) = _ChangeRentDate;
}
