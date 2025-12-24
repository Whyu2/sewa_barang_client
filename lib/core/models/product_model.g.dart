// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      categoryId: (json['category_id'] as num).toInt(),
      categoryName: json['category_name'] as String,
      qty: (json['qty'] as num).toInt(),
      qrCodeUrl: json['qr_code_url'] as String,
      qrUuid: json['qr_uuid'] as String,
      photoUrl: json['photo_url'] as String?,
      status: json['status'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category_id': instance.categoryId,
      'category_name': instance.categoryName,
      'qty': instance.qty,
      'qr_code_url': instance.qrCodeUrl,
      'qr_uuid': instance.qrUuid,
      'photo_url': instance.photoUrl,
      'status': instance.status,
      'description': instance.description,
    };
