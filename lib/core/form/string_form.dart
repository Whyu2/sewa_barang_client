import 'package:formz/formz.dart';

enum StringValidationError {
  empty,
  emailInvalid,
  minLength,
  maxLength,
  notMatchConfirmPassword,
  phoneInvalid,
}

extension StringValidationErrorExts on StringValidationError {
  String? getMessage(
    bool isInvalid, {
    String label = 'Kolom',
    int minLength = 0,
    int maxLength = 0,
  }) {
    String? errorText;
    if (isInvalid) {
      switch (this) {
        case StringValidationError.empty:
          errorText = '$label tidak boleh kosong';
        case StringValidationError.emailInvalid:
          errorText = '$label harus berupa email valid';
        case StringValidationError.minLength:
          errorText = '$label harus minimal terdiri dari $minLength karakter';
        case StringValidationError.maxLength:
          errorText = '$label harus maksimal terdiri dari $maxLength karakter';
        case StringValidationError.notMatchConfirmPassword:
          errorText = '$label harus sama dengan password baru';
        case StringValidationError.phoneInvalid:
          errorText = '$label tidak valid';
      }
    }
    return errorText;
  }
}

class StringForm extends FormzInput<String?, StringValidationError> {
  final bool isRequired;
  final bool isEmail;
  final bool isConfirmPassword;
  final bool isPhoneNumber;
  final int? minLength;
  final int? maxLength;
  final String? newPassword;

  const StringForm.pure({
    this.isRequired = true,
    this.isEmail = false,
    this.isConfirmPassword = false,
    this.isPhoneNumber = false,
    this.minLength,
    this.maxLength,
    this.newPassword = '',
    String value = '',
  }) : super.pure(value);

  const StringForm.dirty({
    this.isRequired = true,
    this.isEmail = false,
    this.isConfirmPassword = false,
    this.isPhoneNumber = false,
    this.minLength,
    this.maxLength,
    this.newPassword = '',
    String value = '',
  }) : super.dirty(value);

  StringForm copyWith({
    bool? isRequired,
    bool? isEmail,
    bool? isConfirmPassword,
    bool? isPhoneNumber,
    int? minLength,
    int? maxLength,
    String? value,
    String? newPassword,
  }) {
    return StringForm.dirty(
      isRequired: isRequired ?? this.isRequired,
      isEmail: isEmail ?? this.isEmail,
      isConfirmPassword: isConfirmPassword ?? this.isConfirmPassword,
      isPhoneNumber: isPhoneNumber ?? this.isPhoneNumber,
      minLength: minLength ?? this.minLength,
      maxLength: maxLength ?? this.maxLength,
      value: value ?? this.value ?? '',
      newPassword: newPassword ?? this.newPassword ?? '',
    );
  }

  static final _emailRegex = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  @override
  StringValidationError? validator(String? value) {
    if (isRequired) {
      if (value == null || value == '') {
        return StringValidationError.empty;
      }
      if (isEmail && !_emailRegex.hasMatch(value)) {
        return StringValidationError.emailInvalid;
      }
      if (isPhoneNumber) {
        if (value.startsWith('0')) {
          return StringValidationError.phoneInvalid;
        }
      }
      if (minLength != null) {
        if (value.length < minLength!) {
          return StringValidationError.minLength;
        }
      }
      if (maxLength != null) {
        if (value.length > maxLength!) {
          return StringValidationError.maxLength;
        }
      }
      if (isConfirmPassword && newPassword != value) {
        return StringValidationError.notMatchConfirmPassword;
      }
    } else {
      if (value?.isNotEmpty == true) {
        if (isEmail && !_emailRegex.hasMatch(value!)) {
          return StringValidationError.emailInvalid;
        }
        if (isPhoneNumber) {
          if (value!.startsWith('0')) {
            return StringValidationError.phoneInvalid;
          }
        }
        if (minLength != null) {
          if (value!.length < minLength!) {
            return StringValidationError.minLength;
          }
        }
        if (maxLength != null) {
          if (value!.length > maxLength!) {
            return StringValidationError.maxLength;
          }
        }
        if (isConfirmPassword && newPassword != value) {
          return StringValidationError.notMatchConfirmPassword;
        }
      }
    }
    return null;
  }
}
