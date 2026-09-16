// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_log_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionLogModelImpl _$$TransactionLogModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$TransactionLogModelImpl',
      json,
      ($checkedConvert) {
        final val = _$TransactionLogModelImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          transactionId:
              $checkedConvert('transaction_id', (v) => (v as num).toInt()),
          productId: $checkedConvert('product_id', (v) => (v as num).toInt()),
          userId: $checkedConvert('user_id', (v) => (v as num).toInt()),
          action: $checkedConvert('action', (v) => v as String),
          fromStatus: $checkedConvert('from_status', (v) => v as String?),
          toStatus: $checkedConvert('to_status', (v) => v as String?),
          metadata:
              $checkedConvert('metadata', (v) => v as Map<String, dynamic>?),
          createdAt: $checkedConvert('created_at',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {
        'transactionId': 'transaction_id',
        'productId': 'product_id',
        'userId': 'user_id',
        'fromStatus': 'from_status',
        'toStatus': 'to_status',
        'createdAt': 'created_at'
      },
    );

Map<String, dynamic> _$$TransactionLogModelImplToJson(
        _$TransactionLogModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transaction_id': instance.transactionId,
      'product_id': instance.productId,
      'user_id': instance.userId,
      'action': instance.action,
      'from_status': instance.fromStatus,
      'to_status': instance.toStatus,
      'metadata': instance.metadata,
      'created_at': instance.createdAt?.toIso8601String(),
    };
