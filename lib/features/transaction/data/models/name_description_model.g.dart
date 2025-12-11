// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name_description_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NameDescriptionModelImpl _$$NameDescriptionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NameDescriptionModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$NameDescriptionModelImplToJson(
        _$NameDescriptionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };
