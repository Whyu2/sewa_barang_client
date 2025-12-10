import 'package:freezed_annotation/freezed_annotation.dart';

part 'agent_model.freezed.dart';
part 'agent_model.g.dart';

@freezed
class AgentModel with _$AgentModel {
  @JsonSerializable(explicitToJson: true)
  factory AgentModel({
    @JsonKey(name: 'uuid') String? uuid,
    @JsonKey(name: 'displayName') String? displayName,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'developerName') String? developerName,
    @JsonKey(name: 'characterTags') List<String>? characterTags,
    @JsonKey(name: 'displayIcon') String? displayIcon,
    @JsonKey(name: 'displayIconSmall') String? displayIconSmall,
    @JsonKey(name: 'bustPortrait') String? bustPortrait,
    @JsonKey(name: 'fullPortrait') String? fullPortrait,
    @JsonKey(name: 'fullPortraitV2') String? fullPortraitV2,
    @JsonKey(name: 'killfeedPortrait') String? killfeedPortrait,
    @JsonKey(name: 'background') String? background,
    @JsonKey(name: 'backgroundGradientColors')
    List<String>? backgroundGradientColors,
    @JsonKey(name: 'assetPath') String? assetPath,
    @JsonKey(name: 'isFullPortraitRightFacing') bool? isFullPortraitRightFacing,
    @JsonKey(name: 'isPlayableCharacter') bool? isPlayableCharacter,
    @JsonKey(name: 'isAvailableForTest') bool? isAvailableForTest,
    @JsonKey(name: 'isBaseContent') bool? isBaseContent,
    @JsonKey(name: 'role') RoleModel? role,
    @JsonKey(name: 'abilities') List<AbilityModel>? abilities,
  }) = _AgentModel;

  factory AgentModel.fromJson(Map<String, dynamic> json) =>
      _$AgentModelFromJson(json);
}

@freezed
class RoleModel with _$RoleModel {
  @JsonSerializable(explicitToJson: true)
  factory RoleModel({
    @JsonKey(name: 'uuid') String? uuid,
    @JsonKey(name: 'displayName') String? displayName,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'displayIcon') String? displayIcon,
    @JsonKey(name: 'assetPath') String? assetPath,
  }) = _RoleModel;

  factory RoleModel.fromJson(Map<String, dynamic> json) =>
      _$RoleModelFromJson(json);
}

@freezed
class AbilityModel with _$AbilityModel {
  @JsonSerializable(explicitToJson: true)
  factory AbilityModel({
    @JsonKey(name: 'slot') String? slot,
    @JsonKey(name: 'displayName') String? displayName,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'displayIcon') String? displayIcon,
  }) = _AbilityModel;

  factory AbilityModel.fromJson(Map<String, dynamic> json) =>
      _$AbilityModelFromJson(json);
}
