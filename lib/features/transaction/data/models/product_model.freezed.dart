// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String get categoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'qty')
  int get qty => throw _privateConstructorUsedError;
  @JsonKey(name: 'qr_code_url')
  String get qrCodeUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'qr_uuid')
  String get qrUuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_url')
  String? get photoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
          ProductModel value, $Res Function(ProductModel) then) =
      _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'category_id') int categoryId,
      @JsonKey(name: 'category_name') String categoryName,
      @JsonKey(name: 'qty') int qty,
      @JsonKey(name: 'qr_code_url') String qrCodeUrl,
      @JsonKey(name: 'qr_uuid') String qrUuid,
      @JsonKey(name: 'photo_url') String? photoUrl,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? categoryId = null,
    Object? categoryName = null,
    Object? qty = null,
    Object? qrCodeUrl = null,
    Object? qrUuid = null,
    Object? photoUrl = freezed,
    Object? status = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      qrCodeUrl: null == qrCodeUrl
          ? _value.qrCodeUrl
          : qrCodeUrl // ignore: cast_nullable_to_non_nullable
              as String,
      qrUuid: null == qrUuid
          ? _value.qrUuid
          : qrUuid // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
          _$ProductModelImpl value, $Res Function(_$ProductModelImpl) then) =
      __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'category_id') int categoryId,
      @JsonKey(name: 'category_name') String categoryName,
      @JsonKey(name: 'qty') int qty,
      @JsonKey(name: 'qr_code_url') String qrCodeUrl,
      @JsonKey(name: 'qr_uuid') String qrUuid,
      @JsonKey(name: 'photo_url') String? photoUrl,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
      _$ProductModelImpl _value, $Res Function(_$ProductModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? categoryId = null,
    Object? categoryName = null,
    Object? qty = null,
    Object? qrCodeUrl = null,
    Object? qrUuid = null,
    Object? photoUrl = freezed,
    Object? status = null,
    Object? description = freezed,
  }) {
    return _then(_$ProductModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      qrCodeUrl: null == qrCodeUrl
          ? _value.qrCodeUrl
          : qrCodeUrl // ignore: cast_nullable_to_non_nullable
              as String,
      qrUuid: null == qrUuid
          ? _value.qrUuid
          : qrUuid // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ProductModelImpl implements _ProductModel {
  _$ProductModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'category_id') required this.categoryId,
      @JsonKey(name: 'category_name') required this.categoryName,
      @JsonKey(name: 'qty') required this.qty,
      @JsonKey(name: 'qr_code_url') required this.qrCodeUrl,
      @JsonKey(name: 'qr_uuid') required this.qrUuid,
      @JsonKey(name: 'photo_url') required this.photoUrl,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'description') this.description});

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'category_id')
  final int categoryId;
  @override
  @JsonKey(name: 'category_name')
  final String categoryName;
  @override
  @JsonKey(name: 'qty')
  final int qty;
  @override
  @JsonKey(name: 'qr_code_url')
  final String qrCodeUrl;
  @override
  @JsonKey(name: 'qr_uuid')
  final String qrUuid;
  @override
  @JsonKey(name: 'photo_url')
  final String? photoUrl;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'description')
  final String? description;

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, categoryId: $categoryId, categoryName: $categoryName, qty: $qty, qrCodeUrl: $qrCodeUrl, qrUuid: $qrUuid, photoUrl: $photoUrl, status: $status, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.qrCodeUrl, qrCodeUrl) ||
                other.qrCodeUrl == qrCodeUrl) &&
            (identical(other.qrUuid, qrUuid) || other.qrUuid == qrUuid) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, categoryId,
      categoryName, qty, qrCodeUrl, qrUuid, photoUrl, status, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(
      this,
    );
  }
}

abstract class _ProductModel implements ProductModel {
  factory _ProductModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'category_id') required final int categoryId,
          @JsonKey(name: 'category_name') required final String categoryName,
          @JsonKey(name: 'qty') required final int qty,
          @JsonKey(name: 'qr_code_url') required final String qrCodeUrl,
          @JsonKey(name: 'qr_uuid') required final String qrUuid,
          @JsonKey(name: 'photo_url') required final String? photoUrl,
          @JsonKey(name: 'status') required final String status,
          @JsonKey(name: 'description') final String? description}) =
      _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'category_id')
  int get categoryId;
  @override
  @JsonKey(name: 'category_name')
  String get categoryName;
  @override
  @JsonKey(name: 'qty')
  int get qty;
  @override
  @JsonKey(name: 'qr_code_url')
  String get qrCodeUrl;
  @override
  @JsonKey(name: 'qr_uuid')
  String get qrUuid;
  @override
  @JsonKey(name: 'photo_url')
  String? get photoUrl;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
