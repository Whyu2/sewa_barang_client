// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name_description_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NameDescriptionModelImpl _$$NameDescriptionModelImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$NameDescriptionModelImpl',
      json,
      ($checkedConvert) {
        final val = _$NameDescriptionModelImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$NameDescriptionModelImplToJson(
        _$NameDescriptionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };
