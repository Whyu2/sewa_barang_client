// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rent_transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RentTransactionModelImpl _$$RentTransactionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RentTransactionModelImpl(
      id: (json['id'] as num).toInt(),
      productId: (json['product_id'] as num).toInt(),
      regionId: (json['region_id'] as num).toInt(),
      renterName: json['renter_name'] as String,
      renterPhone: json['renter_phone'] as String,
      renterDate: DateTime.parse(json['rent_date'] as String),
      qty: (json['qty'] as num).toInt(),
      expectedReturnDate:
          DateTime.parse(json['expected_return_date'] as String),
      returnDate: json['return_date'] == null
          ? null
          : DateTime.parse(json['return_date'] as String),
      status:
          $enumDecodeNullable(_$RentTransactionStatusEnumMap, json['status']),
      notes: json['notes'] as String?,
      pickupProofUrl: json['pickup_proof_url'] as String?,
      returnProofUrl: json['return_proof_url'] as String?,
      region: json['region'] == null
          ? null
          : NameDescriptionModel.fromJson(
              json['region'] as Map<String, dynamic>),
      product: json['product'] == null
          ? null
          : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RentTransactionModelImplToJson(
        _$RentTransactionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'region_id': instance.regionId,
      'renter_name': instance.renterName,
      'renter_phone': instance.renterPhone,
      'rent_date': instance.renterDate.toIso8601String(),
      'qty': instance.qty,
      'expected_return_date': instance.expectedReturnDate.toIso8601String(),
      'return_date': instance.returnDate?.toIso8601String(),
      'status': _$RentTransactionStatusEnumMap[instance.status],
      'notes': instance.notes,
      'pickup_proof_url': instance.pickupProofUrl,
      'return_proof_url': instance.returnProofUrl,
      'region': instance.region?.toJson(),
      'product': instance.product?.toJson(),
    };

const _$RentTransactionStatusEnumMap = {
  RentTransactionStatus.rented: 'rented',
  RentTransactionStatus.done: 'done',
};
