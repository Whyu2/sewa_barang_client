// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ProductModelImpl',
      json,
      ($checkedConvert) {
        final val = _$ProductModelImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          name: $checkedConvert('name', (v) => v as String),
          categoryId: $checkedConvert('category_id', (v) => (v as num).toInt()),
          categoryName: $checkedConvert('category_name', (v) => v as String),
          qrCodeUrl: $checkedConvert('qr_code_url', (v) => v as String),
          qrUuid: $checkedConvert('qr_uuid', (v) => v as String),
          photoUrl: $checkedConvert('photo_url', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'categoryId': 'category_id',
        'categoryName': 'category_name',
        'qrCodeUrl': 'qr_code_url',
        'qrUuid': 'qr_uuid',
        'photoUrl': 'photo_url'
      },
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category_id': instance.categoryId,
      'category_name': instance.categoryName,
      'qr_code_url': instance.qrCodeUrl,
      'qr_uuid': instance.qrUuid,
      'photo_url': instance.photoUrl,
      'status': instance.status,
      'description': instance.description,
    };
