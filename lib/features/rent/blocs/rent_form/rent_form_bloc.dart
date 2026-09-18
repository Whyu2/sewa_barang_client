import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sewa_barang_client/core/form/int_form.dart';
import 'package:sewa_barang_client/core/form/string_form.dart';

part 'rent_form_event.dart';
part 'rent_form_state.dart';
part 'rent_form_bloc.freezed.dart';

@injectable
class RentFormBloc extends Bloc<RentFormEvent, RentFormState> {
  RentFormBloc()
      : super(RentFormState(
          rentDate: DateTime.now(),
          qty: const IntForm.dirty(min: 1, value: '1'),
        )) {
    on<_ChangeRenterName>(_changeRenterName);
    on<_ChangeRenterPhone>(_changeRenterPhone);
    on<_ChangeRentPrice>(_changeRentPrice);
    on<_ChangeQty>(_changeQty);
    on<_ChangeRentalDuration>(_changeRentalDuration);
    on<_ChangeNotes>(_changeNotes);
    on<_ChangeRentDate>(_changeRentDate);
  }

  FormzStatus _validateForm({
    StringForm? renterName,
    StringForm? renterPhone,
    IntForm? rentPrice,
    IntForm? qty,
    IntForm? rentalDuration,
  }) {
    return Formz.validate([
      renterName ?? state.renterName,
      renterPhone ?? state.renterPhone,
      rentPrice ?? state.rentPrice,
      qty ?? state.qty,
      rentalDuration ?? state.rentalDuration,
    ]);
  }

  Future<void> _changeRenterName(
    _ChangeRenterName event,
    Emitter<RentFormState> emit,
  ) async {
    final newForm = state.renterName.copyWith(value: event.renterName);
    emit(state.copyWith(
      renterName: newForm,
      formzStatus: _validateForm(renterName: newForm),
    ));
  }

  Future<void> _changeRenterPhone(
    _ChangeRenterPhone event,
    Emitter<RentFormState> emit,
  ) async {
    final newForm = state.renterPhone.copyWith(value: event.renterPhone);
    emit(state.copyWith(
      renterPhone: newForm,
      formzStatus: _validateForm(renterPhone: newForm),
    ));
  }

  Future<void> _changeRentPrice(
    _ChangeRentPrice event,
    Emitter<RentFormState> emit,
  ) async {
    final newForm = state.rentPrice.copyWith(value: event.rentPrice);
    emit(state.copyWith(
      rentPrice: newForm,
      formzStatus: _validateForm(rentPrice: newForm),
    ));
  }

  Future<void> _changeQty(
    _ChangeQty event,
    Emitter<RentFormState> emit,
  ) async {
    final newForm = state.qty.copyWith(value: event.qty);
    emit(state.copyWith(
      qty: newForm,
      formzStatus: _validateForm(qty: newForm),
    ));
  }

  Future<void> _changeRentalDuration(
    _ChangeRentalDuration event,
    Emitter<RentFormState> emit,
  ) async {
    final newForm =
        state.rentalDuration.copyWith(value: event.rentalDuration);
    emit(state.copyWith(
      rentalDuration: newForm,
      formzStatus: _validateForm(rentalDuration: newForm),
    ));
  }

  Future<void> _changeNotes(
    _ChangeNotes event,
    Emitter<RentFormState> emit,
  ) async {
    final newForm = state.notes.copyWith(value: event.notes);
    emit(state.copyWith(notes: newForm));
  }

  Future<void> _changeRentDate(
    _ChangeRentDate event,
    Emitter<RentFormState> emit,
  ) async {
    emit(state.copyWith(rentDate: event.rentDate));
  }
}
