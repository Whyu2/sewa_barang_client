// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_log_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionLogModel _$TransactionLogModelFromJson(Map<String, dynamic> json) {
  return _TransactionLogModel.fromJson(json);
}

/// @nodoc
mixin _$TransactionLogModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_id')
  int get transactionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'action')
  String get action => throw _privateConstructorUsedError;
  @JsonKey(name: 'from_status')
  String? get fromStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'to_status')
  String? get toStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'metadata')
  Map<String, dynamic>? get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionLogModelCopyWith<TransactionLogModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionLogModelCopyWith<$Res> {
  factory $TransactionLogModelCopyWith(
          TransactionLogModel value, $Res Function(TransactionLogModel) then) =
      _$TransactionLogModelCopyWithImpl<$Res, TransactionLogModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'transaction_id') int transactionId,
      @JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'action') String action,
      @JsonKey(name: 'from_status') String? fromStatus,
      @JsonKey(name: 'to_status') String? toStatus,
      @JsonKey(name: 'metadata') Map<String, dynamic>? metadata,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class _$TransactionLogModelCopyWithImpl<$Res, $Val extends TransactionLogModel>
    implements $TransactionLogModelCopyWith<$Res> {
  _$TransactionLogModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionId = null,
    Object? productId = null,
    Object? userId = null,
    Object? action = null,
    Object? fromStatus = freezed,
    Object? toStatus = freezed,
    Object? metadata = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      fromStatus: freezed == fromStatus
          ? _value.fromStatus
          : fromStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      toStatus: freezed == toStatus
          ? _value.toStatus
          : toStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionLogModelImplCopyWith<$Res>
    implements $TransactionLogModelCopyWith<$Res> {
  factory _$$TransactionLogModelImplCopyWith(_$TransactionLogModelImpl value,
          $Res Function(_$TransactionLogModelImpl) then) =
      __$$TransactionLogModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'transaction_id') int transactionId,
      @JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'action') String action,
      @JsonKey(name: 'from_status') String? fromStatus,
      @JsonKey(name: 'to_status') String? toStatus,
      @JsonKey(name: 'metadata') Map<String, dynamic>? metadata,
      @JsonKey(name: 'created_at') DateTime? createdAt});
}

/// @nodoc
class __$$TransactionLogModelImplCopyWithImpl<$Res>
    extends _$TransactionLogModelCopyWithImpl<$Res, _$TransactionLogModelImpl>
    implements _$$TransactionLogModelImplCopyWith<$Res> {
  __$$TransactionLogModelImplCopyWithImpl(_$TransactionLogModelImpl _value,
      $Res Function(_$TransactionLogModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transactionId = null,
    Object? productId = null,
    Object? userId = null,
    Object? action = null,
    Object? fromStatus = freezed,
    Object? toStatus = freezed,
    Object? metadata = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$TransactionLogModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      fromStatus: freezed == fromStatus
          ? _value.fromStatus
          : fromStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      toStatus: freezed == toStatus
          ? _value.toStatus
          : toStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, checked: true)
class _$TransactionLogModelImpl implements _TransactionLogModel {
  _$TransactionLogModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'transaction_id') required this.transactionId,
      @JsonKey(name: 'product_id') required this.productId,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'action') required this.action,
      @JsonKey(name: 'from_status') this.fromStatus,
      @JsonKey(name: 'to_status') this.toStatus,
      @JsonKey(name: 'metadata') final Map<String, dynamic>? metadata,
      @JsonKey(name: 'created_at') this.createdAt})
      : _metadata = metadata;

  factory _$TransactionLogModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionLogModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'transaction_id')
  final int transactionId;
  @override
  @JsonKey(name: 'product_id')
  final int productId;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'action')
  final String action;
  @override
  @JsonKey(name: 'from_status')
  final String? fromStatus;
  @override
  @JsonKey(name: 'to_status')
  final String? toStatus;
  final Map<String, dynamic>? _metadata;
  @override
  @JsonKey(name: 'metadata')
  Map<String, dynamic>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'TransactionLogModel(id: $id, transactionId: $transactionId, productId: $productId, userId: $userId, action: $action, fromStatus: $fromStatus, toStatus: $toStatus, metadata: $metadata, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionLogModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.fromStatus, fromStatus) ||
                other.fromStatus == fromStatus) &&
            (identical(other.toStatus, toStatus) ||
                other.toStatus == toStatus) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      transactionId,
      productId,
      userId,
      action,
      fromStatus,
      toStatus,
      const DeepCollectionEquality().hash(_metadata),
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionLogModelImplCopyWith<_$TransactionLogModelImpl> get copyWith =>
      __$$TransactionLogModelImplCopyWithImpl<_$TransactionLogModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionLogModelImplToJson(
      this,
    );
  }
}

abstract class _TransactionLogModel implements TransactionLogModel {
  factory _TransactionLogModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'transaction_id') required final int transactionId,
          @JsonKey(name: 'product_id') required final int productId,
          @JsonKey(name: 'user_id') required final int userId,
          @JsonKey(name: 'action') required final String action,
          @JsonKey(name: 'from_status') final String? fromStatus,
          @JsonKey(name: 'to_status') final String? toStatus,
          @JsonKey(name: 'metadata') final Map<String, dynamic>? metadata,
          @JsonKey(name: 'created_at') final DateTime? createdAt}) =
      _$TransactionLogModelImpl;

  factory _TransactionLogModel.fromJson(Map<String, dynamic> json) =
      _$TransactionLogModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'transaction_id')
  int get transactionId;
  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'action')
  String get action;
  @override
  @JsonKey(name: 'from_status')
  String? get fromStatus;
  @override
  @JsonKey(name: 'to_status')
  String? get toStatus;
  @override
  @JsonKey(name: 'metadata')
  Map<String, dynamic>? get metadata;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$TransactionLogModelImplCopyWith<_$TransactionLogModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
