// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'return_transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReturnTransactionEvent {
  int get id => throw _privateConstructorUsedError;
  DateTime get returnDate => throw _privateConstructorUsedError;
  String get returnProofPath => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id, DateTime returnDate, String returnProofPath)
        submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, DateTime returnDate, String returnProofPath)?
        submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, DateTime returnDate, String returnProofPath)?
        submit,
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
  $ReturnTransactionEventCopyWith<ReturnTransactionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnTransactionEventCopyWith<$Res> {
  factory $ReturnTransactionEventCopyWith(ReturnTransactionEvent value,
          $Res Function(ReturnTransactionEvent) then) =
      _$ReturnTransactionEventCopyWithImpl<$Res, ReturnTransactionEvent>;
  @useResult
  $Res call({int id, DateTime returnDate, String returnProofPath});
}

/// @nodoc
class _$ReturnTransactionEventCopyWithImpl<$Res,
        $Val extends ReturnTransactionEvent>
    implements $ReturnTransactionEventCopyWith<$Res> {
  _$ReturnTransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? returnDate = null,
    Object? returnProofPath = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      returnProofPath: null == returnProofPath
          ? _value.returnProofPath
          : returnProofPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmitImplCopyWith<$Res>
    implements $ReturnTransactionEventCopyWith<$Res> {
  factory _$$SubmitImplCopyWith(
          _$SubmitImpl value, $Res Function(_$SubmitImpl) then) =
      __$$SubmitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, DateTime returnDate, String returnProofPath});
}

/// @nodoc
class __$$SubmitImplCopyWithImpl<$Res>
    extends _$ReturnTransactionEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
      _$SubmitImpl _value, $Res Function(_$SubmitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? returnDate = null,
    Object? returnProofPath = null,
  }) {
    return _then(_$SubmitImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      returnProofPath: null == returnProofPath
          ? _value.returnProofPath
          : returnProofPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubmitImpl implements _Submit {
  const _$SubmitImpl(
      {required this.id,
      required this.returnDate,
      required this.returnProofPath});

  @override
  final int id;
  @override
  final DateTime returnDate;
  @override
  final String returnProofPath;

  @override
  String toString() {
    return 'ReturnTransactionEvent.submit(id: $id, returnDate: $returnDate, returnProofPath: $returnProofPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.returnDate, returnDate) ||
                other.returnDate == returnDate) &&
            (identical(other.returnProofPath, returnProofPath) ||
                other.returnProofPath == returnProofPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, returnDate, returnProofPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitImplCopyWith<_$SubmitImpl> get copyWith =>
      __$$SubmitImplCopyWithImpl<_$SubmitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id, DateTime returnDate, String returnProofPath)
        submit,
  }) {
    return submit(id, returnDate, returnProofPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, DateTime returnDate, String returnProofPath)?
        submit,
  }) {
    return submit?.call(id, returnDate, returnProofPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, DateTime returnDate, String returnProofPath)?
        submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(id, returnDate, returnProofPath);
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

abstract class _Submit implements ReturnTransactionEvent {
  const factory _Submit(
      {required final int id,
      required final DateTime returnDate,
      required final String returnProofPath}) = _$SubmitImpl;

  @override
  int get id;
  @override
  DateTime get returnDate;
  @override
  String get returnProofPath;
  @override
  @JsonKey(ignore: true)
  _$$SubmitImplCopyWith<_$SubmitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReturnTransactionState {
  ReturnTransactionStatus get status => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReturnTransactionStateCopyWith<ReturnTransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnTransactionStateCopyWith<$Res> {
  factory $ReturnTransactionStateCopyWith(ReturnTransactionState value,
          $Res Function(ReturnTransactionState) then) =
      _$ReturnTransactionStateCopyWithImpl<$Res, ReturnTransactionState>;
  @useResult
  $Res call({ReturnTransactionStatus status, Object? error, dynamic data});
}

/// @nodoc
class _$ReturnTransactionStateCopyWithImpl<$Res,
        $Val extends ReturnTransactionState>
    implements $ReturnTransactionStateCopyWith<$Res> {
  _$ReturnTransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReturnTransactionStatus,
      error: freezed == error ? _value.error : error,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReturnTransactionStateImplCopyWith<$Res>
    implements $ReturnTransactionStateCopyWith<$Res> {
  factory _$$ReturnTransactionStateImplCopyWith(
          _$ReturnTransactionStateImpl value,
          $Res Function(_$ReturnTransactionStateImpl) then) =
      __$$ReturnTransactionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ReturnTransactionStatus status, Object? error, dynamic data});
}

/// @nodoc
class __$$ReturnTransactionStateImplCopyWithImpl<$Res>
    extends _$ReturnTransactionStateCopyWithImpl<$Res,
        _$ReturnTransactionStateImpl>
    implements _$$ReturnTransactionStateImplCopyWith<$Res> {
  __$$ReturnTransactionStateImplCopyWithImpl(
      _$ReturnTransactionStateImpl _value,
      $Res Function(_$ReturnTransactionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ReturnTransactionStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReturnTransactionStatus,
      error: freezed == error ? _value.error : error,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ReturnTransactionStateImpl implements _ReturnTransactionState {
  const _$ReturnTransactionStateImpl(
      {this.status = ReturnTransactionStatus.initial, this.error, this.data});

  @override
  @JsonKey()
  final ReturnTransactionStatus status;
  @override
  final Object? error;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'ReturnTransactionState(status: $status, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnTransactionStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReturnTransactionStateImplCopyWith<_$ReturnTransactionStateImpl>
      get copyWith => __$$ReturnTransactionStateImplCopyWithImpl<
          _$ReturnTransactionStateImpl>(this, _$identity);
}

abstract class _ReturnTransactionState implements ReturnTransactionState {
  const factory _ReturnTransactionState(
      {final ReturnTransactionStatus status,
      final Object? error,
      final dynamic data}) = _$ReturnTransactionStateImpl;

  @override
  ReturnTransactionStatus get status;
  @override
  Object? get error;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$ReturnTransactionStateImplCopyWith<_$ReturnTransactionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
