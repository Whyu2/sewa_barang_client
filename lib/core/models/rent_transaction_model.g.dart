// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rent_transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RentTransactionModelImpl _$$RentTransactionModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$RentTransactionModelImpl',
      json,
      ($checkedConvert) {
        final val = _$RentTransactionModelImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          productId: $checkedConvert('product_id', (v) => (v as num).toInt()),
          regionId: $checkedConvert('region_id', (v) => (v as num).toInt()),
          renterName: $checkedConvert('renter_name', (v) => v as String),
          renterPhone: $checkedConvert('renter_phone', (v) => v as String),
          renterDate:
              $checkedConvert('rent_date', (v) => DateTime.parse(v as String)),
          qty: $checkedConvert('qty', (v) => (v as num).toInt()),
          expectedReturnDate: $checkedConvert(
              'expected_return_date', (v) => DateTime.parse(v as String)),
          rentPrice: $checkedConvert('rent_price', (v) => (v as num).toInt()),
          returnDate: $checkedConvert('return_date',
              (v) => v == null ? null : DateTime.parse(v as String)),
          status: $checkedConvert('status',
              (v) => $enumDecodeNullable(_$RentTransactionStatusEnumMap, v)),
          notes: $checkedConvert('notes', (v) => v as String?),
          pickupProofUrl:
              $checkedConvert('pickup_proof_url', (v) => v as String?),
          returnProofUrl:
              $checkedConvert('return_proof_url', (v) => v as String?),
          region: $checkedConvert(
              'region',
              (v) => v == null
                  ? null
                  : NameDescriptionModel.fromJson(v as Map<String, dynamic>)),
          product: $checkedConvert(
              'product',
              (v) => v == null
                  ? null
                  : ProductModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {
        'productId': 'product_id',
        'regionId': 'region_id',
        'renterName': 'renter_name',
        'renterPhone': 'renter_phone',
        'renterDate': 'rent_date',
        'expectedReturnDate': 'expected_return_date',
        'rentPrice': 'rent_price',
        'returnDate': 'return_date',
        'pickupProofUrl': 'pickup_proof_url',
        'returnProofUrl': 'return_proof_url'
      },
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
      'rent_price': instance.rentPrice,
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
