part of 'rent_form_bloc.dart';

@freezed
class RentFormState with _$RentFormState {
  factory RentFormState({
    @Default(StringForm.pure(isRequired: true)) StringForm renterName,
    @Default(StringForm.pure(isRequired: false, isPhoneNumber: true))
    StringForm renterPhone,
    @Default(IntForm.pure(min: 0)) IntForm rentPrice,
    @Default(IntForm.pure(min: 1)) IntForm qty,
    @Default(IntForm.dirty(min: 1, value: '1')) IntForm rentalDuration,
    @Default(StringForm.pure(isRequired: false)) StringForm notes,
    DateTime? rentDate,
    @Default(FormzStatus.pure) FormzStatus formzStatus,
  }) = _RentFormState;
}
