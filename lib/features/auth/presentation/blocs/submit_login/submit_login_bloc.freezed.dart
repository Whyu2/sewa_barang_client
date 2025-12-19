// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubmitLoginEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubmitLoginEventCopyWith<SubmitLoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitLoginEventCopyWith<$Res> {
  factory $SubmitLoginEventCopyWith(
          SubmitLoginEvent value, $Res Function(SubmitLoginEvent) then) =
      _$SubmitLoginEventCopyWithImpl<$Res, SubmitLoginEvent>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$SubmitLoginEventCopyWithImpl<$Res, $Val extends SubmitLoginEvent>
    implements $SubmitLoginEventCopyWith<$Res> {
  _$SubmitLoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmitImplCopyWith<$Res>
    implements $SubmitLoginEventCopyWith<$Res> {
  factory _$$SubmitImplCopyWith(
          _$SubmitImpl value, $Res Function(_$SubmitImpl) then) =
      __$$SubmitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SubmitImplCopyWithImpl<$Res>
    extends _$SubmitLoginEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
      _$SubmitImpl _value, $Res Function(_$SubmitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SubmitImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubmitImpl implements _Submit {
  const _$SubmitImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SubmitLoginEvent.submit(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitImplCopyWith<_$SubmitImpl> get copyWith =>
      __$$SubmitImplCopyWithImpl<_$SubmitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) submit,
  }) {
    return submit(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? submit,
  }) {
    return submit?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements SubmitLoginEvent {
  const factory _Submit(final String email, final String password) =
      _$SubmitImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SubmitImplCopyWith<_$SubmitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubmitLoginState {
  SubmitLoginStatus get status => throw _privateConstructorUsedError;
  AuthModel? get data => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubmitLoginStateCopyWith<SubmitLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitLoginStateCopyWith<$Res> {
  factory $SubmitLoginStateCopyWith(
          SubmitLoginState value, $Res Function(SubmitLoginState) then) =
      _$SubmitLoginStateCopyWithImpl<$Res, SubmitLoginState>;
  @useResult
  $Res call({SubmitLoginStatus status, AuthModel? data, Object? error});

  $AuthModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$SubmitLoginStateCopyWithImpl<$Res, $Val extends SubmitLoginState>
    implements $SubmitLoginStateCopyWith<$Res> {
  _$SubmitLoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SubmitLoginStatus,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AuthModel?,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AuthModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubmitLoginStateImplCopyWith<$Res>
    implements $SubmitLoginStateCopyWith<$Res> {
  factory _$$SubmitLoginStateImplCopyWith(_$SubmitLoginStateImpl value,
          $Res Function(_$SubmitLoginStateImpl) then) =
      __$$SubmitLoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SubmitLoginStatus status, AuthModel? data, Object? error});

  @override
  $AuthModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SubmitLoginStateImplCopyWithImpl<$Res>
    extends _$SubmitLoginStateCopyWithImpl<$Res, _$SubmitLoginStateImpl>
    implements _$$SubmitLoginStateImplCopyWith<$Res> {
  __$$SubmitLoginStateImplCopyWithImpl(_$SubmitLoginStateImpl _value,
      $Res Function(_$SubmitLoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_$SubmitLoginStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SubmitLoginStatus,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AuthModel?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$SubmitLoginStateImpl implements _SubmitLoginState {
  const _$SubmitLoginStateImpl(
      {this.status = SubmitLoginStatus.initial, this.data, this.error});

  @override
  @JsonKey()
  final SubmitLoginStatus status;
  @override
  final AuthModel? data;
  @override
  final Object? error;

  @override
  String toString() {
    return 'SubmitLoginState(status: $status, data: $data, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitLoginStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, data, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitLoginStateImplCopyWith<_$SubmitLoginStateImpl> get copyWith =>
      __$$SubmitLoginStateImplCopyWithImpl<_$SubmitLoginStateImpl>(
          this, _$identity);
}

abstract class _SubmitLoginState implements SubmitLoginState {
  const factory _SubmitLoginState(
      {final SubmitLoginStatus status,
      final AuthModel? data,
      final Object? error}) = _$SubmitLoginStateImpl;

  @override
  SubmitLoginStatus get status;
  @override
  AuthModel? get data;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$SubmitLoginStateImplCopyWith<_$SubmitLoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
