part of 'return_form_bloc.dart';

@freezed
class ReturnFormEvent with _$ReturnFormEvent {
  const factory ReturnFormEvent.changeReturnDate({
    required DateTime returnDate,
  }) = _ChangeReturnDate;
}
