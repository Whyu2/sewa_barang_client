// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_list_transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetListTransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetListTransactionEventCopyWith<$Res> {
  factory $GetListTransactionEventCopyWith(GetListTransactionEvent value,
          $Res Function(GetListTransactionEvent) then) =
      _$GetListTransactionEventCopyWithImpl<$Res, GetListTransactionEvent>;
}

/// @nodoc
class _$GetListTransactionEventCopyWithImpl<$Res,
        $Val extends GetListTransactionEvent>
    implements $GetListTransactionEventCopyWith<$Res> {
  _$GetListTransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$GetListTransactionEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl();

  @override
  String toString() {
    return 'GetListTransactionEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements GetListTransactionEvent {
  const factory _Fetch() = _$FetchImpl;
}

/// @nodoc
mixin _$GetListTransactionState {
  GetListTransactionStatus get status => throw _privateConstructorUsedError;
  List<RentTransactionModel>? get data => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetListTransactionStateCopyWith<GetListTransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetListTransactionStateCopyWith<$Res> {
  factory $GetListTransactionStateCopyWith(GetListTransactionState value,
          $Res Function(GetListTransactionState) then) =
      _$GetListTransactionStateCopyWithImpl<$Res, GetListTransactionState>;
  @useResult
  $Res call(
      {GetListTransactionStatus status,
      List<RentTransactionModel>? data,
      Object? error});
}

/// @nodoc
class _$GetListTransactionStateCopyWithImpl<$Res,
        $Val extends GetListTransactionState>
    implements $GetListTransactionStateCopyWith<$Res> {
  _$GetListTransactionStateCopyWithImpl(this._value, this._then);

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
              as GetListTransactionStatus,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<RentTransactionModel>?,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetListTransactionStateImplCopyWith<$Res>
    implements $GetListTransactionStateCopyWith<$Res> {
  factory _$$GetListTransactionStateImplCopyWith(
          _$GetListTransactionStateImpl value,
          $Res Function(_$GetListTransactionStateImpl) then) =
      __$$GetListTransactionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GetListTransactionStatus status,
      List<RentTransactionModel>? data,
      Object? error});
}

/// @nodoc
class __$$GetListTransactionStateImplCopyWithImpl<$Res>
    extends _$GetListTransactionStateCopyWithImpl<$Res,
        _$GetListTransactionStateImpl>
    implements _$$GetListTransactionStateImplCopyWith<$Res> {
  __$$GetListTransactionStateImplCopyWithImpl(
      _$GetListTransactionStateImpl _value,
      $Res Function(_$GetListTransactionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_$GetListTransactionStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GetListTransactionStatus,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<RentTransactionModel>?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$GetListTransactionStateImpl implements _GetListTransactionState {
  const _$GetListTransactionStateImpl(
      {this.status = GetListTransactionStatus.initial,
      final List<RentTransactionModel>? data,
      this.error})
      : _data = data;

  @override
  @JsonKey()
  final GetListTransactionStatus status;
  final List<RentTransactionModel>? _data;
  @override
  List<RentTransactionModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Object? error;

  @override
  String toString() {
    return 'GetListTransactionState(status: $status, data: $data, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetListTransactionStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetListTransactionStateImplCopyWith<_$GetListTransactionStateImpl>
      get copyWith => __$$GetListTransactionStateImplCopyWithImpl<
          _$GetListTransactionStateImpl>(this, _$identity);
}

abstract class _GetListTransactionState implements GetListTransactionState {
  const factory _GetListTransactionState(
      {final GetListTransactionStatus status,
      final List<RentTransactionModel>? data,
      final Object? error}) = _$GetListTransactionStateImpl;

  @override
  GetListTransactionStatus get status;
  @override
  List<RentTransactionModel>? get data;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$GetListTransactionStateImplCopyWith<_$GetListTransactionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
