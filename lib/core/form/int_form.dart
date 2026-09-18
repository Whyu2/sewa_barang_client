import 'package:formz/formz.dart';

enum IntValidationError {
  empty,
  notNumber,
  minValue,
}

extension IntValidationErrorExts on IntValidationError {
  String? getMessage(
    bool isInvalid, {
    String label = 'Kolom',
    int min = 0,
  }) {
    String? errorText;
    if (isInvalid) {
      switch (this) {
        case IntValidationError.empty:
          errorText = '$label tidak boleh kosong';
        case IntValidationError.notNumber:
          errorText = '$label harus berupa angka';
        case IntValidationError.minValue:
          errorText = '$label minimal $min';
      }
    }
    return errorText;
  }
}

class IntForm extends FormzInput<String?, IntValidationError> {
  final int min;

  const IntForm.pure({
    this.min = 0,
    String value = '',
  }) : super.pure(value);

  const IntForm.dirty({
    this.min = 0,
    String value = '',
  }) : super.dirty(value);

  IntForm copyWith({
    int? min,
    String? value,
  }) {
    return IntForm.dirty(
      min: min ?? this.min,
      value: value ?? this.value ?? '',
    );
  }

  int? get intValue => int.tryParse(value ?? '');

  @override
  IntValidationError? validator(String? value) {
    if (value == null || value == '') {
      return IntValidationError.empty;
    }
    final parsed = int.tryParse(value);
    if (parsed == null) {
      return IntValidationError.notNumber;
    }
    if (parsed < min) {
      return IntValidationError.minValue;
    }
    return null;
  }
}
