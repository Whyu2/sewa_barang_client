// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rent_transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RentTransactionModel _$RentTransactionModelFromJson(Map<String, dynamic> json) {
  return _RentTransactionModel.fromJson(json);
}

/// @nodoc
mixin _$RentTransactionModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'region_id')
  int get regionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'renter_name')
  String get renterName => throw _privateConstructorUsedError;
  @JsonKey(name: 'renter_phone')
  String get renterPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'rent_date')
  DateTime get renterDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'qty')
  int get qty => throw _privateConstructorUsedError;
  @JsonKey(name: 'expected_return_date')
  DateTime get expectedReturnDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_date')
  DateTime? get returnDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'notes')
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_proof_url')
  String? get pickupProofUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_proof_url')
  String? get returnProofUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'region')
  NameDescriptionModel? get region => throw _privateConstructorUsedError;
  @JsonKey(name: 'product')
  ProductModel? get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RentTransactionModelCopyWith<RentTransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentTransactionModelCopyWith<$Res> {
  factory $RentTransactionModelCopyWith(RentTransactionModel value,
          $Res Function(RentTransactionModel) then) =
      _$RentTransactionModelCopyWithImpl<$Res, RentTransactionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'region_id') int regionId,
      @JsonKey(name: 'renter_name') String renterName,
      @JsonKey(name: 'renter_phone') String renterPhone,
      @JsonKey(name: 'rent_date') DateTime renterDate,
      @JsonKey(name: 'qty') int qty,
      @JsonKey(name: 'expected_return_date') DateTime expectedReturnDate,
      @JsonKey(name: 'return_date') DateTime? returnDate,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'notes') String? notes,
      @JsonKey(name: 'pickup_proof_url') String? pickupProofUrl,
      @JsonKey(name: 'return_proof_url') String? returnProofUrl,
      @JsonKey(name: 'region') NameDescriptionModel? region,
      @JsonKey(name: 'product') ProductModel? product});

  $NameDescriptionModelCopyWith<$Res>? get region;
  $ProductModelCopyWith<$Res>? get product;
}

/// @nodoc
class _$RentTransactionModelCopyWithImpl<$Res,
        $Val extends RentTransactionModel>
    implements $RentTransactionModelCopyWith<$Res> {
  _$RentTransactionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? regionId = null,
    Object? renterName = null,
    Object? renterPhone = null,
    Object? renterDate = null,
    Object? qty = null,
    Object? expectedReturnDate = null,
    Object? returnDate = freezed,
    Object? status = freezed,
    Object? notes = freezed,
    Object? pickupProofUrl = freezed,
    Object? returnProofUrl = freezed,
    Object? region = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
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
      renterDate: null == renterDate
          ? _value.renterDate
          : renterDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      expectedReturnDate: null == expectedReturnDate
          ? _value.expectedReturnDate
          : expectedReturnDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      returnDate: freezed == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupProofUrl: freezed == pickupProofUrl
          ? _value.pickupProofUrl
          : pickupProofUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      returnProofUrl: freezed == returnProofUrl
          ? _value.returnProofUrl
          : returnProofUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as NameDescriptionModel?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NameDescriptionModelCopyWith<$Res>? get region {
    if (_value.region == null) {
      return null;
    }

    return $NameDescriptionModelCopyWith<$Res>(_value.region!, (value) {
      return _then(_value.copyWith(region: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductModelCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RentTransactionModelImplCopyWith<$Res>
    implements $RentTransactionModelCopyWith<$Res> {
  factory _$$RentTransactionModelImplCopyWith(_$RentTransactionModelImpl value,
          $Res Function(_$RentTransactionModelImpl) then) =
      __$$RentTransactionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'product_id') int productId,
      @JsonKey(name: 'region_id') int regionId,
      @JsonKey(name: 'renter_name') String renterName,
      @JsonKey(name: 'renter_phone') String renterPhone,
      @JsonKey(name: 'rent_date') DateTime renterDate,
      @JsonKey(name: 'qty') int qty,
      @JsonKey(name: 'expected_return_date') DateTime expectedReturnDate,
      @JsonKey(name: 'return_date') DateTime? returnDate,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'notes') String? notes,
      @JsonKey(name: 'pickup_proof_url') String? pickupProofUrl,
      @JsonKey(name: 'return_proof_url') String? returnProofUrl,
      @JsonKey(name: 'region') NameDescriptionModel? region,
      @JsonKey(name: 'product') ProductModel? product});

  @override
  $NameDescriptionModelCopyWith<$Res>? get region;
  @override
  $ProductModelCopyWith<$Res>? get product;
}

/// @nodoc
class __$$RentTransactionModelImplCopyWithImpl<$Res>
    extends _$RentTransactionModelCopyWithImpl<$Res, _$RentTransactionModelImpl>
    implements _$$RentTransactionModelImplCopyWith<$Res> {
  __$$RentTransactionModelImplCopyWithImpl(_$RentTransactionModelImpl _value,
      $Res Function(_$RentTransactionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? regionId = null,
    Object? renterName = null,
    Object? renterPhone = null,
    Object? renterDate = null,
    Object? qty = null,
    Object? expectedReturnDate = null,
    Object? returnDate = freezed,
    Object? status = freezed,
    Object? notes = freezed,
    Object? pickupProofUrl = freezed,
    Object? returnProofUrl = freezed,
    Object? region = freezed,
    Object? product = freezed,
  }) {
    return _then(_$RentTransactionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
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
      renterDate: null == renterDate
          ? _value.renterDate
          : renterDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      expectedReturnDate: null == expectedReturnDate
          ? _value.expectedReturnDate
          : expectedReturnDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      returnDate: freezed == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupProofUrl: freezed == pickupProofUrl
          ? _value.pickupProofUrl
          : pickupProofUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      returnProofUrl: freezed == returnProofUrl
          ? _value.returnProofUrl
          : returnProofUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as NameDescriptionModel?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$RentTransactionModelImpl implements _RentTransactionModel {
  _$RentTransactionModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'product_id') required this.productId,
      @JsonKey(name: 'region_id') required this.regionId,
      @JsonKey(name: 'renter_name') required this.renterName,
      @JsonKey(name: 'renter_phone') required this.renterPhone,
      @JsonKey(name: 'rent_date') required this.renterDate,
      @JsonKey(name: 'qty') required this.qty,
      @JsonKey(name: 'expected_return_date') required this.expectedReturnDate,
      @JsonKey(name: 'return_date') this.returnDate,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'notes') this.notes,
      @JsonKey(name: 'pickup_proof_url') this.pickupProofUrl,
      @JsonKey(name: 'return_proof_url') this.returnProofUrl,
      @JsonKey(name: 'region') this.region,
      @JsonKey(name: 'product') this.product});

  factory _$RentTransactionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RentTransactionModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'product_id')
  final int productId;
  @override
  @JsonKey(name: 'region_id')
  final int regionId;
  @override
  @JsonKey(name: 'renter_name')
  final String renterName;
  @override
  @JsonKey(name: 'renter_phone')
  final String renterPhone;
  @override
  @JsonKey(name: 'rent_date')
  final DateTime renterDate;
  @override
  @JsonKey(name: 'qty')
  final int qty;
  @override
  @JsonKey(name: 'expected_return_date')
  final DateTime expectedReturnDate;
  @override
  @JsonKey(name: 'return_date')
  final DateTime? returnDate;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'notes')
  final String? notes;
  @override
  @JsonKey(name: 'pickup_proof_url')
  final String? pickupProofUrl;
  @override
  @JsonKey(name: 'return_proof_url')
  final String? returnProofUrl;
  @override
  @JsonKey(name: 'region')
  final NameDescriptionModel? region;
  @override
  @JsonKey(name: 'product')
  final ProductModel? product;

  @override
  String toString() {
    return 'RentTransactionModel(id: $id, productId: $productId, regionId: $regionId, renterName: $renterName, renterPhone: $renterPhone, renterDate: $renterDate, qty: $qty, expectedReturnDate: $expectedReturnDate, returnDate: $returnDate, status: $status, notes: $notes, pickupProofUrl: $pickupProofUrl, returnProofUrl: $returnProofUrl, region: $region, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RentTransactionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.regionId, regionId) ||
                other.regionId == regionId) &&
            (identical(other.renterName, renterName) ||
                other.renterName == renterName) &&
            (identical(other.renterPhone, renterPhone) ||
                other.renterPhone == renterPhone) &&
            (identical(other.renterDate, renterDate) ||
                other.renterDate == renterDate) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.expectedReturnDate, expectedReturnDate) ||
                other.expectedReturnDate == expectedReturnDate) &&
            (identical(other.returnDate, returnDate) ||
                other.returnDate == returnDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.pickupProofUrl, pickupProofUrl) ||
                other.pickupProofUrl == pickupProofUrl) &&
            (identical(other.returnProofUrl, returnProofUrl) ||
                other.returnProofUrl == returnProofUrl) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      productId,
      regionId,
      renterName,
      renterPhone,
      renterDate,
      qty,
      expectedReturnDate,
      returnDate,
      status,
      notes,
      pickupProofUrl,
      returnProofUrl,
      region,
      product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RentTransactionModelImplCopyWith<_$RentTransactionModelImpl>
      get copyWith =>
          __$$RentTransactionModelImplCopyWithImpl<_$RentTransactionModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RentTransactionModelImplToJson(
      this,
    );
  }
}

abstract class _RentTransactionModel implements RentTransactionModel {
  factory _RentTransactionModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'product_id') required final int productId,
          @JsonKey(name: 'region_id') required final int regionId,
          @JsonKey(name: 'renter_name') required final String renterName,
          @JsonKey(name: 'renter_phone') required final String renterPhone,
          @JsonKey(name: 'rent_date') required final DateTime renterDate,
          @JsonKey(name: 'qty') required final int qty,
          @JsonKey(name: 'expected_return_date')
          required final DateTime expectedReturnDate,
          @JsonKey(name: 'return_date') final DateTime? returnDate,
          @JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'notes') final String? notes,
          @JsonKey(name: 'pickup_proof_url') final String? pickupProofUrl,
          @JsonKey(name: 'return_proof_url') final String? returnProofUrl,
          @JsonKey(name: 'region') final NameDescriptionModel? region,
          @JsonKey(name: 'product') final ProductModel? product}) =
      _$RentTransactionModelImpl;

  factory _RentTransactionModel.fromJson(Map<String, dynamic> json) =
      _$RentTransactionModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'product_id')
  int get productId;
  @override
  @JsonKey(name: 'region_id')
  int get regionId;
  @override
  @JsonKey(name: 'renter_name')
  String get renterName;
  @override
  @JsonKey(name: 'renter_phone')
  String get renterPhone;
  @override
  @JsonKey(name: 'rent_date')
  DateTime get renterDate;
  @override
  @JsonKey(name: 'qty')
  int get qty;
  @override
  @JsonKey(name: 'expected_return_date')
  DateTime get expectedReturnDate;
  @override
  @JsonKey(name: 'return_date')
  DateTime? get returnDate;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'notes')
  String? get notes;
  @override
  @JsonKey(name: 'pickup_proof_url')
  String? get pickupProofUrl;
  @override
  @JsonKey(name: 'return_proof_url')
  String? get returnProofUrl;
  @override
  @JsonKey(name: 'region')
  NameDescriptionModel? get region;
  @override
  @JsonKey(name: 'product')
  ProductModel? get product;
  @override
  @JsonKey(ignore: true)
  _$$RentTransactionModelImplCopyWith<_$RentTransactionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
