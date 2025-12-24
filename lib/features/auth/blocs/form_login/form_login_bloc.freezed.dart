// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FormLoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) changeEmail,
    required TResult Function(String? password) changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email)? changeEmail,
    TResult? Function(String? password)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? changeEmail,
    TResult Function(String? password)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePassword value) changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePassword value)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormLoginEventCopyWith<$Res> {
  factory $FormLoginEventCopyWith(
          FormLoginEvent value, $Res Function(FormLoginEvent) then) =
      _$FormLoginEventCopyWithImpl<$Res, FormLoginEvent>;
}

/// @nodoc
class _$FormLoginEventCopyWithImpl<$Res, $Val extends FormLoginEvent>
    implements $FormLoginEventCopyWith<$Res> {
  _$FormLoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangeEmailImplCopyWith<$Res> {
  factory _$$ChangeEmailImplCopyWith(
          _$ChangeEmailImpl value, $Res Function(_$ChangeEmailImpl) then) =
      __$$ChangeEmailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? email});
}

/// @nodoc
class __$$ChangeEmailImplCopyWithImpl<$Res>
    extends _$FormLoginEventCopyWithImpl<$Res, _$ChangeEmailImpl>
    implements _$$ChangeEmailImplCopyWith<$Res> {
  __$$ChangeEmailImplCopyWithImpl(
      _$ChangeEmailImpl _value, $Res Function(_$ChangeEmailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$ChangeEmailImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChangeEmailImpl implements _ChangeEmail {
  const _$ChangeEmailImpl({this.email});

  @override
  final String? email;

  @override
  String toString() {
    return 'FormLoginEvent.changeEmail(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeEmailImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeEmailImplCopyWith<_$ChangeEmailImpl> get copyWith =>
      __$$ChangeEmailImplCopyWithImpl<_$ChangeEmailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) changeEmail,
    required TResult Function(String? password) changePassword,
  }) {
    return changeEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email)? changeEmail,
    TResult? Function(String? password)? changePassword,
  }) {
    return changeEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? changeEmail,
    TResult Function(String? password)? changePassword,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return changeEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return changeEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (changeEmail != null) {
      return changeEmail(this);
    }
    return orElse();
  }
}

abstract class _ChangeEmail implements FormLoginEvent {
  const factory _ChangeEmail({final String? email}) = _$ChangeEmailImpl;

  String? get email;
  @JsonKey(ignore: true)
  _$$ChangeEmailImplCopyWith<_$ChangeEmailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePasswordImplCopyWith<$Res> {
  factory _$$ChangePasswordImplCopyWith(_$ChangePasswordImpl value,
          $Res Function(_$ChangePasswordImpl) then) =
      __$$ChangePasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? password});
}

/// @nodoc
class __$$ChangePasswordImplCopyWithImpl<$Res>
    extends _$FormLoginEventCopyWithImpl<$Res, _$ChangePasswordImpl>
    implements _$$ChangePasswordImplCopyWith<$Res> {
  __$$ChangePasswordImplCopyWithImpl(
      _$ChangePasswordImpl _value, $Res Function(_$ChangePasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_$ChangePasswordImpl(
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChangePasswordImpl implements _ChangePassword {
  const _$ChangePasswordImpl({this.password});

  @override
  final String? password;

  @override
  String toString() {
    return 'FormLoginEvent.changePassword(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordImplCopyWith<_$ChangePasswordImpl> get copyWith =>
      __$$ChangePasswordImplCopyWithImpl<_$ChangePasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? email) changeEmail,
    required TResult Function(String? password) changePassword,
  }) {
    return changePassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? email)? changeEmail,
    TResult? Function(String? password)? changePassword,
  }) {
    return changePassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? email)? changeEmail,
    TResult Function(String? password)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeEmail value) changeEmail,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeEmail value)? changeEmail,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeEmail value)? changeEmail,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePassword implements FormLoginEvent {
  const factory _ChangePassword({final String? password}) =
      _$ChangePasswordImpl;

  String? get password;
  @JsonKey(ignore: true)
  _$$ChangePasswordImplCopyWith<_$ChangePasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FormLoginState {
  StringForm get email => throw _privateConstructorUsedError;
  StringForm get password => throw _privateConstructorUsedError;
  FormzStatus get formzStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormLoginStateCopyWith<FormLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormLoginStateCopyWith<$Res> {
  factory $FormLoginStateCopyWith(
          FormLoginState value, $Res Function(FormLoginState) then) =
      _$FormLoginStateCopyWithImpl<$Res, FormLoginState>;
  @useResult
  $Res call({StringForm email, StringForm password, FormzStatus formzStatus});
}

/// @nodoc
class _$FormLoginStateCopyWithImpl<$Res, $Val extends FormLoginState>
    implements $FormLoginStateCopyWith<$Res> {
  _$FormLoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? formzStatus = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as StringForm,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as StringForm,
      formzStatus: null == formzStatus
          ? _value.formzStatus
          : formzStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormLoginStateImplCopyWith<$Res>
    implements $FormLoginStateCopyWith<$Res> {
  factory _$$FormLoginStateImplCopyWith(_$FormLoginStateImpl value,
          $Res Function(_$FormLoginStateImpl) then) =
      __$$FormLoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StringForm email, StringForm password, FormzStatus formzStatus});
}

/// @nodoc
class __$$FormLoginStateImplCopyWithImpl<$Res>
    extends _$FormLoginStateCopyWithImpl<$Res, _$FormLoginStateImpl>
    implements _$$FormLoginStateImplCopyWith<$Res> {
  __$$FormLoginStateImplCopyWithImpl(
      _$FormLoginStateImpl _value, $Res Function(_$FormLoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? formzStatus = null,
  }) {
    return _then(_$FormLoginStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as StringForm,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as StringForm,
      formzStatus: null == formzStatus
          ? _value.formzStatus
          : formzStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$FormLoginStateImpl implements _FormLoginState {
  _$FormLoginStateImpl(
      {this.email = const StringForm.pure(isRequired: true),
      this.password = const StringForm.pure(isRequired: true),
      this.formzStatus = FormzStatus.pure});

  @override
  @JsonKey()
  final StringForm email;
  @override
  @JsonKey()
  final StringForm password;
  @override
  @JsonKey()
  final FormzStatus formzStatus;

  @override
  String toString() {
    return 'FormLoginState(email: $email, password: $password, formzStatus: $formzStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormLoginStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.formzStatus, formzStatus) ||
                other.formzStatus == formzStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, formzStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormLoginStateImplCopyWith<_$FormLoginStateImpl> get copyWith =>
      __$$FormLoginStateImplCopyWithImpl<_$FormLoginStateImpl>(
          this, _$identity);
}

abstract class _FormLoginState implements FormLoginState {
  factory _FormLoginState(
      {final StringForm email,
      final StringForm password,
      final FormzStatus formzStatus}) = _$FormLoginStateImpl;

  @override
  StringForm get email;
  @override
  StringForm get password;
  @override
  FormzStatus get formzStatus;
  @override
  @JsonKey(ignore: true)
  _$$FormLoginStateImplCopyWith<_$FormLoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
