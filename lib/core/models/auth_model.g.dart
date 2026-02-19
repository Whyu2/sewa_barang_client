// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthModelImpl _$$AuthModelImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$AuthModelImpl',
      json,
      ($checkedConvert) {
        final val = _$AuthModelImpl(
          token: $checkedConvert('token', (v) => v as String),
          user: $checkedConvert(
              'user', (v) => UserModel.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$$AuthModelImplToJson(_$AuthModelImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user.toJson(),
    };
