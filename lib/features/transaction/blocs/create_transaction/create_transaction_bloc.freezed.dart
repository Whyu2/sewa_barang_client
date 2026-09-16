// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_transaction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateTransactionEvent {
  String get qrUuid => throw _privateConstructorUsedError;
  int get regionId => throw _privateConstructorUsedError;
  String get renterName => throw _privateConstructorUsedError;
  String get renterPhone => throw _privateConstructorUsedError;
  DateTime get rentDate => throw _privateConstructorUsedError;
  DateTime get expectedReturnDate => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;
  int get rentPrice => throw _privateConstructorUsedError;
  String get pickupProofPath => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String qrUuid,
            int regionId,
            String renterName,
            String renterPhone,
            DateTime rentDate,
            DateTime expectedReturnDate,
            int qty,
            int rentPrice,
            String pickupProofPath,
            String? notes)
        submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String qrUuid,
            int regionId,
            String renterName,
            String renterPhone,
            DateTime rentDate,
            DateTime expectedReturnDate,
            int qty,
            int rentPrice,
            String pickupProofPath,
            String? notes)?
        submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String qrUuid,
            int regionId,
            String renterName,
            String renterPhone,
            DateTime rentDate,
            DateTime expectedReturnDate,
            int qty,
            int rentPrice,
            String pickupProofPath,
            String? notes)?
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
  $CreateTransactionEventCopyWith<CreateTransactionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTransactionEventCopyWith<$Res> {
  factory $CreateTransactionEventCopyWith(CreateTransactionEvent value,
          $Res Function(CreateTransactionEvent) then) =
      _$CreateTransactionEventCopyWithImpl<$Res, CreateTransactionEvent>;
  @useResult
  $Res call(
      {String qrUuid,
      int regionId,
      String renterName,
      String renterPhone,
      DateTime rentDate,
      DateTime expectedReturnDate,
      int qty,
      int rentPrice,
      String pickupProofPath,
      String? notes});
}

/// @nodoc
class _$CreateTransactionEventCopyWithImpl<$Res,
        $Val extends CreateTransactionEvent>
    implements $CreateTransactionEventCopyWith<$Res> {
  _$CreateTransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qrUuid = null,
    Object? regionId = null,
    Object? renterName = null,
    Object? renterPhone = null,
    Object? rentDate = null,
    Object? expectedReturnDate = null,
    Object? qty = null,
    Object? rentPrice = null,
    Object? pickupProofPath = null,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      qrUuid: null == qrUuid
          ? _value.qrUuid
          : qrUuid // ignore: cast_nullable_to_non_nullable
              as String,
      regionId: null == regionId
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as int,
      renterName: null == renterName
          ? _value.renterName
          : renterName // ignore: cast_nullable_to_non_nullable
              as String,
      renterPhone: null == renterPhone
          ? _value.renterPhone
          : renterPhone // ignore: cast_nullable_to_non_nullable
              as String,
      rentDate: null == rentDate
          ? _value.rentDate
          : rentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expectedReturnDate: null == expectedReturnDate
          ? _value.expectedReturnDate
          : expectedReturnDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      rentPrice: null == rentPrice
          ? _value.rentPrice
          : rentPrice // ignore: cast_nullable_to_non_nullable
              as int,
      pickupProofPath: null == pickupProofPath
          ? _value.pickupProofPath
          : pickupProofPath // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmitImplCopyWith<$Res>
    implements $CreateTransactionEventCopyWith<$Res> {
  factory _$$SubmitImplCopyWith(
          _$SubmitImpl value, $Res Function(_$SubmitImpl) then) =
      __$$SubmitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String qrUuid,
      int regionId,
      String renterName,
      String renterPhone,
      DateTime rentDate,
      DateTime expectedReturnDate,
      int qty,
      int rentPrice,
      String pickupProofPath,
      String? notes});
}

/// @nodoc
class __$$SubmitImplCopyWithImpl<$Res>
    extends _$CreateTransactionEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
      _$SubmitImpl _value, $Res Function(_$SubmitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qrUuid = null,
    Object? regionId = null,
    Object? renterName = null,
    Object? renterPhone = null,
    Object? rentDate = null,
    Object? expectedReturnDate = null,
    Object? qty = null,
    Object? rentPrice = null,
    Object? pickupProofPath = null,
    Object? notes = freezed,
  }) {
    return _then(_$SubmitImpl(
      qrUuid: null == qrUuid
          ? _value.qrUuid
          : qrUuid // ignore: cast_nullable_to_non_nullable
              as String,
      regionId: null == regionId
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as int,
      renterName: null == renterName
          ? _value.renterName
          : renterName // ignore: cast_nullable_to_non_nullable
              as String,
      renterPhone: null == renterPhone
          ? _value.renterPhone
          : renterPhone // ignore: cast_nullable_to_non_nullable
              as String,
      rentDate: null == rentDate
          ? _value.rentDate
          : rentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      expectedReturnDate: null == expectedReturnDate
          ? _value.expectedReturnDate
          : expectedReturnDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      rentPrice: null == rentPrice
          ? _value.rentPrice
          : rentPrice // ignore: cast_nullable_to_non_nullable
              as int,
      pickupProofPath: null == pickupProofPath
          ? _value.pickupProofPath
          : pickupProofPath // ignore: cast_nullable_to_non_nullable
              as String,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SubmitImpl implements _Submit {
  const _$SubmitImpl(
      {required this.qrUuid,
      required this.regionId,
      required this.renterName,
      required this.renterPhone,
      required this.rentDate,
      required this.expectedReturnDate,
      required this.qty,
      required this.rentPrice,
      required this.pickupProofPath,
      this.notes});

  @override
  final String qrUuid;
  @override
  final int regionId;
  @override
  final String renterName;
  @override
  final String renterPhone;
  @override
  final DateTime rentDate;
  @override
  final DateTime expectedReturnDate;
  @override
  final int qty;
  @override
  final int rentPrice;
  @override
  final String pickupProofPath;
  @override
  final String? notes;

  @override
  String toString() {
    return 'CreateTransactionEvent.submit(qrUuid: $qrUuid, regionId: $regionId, renterName: $renterName, renterPhone: $renterPhone, rentDate: $rentDate, expectedReturnDate: $expectedReturnDate, qty: $qty, rentPrice: $rentPrice, pickupProofPath: $pickupProofPath, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitImpl &&
            (identical(other.qrUuid, qrUuid) || other.qrUuid == qrUuid) &&
            (identical(other.regionId, regionId) ||
                other.regionId == regionId) &&
            (identical(other.renterName, renterName) ||
                other.renterName == renterName) &&
            (identical(other.renterPhone, renterPhone) ||
                other.renterPhone == renterPhone) &&
            (identical(other.rentDate, rentDate) ||
                other.rentDate == rentDate) &&
            (identical(other.expectedReturnDate, expectedReturnDate) ||
                other.expectedReturnDate == expectedReturnDate) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.rentPrice, rentPrice) ||
                other.rentPrice == rentPrice) &&
            (identical(other.pickupProofPath, pickupProofPath) ||
                other.pickupProofPath == pickupProofPath) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      qrUuid,
      regionId,
      renterName,
      renterPhone,
      rentDate,
      expectedReturnDate,
      qty,
      rentPrice,
      pickupProofPath,
      notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitImplCopyWith<_$SubmitImpl> get copyWith =>
      __$$SubmitImplCopyWithImpl<_$SubmitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String qrUuid,
            int regionId,
            String renterName,
            String renterPhone,
            DateTime rentDate,
            DateTime expectedReturnDate,
            int qty,
            int rentPrice,
            String pickupProofPath,
            String? notes)
        submit,
  }) {
    return submit(qrUuid, regionId, renterName, renterPhone, rentDate,
        expectedReturnDate, qty, rentPrice, pickupProofPath, notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String qrUuid,
            int regionId,
            String renterName,
            String renterPhone,
            DateTime rentDate,
            DateTime expectedReturnDate,
            int qty,
            int rentPrice,
            String pickupProofPath,
            String? notes)?
        submit,
  }) {
    return submit?.call(qrUuid, regionId, renterName, renterPhone, rentDate,
        expectedReturnDate, qty, rentPrice, pickupProofPath, notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String qrUuid,
            int regionId,
            String renterName,
            String renterPhone,
            DateTime rentDate,
            DateTime expectedReturnDate,
            int qty,
            int rentPrice,
            String pickupProofPath,
            String? notes)?
        submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(qrUuid, regionId, renterName, renterPhone, rentDate,
          expectedReturnDate, qty, rentPrice, pickupProofPath, notes);
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

abstract class _Submit implements CreateTransactionEvent {
  const factory _Submit(
      {required final String qrUuid,
      required final int regionId,
      required final String renterName,
      required final String renterPhone,
      required final DateTime rentDate,
      required final DateTime expectedReturnDate,
      required final int qty,
      required final int rentPrice,
      required final String pickupProofPath,
      final String? notes}) = _$SubmitImpl;

  @override
  String get qrUuid;
  @override
  int get regionId;
  @override
  String get renterName;
  @override
  String get renterPhone;
  @override
  DateTime get rentDate;
  @override
  DateTime get expectedReturnDate;
  @override
  int get qty;
  @override
  int get rentPrice;
  @override
  String get pickupProofPath;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$SubmitImplCopyWith<_$SubmitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateTransactionState {
  CreateTransactionStatus get status => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateTransactionStateCopyWith<CreateTransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTransactionStateCopyWith<$Res> {
  factory $CreateTransactionStateCopyWith(CreateTransactionState value,
          $Res Function(CreateTransactionState) then) =
      _$CreateTransactionStateCopyWithImpl<$Res, CreateTransactionState>;
  @useResult
  $Res call({CreateTransactionStatus status, Object? error, dynamic data});
}

/// @nodoc
class _$CreateTransactionStateCopyWithImpl<$Res,
        $Val extends CreateTransactionState>
    implements $CreateTransactionStateCopyWith<$Res> {
  _$CreateTransactionStateCopyWithImpl(this._value, this._then);

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
              as CreateTransactionStatus,
      error: freezed == error ? _value.error : error,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTransactionStateImplCopyWith<$Res>
    implements $CreateTransactionStateCopyWith<$Res> {
  factory _$$CreateTransactionStateImplCopyWith(
          _$CreateTransactionStateImpl value,
          $Res Function(_$CreateTransactionStateImpl) then) =
      __$$CreateTransactionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateTransactionStatus status, Object? error, dynamic data});
}

/// @nodoc
class __$$CreateTransactionStateImplCopyWithImpl<$Res>
    extends _$CreateTransactionStateCopyWithImpl<$Res,
        _$CreateTransactionStateImpl>
    implements _$$CreateTransactionStateImplCopyWith<$Res> {
  __$$CreateTransactionStateImplCopyWithImpl(
      _$CreateTransactionStateImpl _value,
      $Res Function(_$CreateTransactionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CreateTransactionStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CreateTransactionStatus,
      error: freezed == error ? _value.error : error,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$CreateTransactionStateImpl implements _CreateTransactionState {
  const _$CreateTransactionStateImpl(
      {this.status = CreateTransactionStatus.initial, this.error, this.data});

  @override
  @JsonKey()
  final CreateTransactionStatus status;
  @override
  final Object? error;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'CreateTransactionState(status: $status, error: $error, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTransactionStateImpl &&
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
  _$$CreateTransactionStateImplCopyWith<_$CreateTransactionStateImpl>
      get copyWith => __$$CreateTransactionStateImplCopyWithImpl<
          _$CreateTransactionStateImpl>(this, _$identity);
}

abstract class _CreateTransactionState implements CreateTransactionState {
  const factory _CreateTransactionState(
      {final CreateTransactionStatus status,
      final Object? error,
      final dynamic data}) = _$CreateTransactionStateImpl;

  @override
  CreateTransactionStatus get status;
  @override
  Object? get error;
  @override
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$CreateTransactionStateImplCopyWith<_$CreateTransactionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
