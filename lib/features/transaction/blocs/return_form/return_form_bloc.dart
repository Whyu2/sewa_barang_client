import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'return_form_event.dart';
part 'return_form_state.dart';
part 'return_form_bloc.freezed.dart';

@injectable
class ReturnFormBloc extends Bloc<ReturnFormEvent, ReturnFormState> {
  ReturnFormBloc()
      : super(ReturnFormState(
          returnDate: DateTime.now(),
          formzStatus: FormzStatus.valid,
        )) {
    on<_ChangeReturnDate>(_changeReturnDate);
  }

  Future<void> _changeReturnDate(
    _ChangeReturnDate event,
    Emitter<ReturnFormState> emit,
  ) async {
    emit(state.copyWith(
      returnDate: event.returnDate,
      formzStatus: FormzStatus.valid,
    ));
  }
}
