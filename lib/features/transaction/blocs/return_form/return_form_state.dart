part of 'return_form_bloc.dart';

@freezed
class ReturnFormState with _$ReturnFormState {
  factory ReturnFormState({
    DateTime? returnDate,
    @Default(FormzStatus.pure) FormzStatus formzStatus,
  }) = _ReturnFormState;
}
