// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AgentModel _$AgentModelFromJson(Map<String, dynamic> json) {
  return _AgentModel.fromJson(json);
}

/// @nodoc
mixin _$AgentModel {
  @JsonKey(name: 'uuid')
  String? get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'displayName')
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'developerName')
  String? get developerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'characterTags')
  List<String>? get characterTags => throw _privateConstructorUsedError;
  @JsonKey(name: 'displayIcon')
  String? get displayIcon => throw _privateConstructorUsedError;
  @JsonKey(name: 'displayIconSmall')
  String? get displayIconSmall => throw _privateConstructorUsedError;
  @JsonKey(name: 'bustPortrait')
  String? get bustPortrait => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullPortrait')
  String? get fullPortrait => throw _privateConstructorUsedError;
  @JsonKey(name: 'fullPortraitV2')
  String? get fullPortraitV2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'killfeedPortrait')
  String? get killfeedPortrait => throw _privateConstructorUsedError;
  @JsonKey(name: 'background')
  String? get background => throw _privateConstructorUsedError;
  @JsonKey(name: 'backgroundGradientColors')
  List<String>? get backgroundGradientColors =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'assetPath')
  String? get assetPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'isFullPortraitRightFacing')
  bool? get isFullPortraitRightFacing => throw _privateConstructorUsedError;
  @JsonKey(name: 'isPlayableCharacter')
  bool? get isPlayableCharacter => throw _privateConstructorUsedError;
  @JsonKey(name: 'isAvailableForTest')
  bool? get isAvailableForTest => throw _privateConstructorUsedError;
  @JsonKey(name: 'isBaseContent')
  bool? get isBaseContent => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  RoleModel? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'abilities')
  List<AbilityModel>? get abilities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgentModelCopyWith<AgentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentModelCopyWith<$Res> {
  factory $AgentModelCopyWith(
          AgentModel value, $Res Function(AgentModel) then) =
      _$AgentModelCopyWithImpl<$Res, AgentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'uuid') String? uuid,
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
      @JsonKey(name: 'isFullPortraitRightFacing')
      bool? isFullPortraitRightFacing,
      @JsonKey(name: 'isPlayableCharacter') bool? isPlayableCharacter,
      @JsonKey(name: 'isAvailableForTest') bool? isAvailableForTest,
      @JsonKey(name: 'isBaseContent') bool? isBaseContent,
      @JsonKey(name: 'role') RoleModel? role,
      @JsonKey(name: 'abilities') List<AbilityModel>? abilities});

  $RoleModelCopyWith<$Res>? get role;
}

/// @nodoc
class _$AgentModelCopyWithImpl<$Res, $Val extends AgentModel>
    implements $AgentModelCopyWith<$Res> {
  _$AgentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? displayName = freezed,
    Object? description = freezed,
    Object? developerName = freezed,
    Object? characterTags = freezed,
    Object? displayIcon = freezed,
    Object? displayIconSmall = freezed,
    Object? bustPortrait = freezed,
    Object? fullPortrait = freezed,
    Object? fullPortraitV2 = freezed,
    Object? killfeedPortrait = freezed,
    Object? background = freezed,
    Object? backgroundGradientColors = freezed,
    Object? assetPath = freezed,
    Object? isFullPortraitRightFacing = freezed,
    Object? isPlayableCharacter = freezed,
    Object? isAvailableForTest = freezed,
    Object? isBaseContent = freezed,
    Object? role = freezed,
    Object? abilities = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      developerName: freezed == developerName
          ? _value.developerName
          : developerName // ignore: cast_nullable_to_non_nullable
              as String?,
      characterTags: freezed == characterTags
          ? _value.characterTags
          : characterTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      displayIconSmall: freezed == displayIconSmall
          ? _value.displayIconSmall
          : displayIconSmall // ignore: cast_nullable_to_non_nullable
              as String?,
      bustPortrait: freezed == bustPortrait
          ? _value.bustPortrait
          : bustPortrait // ignore: cast_nullable_to_non_nullable
              as String?,
      fullPortrait: freezed == fullPortrait
          ? _value.fullPortrait
          : fullPortrait // ignore: cast_nullable_to_non_nullable
              as String?,
      fullPortraitV2: freezed == fullPortraitV2
          ? _value.fullPortraitV2
          : fullPortraitV2 // ignore: cast_nullable_to_non_nullable
              as String?,
      killfeedPortrait: freezed == killfeedPortrait
          ? _value.killfeedPortrait
          : killfeedPortrait // ignore: cast_nullable_to_non_nullable
              as String?,
      background: freezed == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundGradientColors: freezed == backgroundGradientColors
          ? _value.backgroundGradientColors
          : backgroundGradientColors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      assetPath: freezed == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
      isFullPortraitRightFacing: freezed == isFullPortraitRightFacing
          ? _value.isFullPortraitRightFacing
          : isFullPortraitRightFacing // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPlayableCharacter: freezed == isPlayableCharacter
          ? _value.isPlayableCharacter
          : isPlayableCharacter // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAvailableForTest: freezed == isAvailableForTest
          ? _value.isAvailableForTest
          : isAvailableForTest // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBaseContent: freezed == isBaseContent
          ? _value.isBaseContent
          : isBaseContent // ignore: cast_nullable_to_non_nullable
              as bool?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as RoleModel?,
      abilities: freezed == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<AbilityModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoleModelCopyWith<$Res>? get role {
    if (_value.role == null) {
      return null;
    }

    return $RoleModelCopyWith<$Res>(_value.role!, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AgentModelImplCopyWith<$Res>
    implements $AgentModelCopyWith<$Res> {
  factory _$$AgentModelImplCopyWith(
          _$AgentModelImpl value, $Res Function(_$AgentModelImpl) then) =
      __$$AgentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'uuid') String? uuid,
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
      @JsonKey(name: 'isFullPortraitRightFacing')
      bool? isFullPortraitRightFacing,
      @JsonKey(name: 'isPlayableCharacter') bool? isPlayableCharacter,
      @JsonKey(name: 'isAvailableForTest') bool? isAvailableForTest,
      @JsonKey(name: 'isBaseContent') bool? isBaseContent,
      @JsonKey(name: 'role') RoleModel? role,
      @JsonKey(name: 'abilities') List<AbilityModel>? abilities});

  @override
  $RoleModelCopyWith<$Res>? get role;
}

/// @nodoc
class __$$AgentModelImplCopyWithImpl<$Res>
    extends _$AgentModelCopyWithImpl<$Res, _$AgentModelImpl>
    implements _$$AgentModelImplCopyWith<$Res> {
  __$$AgentModelImplCopyWithImpl(
      _$AgentModelImpl _value, $Res Function(_$AgentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? displayName = freezed,
    Object? description = freezed,
    Object? developerName = freezed,
    Object? characterTags = freezed,
    Object? displayIcon = freezed,
    Object? displayIconSmall = freezed,
    Object? bustPortrait = freezed,
    Object? fullPortrait = freezed,
    Object? fullPortraitV2 = freezed,
    Object? killfeedPortrait = freezed,
    Object? background = freezed,
    Object? backgroundGradientColors = freezed,
    Object? assetPath = freezed,
    Object? isFullPortraitRightFacing = freezed,
    Object? isPlayableCharacter = freezed,
    Object? isAvailableForTest = freezed,
    Object? isBaseContent = freezed,
    Object? role = freezed,
    Object? abilities = freezed,
  }) {
    return _then(_$AgentModelImpl(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      developerName: freezed == developerName
          ? _value.developerName
          : developerName // ignore: cast_nullable_to_non_nullable
              as String?,
      characterTags: freezed == characterTags
          ? _value._characterTags
          : characterTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      displayIconSmall: freezed == displayIconSmall
          ? _value.displayIconSmall
          : displayIconSmall // ignore: cast_nullable_to_non_nullable
              as String?,
      bustPortrait: freezed == bustPortrait
          ? _value.bustPortrait
          : bustPortrait // ignore: cast_nullable_to_non_nullable
              as String?,
      fullPortrait: freezed == fullPortrait
          ? _value.fullPortrait
          : fullPortrait // ignore: cast_nullable_to_non_nullable
              as String?,
      fullPortraitV2: freezed == fullPortraitV2
          ? _value.fullPortraitV2
          : fullPortraitV2 // ignore: cast_nullable_to_non_nullable
              as String?,
      killfeedPortrait: freezed == killfeedPortrait
          ? _value.killfeedPortrait
          : killfeedPortrait // ignore: cast_nullable_to_non_nullable
              as String?,
      background: freezed == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundGradientColors: freezed == backgroundGradientColors
          ? _value._backgroundGradientColors
          : backgroundGradientColors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      assetPath: freezed == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
      isFullPortraitRightFacing: freezed == isFullPortraitRightFacing
          ? _value.isFullPortraitRightFacing
          : isFullPortraitRightFacing // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPlayableCharacter: freezed == isPlayableCharacter
          ? _value.isPlayableCharacter
          : isPlayableCharacter // ignore: cast_nullable_to_non_nullable
              as bool?,
      isAvailableForTest: freezed == isAvailableForTest
          ? _value.isAvailableForTest
          : isAvailableForTest // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBaseContent: freezed == isBaseContent
          ? _value.isBaseContent
          : isBaseContent // ignore: cast_nullable_to_non_nullable
              as bool?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as RoleModel?,
      abilities: freezed == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<AbilityModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AgentModelImpl implements _AgentModel {
  _$AgentModelImpl(
      {@JsonKey(name: 'uuid') this.uuid,
      @JsonKey(name: 'displayName') this.displayName,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'developerName') this.developerName,
      @JsonKey(name: 'characterTags') final List<String>? characterTags,
      @JsonKey(name: 'displayIcon') this.displayIcon,
      @JsonKey(name: 'displayIconSmall') this.displayIconSmall,
      @JsonKey(name: 'bustPortrait') this.bustPortrait,
      @JsonKey(name: 'fullPortrait') this.fullPortrait,
      @JsonKey(name: 'fullPortraitV2') this.fullPortraitV2,
      @JsonKey(name: 'killfeedPortrait') this.killfeedPortrait,
      @JsonKey(name: 'background') this.background,
      @JsonKey(name: 'backgroundGradientColors')
      final List<String>? backgroundGradientColors,
      @JsonKey(name: 'assetPath') this.assetPath,
      @JsonKey(name: 'isFullPortraitRightFacing')
      this.isFullPortraitRightFacing,
      @JsonKey(name: 'isPlayableCharacter') this.isPlayableCharacter,
      @JsonKey(name: 'isAvailableForTest') this.isAvailableForTest,
      @JsonKey(name: 'isBaseContent') this.isBaseContent,
      @JsonKey(name: 'role') this.role,
      @JsonKey(name: 'abilities') final List<AbilityModel>? abilities})
      : _characterTags = characterTags,
        _backgroundGradientColors = backgroundGradientColors,
        _abilities = abilities;

  factory _$AgentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgentModelImplFromJson(json);

  @override
  @JsonKey(name: 'uuid')
  final String? uuid;
  @override
  @JsonKey(name: 'displayName')
  final String? displayName;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'developerName')
  final String? developerName;
  final List<String>? _characterTags;
  @override
  @JsonKey(name: 'characterTags')
  List<String>? get characterTags {
    final value = _characterTags;
    if (value == null) return null;
    if (_characterTags is EqualUnmodifiableListView) return _characterTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'displayIcon')
  final String? displayIcon;
  @override
  @JsonKey(name: 'displayIconSmall')
  final String? displayIconSmall;
  @override
  @JsonKey(name: 'bustPortrait')
  final String? bustPortrait;
  @override
  @JsonKey(name: 'fullPortrait')
  final String? fullPortrait;
  @override
  @JsonKey(name: 'fullPortraitV2')
  final String? fullPortraitV2;
  @override
  @JsonKey(name: 'killfeedPortrait')
  final String? killfeedPortrait;
  @override
  @JsonKey(name: 'background')
  final String? background;
  final List<String>? _backgroundGradientColors;
  @override
  @JsonKey(name: 'backgroundGradientColors')
  List<String>? get backgroundGradientColors {
    final value = _backgroundGradientColors;
    if (value == null) return null;
    if (_backgroundGradientColors is EqualUnmodifiableListView)
      return _backgroundGradientColors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'assetPath')
  final String? assetPath;
  @override
  @JsonKey(name: 'isFullPortraitRightFacing')
  final bool? isFullPortraitRightFacing;
  @override
  @JsonKey(name: 'isPlayableCharacter')
  final bool? isPlayableCharacter;
  @override
  @JsonKey(name: 'isAvailableForTest')
  final bool? isAvailableForTest;
  @override
  @JsonKey(name: 'isBaseContent')
  final bool? isBaseContent;
  @override
  @JsonKey(name: 'role')
  final RoleModel? role;
  final List<AbilityModel>? _abilities;
  @override
  @JsonKey(name: 'abilities')
  List<AbilityModel>? get abilities {
    final value = _abilities;
    if (value == null) return null;
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AgentModel(uuid: $uuid, displayName: $displayName, description: $description, developerName: $developerName, characterTags: $characterTags, displayIcon: $displayIcon, displayIconSmall: $displayIconSmall, bustPortrait: $bustPortrait, fullPortrait: $fullPortrait, fullPortraitV2: $fullPortraitV2, killfeedPortrait: $killfeedPortrait, background: $background, backgroundGradientColors: $backgroundGradientColors, assetPath: $assetPath, isFullPortraitRightFacing: $isFullPortraitRightFacing, isPlayableCharacter: $isPlayableCharacter, isAvailableForTest: $isAvailableForTest, isBaseContent: $isBaseContent, role: $role, abilities: $abilities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgentModelImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.developerName, developerName) ||
                other.developerName == developerName) &&
            const DeepCollectionEquality()
                .equals(other._characterTags, _characterTags) &&
            (identical(other.displayIcon, displayIcon) ||
                other.displayIcon == displayIcon) &&
            (identical(other.displayIconSmall, displayIconSmall) ||
                other.displayIconSmall == displayIconSmall) &&
            (identical(other.bustPortrait, bustPortrait) ||
                other.bustPortrait == bustPortrait) &&
            (identical(other.fullPortrait, fullPortrait) ||
                other.fullPortrait == fullPortrait) &&
            (identical(other.fullPortraitV2, fullPortraitV2) ||
                other.fullPortraitV2 == fullPortraitV2) &&
            (identical(other.killfeedPortrait, killfeedPortrait) ||
                other.killfeedPortrait == killfeedPortrait) &&
            (identical(other.background, background) ||
                other.background == background) &&
            const DeepCollectionEquality().equals(
                other._backgroundGradientColors, _backgroundGradientColors) &&
            (identical(other.assetPath, assetPath) ||
                other.assetPath == assetPath) &&
            (identical(other.isFullPortraitRightFacing,
                    isFullPortraitRightFacing) ||
                other.isFullPortraitRightFacing == isFullPortraitRightFacing) &&
            (identical(other.isPlayableCharacter, isPlayableCharacter) ||
                other.isPlayableCharacter == isPlayableCharacter) &&
            (identical(other.isAvailableForTest, isAvailableForTest) ||
                other.isAvailableForTest == isAvailableForTest) &&
            (identical(other.isBaseContent, isBaseContent) ||
                other.isBaseContent == isBaseContent) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        uuid,
        displayName,
        description,
        developerName,
        const DeepCollectionEquality().hash(_characterTags),
        displayIcon,
        displayIconSmall,
        bustPortrait,
        fullPortrait,
        fullPortraitV2,
        killfeedPortrait,
        background,
        const DeepCollectionEquality().hash(_backgroundGradientColors),
        assetPath,
        isFullPortraitRightFacing,
        isPlayableCharacter,
        isAvailableForTest,
        isBaseContent,
        role,
        const DeepCollectionEquality().hash(_abilities)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgentModelImplCopyWith<_$AgentModelImpl> get copyWith =>
      __$$AgentModelImplCopyWithImpl<_$AgentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgentModelImplToJson(
      this,
    );
  }
}

abstract class _AgentModel implements AgentModel {
  factory _AgentModel(
          {@JsonKey(name: 'uuid') final String? uuid,
          @JsonKey(name: 'displayName') final String? displayName,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'developerName') final String? developerName,
          @JsonKey(name: 'characterTags') final List<String>? characterTags,
          @JsonKey(name: 'displayIcon') final String? displayIcon,
          @JsonKey(name: 'displayIconSmall') final String? displayIconSmall,
          @JsonKey(name: 'bustPortrait') final String? bustPortrait,
          @JsonKey(name: 'fullPortrait') final String? fullPortrait,
          @JsonKey(name: 'fullPortraitV2') final String? fullPortraitV2,
          @JsonKey(name: 'killfeedPortrait') final String? killfeedPortrait,
          @JsonKey(name: 'background') final String? background,
          @JsonKey(name: 'backgroundGradientColors')
          final List<String>? backgroundGradientColors,
          @JsonKey(name: 'assetPath') final String? assetPath,
          @JsonKey(name: 'isFullPortraitRightFacing')
          final bool? isFullPortraitRightFacing,
          @JsonKey(name: 'isPlayableCharacter') final bool? isPlayableCharacter,
          @JsonKey(name: 'isAvailableForTest') final bool? isAvailableForTest,
          @JsonKey(name: 'isBaseContent') final bool? isBaseContent,
          @JsonKey(name: 'role') final RoleModel? role,
          @JsonKey(name: 'abilities') final List<AbilityModel>? abilities}) =
      _$AgentModelImpl;

  factory _AgentModel.fromJson(Map<String, dynamic> json) =
      _$AgentModelImpl.fromJson;

  @override
  @JsonKey(name: 'uuid')
  String? get uuid;
  @override
  @JsonKey(name: 'displayName')
  String? get displayName;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'developerName')
  String? get developerName;
  @override
  @JsonKey(name: 'characterTags')
  List<String>? get characterTags;
  @override
  @JsonKey(name: 'displayIcon')
  String? get displayIcon;
  @override
  @JsonKey(name: 'displayIconSmall')
  String? get displayIconSmall;
  @override
  @JsonKey(name: 'bustPortrait')
  String? get bustPortrait;
  @override
  @JsonKey(name: 'fullPortrait')
  String? get fullPortrait;
  @override
  @JsonKey(name: 'fullPortraitV2')
  String? get fullPortraitV2;
  @override
  @JsonKey(name: 'killfeedPortrait')
  String? get killfeedPortrait;
  @override
  @JsonKey(name: 'background')
  String? get background;
  @override
  @JsonKey(name: 'backgroundGradientColors')
  List<String>? get backgroundGradientColors;
  @override
  @JsonKey(name: 'assetPath')
  String? get assetPath;
  @override
  @JsonKey(name: 'isFullPortraitRightFacing')
  bool? get isFullPortraitRightFacing;
  @override
  @JsonKey(name: 'isPlayableCharacter')
  bool? get isPlayableCharacter;
  @override
  @JsonKey(name: 'isAvailableForTest')
  bool? get isAvailableForTest;
  @override
  @JsonKey(name: 'isBaseContent')
  bool? get isBaseContent;
  @override
  @JsonKey(name: 'role')
  RoleModel? get role;
  @override
  @JsonKey(name: 'abilities')
  List<AbilityModel>? get abilities;
  @override
  @JsonKey(ignore: true)
  _$$AgentModelImplCopyWith<_$AgentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoleModel _$RoleModelFromJson(Map<String, dynamic> json) {
  return _RoleModel.fromJson(json);
}

/// @nodoc
mixin _$RoleModel {
  @JsonKey(name: 'uuid')
  String? get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'displayName')
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'displayIcon')
  String? get displayIcon => throw _privateConstructorUsedError;
  @JsonKey(name: 'assetPath')
  String? get assetPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoleModelCopyWith<RoleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleModelCopyWith<$Res> {
  factory $RoleModelCopyWith(RoleModel value, $Res Function(RoleModel) then) =
      _$RoleModelCopyWithImpl<$Res, RoleModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'uuid') String? uuid,
      @JsonKey(name: 'displayName') String? displayName,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'displayIcon') String? displayIcon,
      @JsonKey(name: 'assetPath') String? assetPath});
}

/// @nodoc
class _$RoleModelCopyWithImpl<$Res, $Val extends RoleModel>
    implements $RoleModelCopyWith<$Res> {
  _$RoleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? displayName = freezed,
    Object? description = freezed,
    Object? displayIcon = freezed,
    Object? assetPath = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      assetPath: freezed == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoleModelImplCopyWith<$Res>
    implements $RoleModelCopyWith<$Res> {
  factory _$$RoleModelImplCopyWith(
          _$RoleModelImpl value, $Res Function(_$RoleModelImpl) then) =
      __$$RoleModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'uuid') String? uuid,
      @JsonKey(name: 'displayName') String? displayName,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'displayIcon') String? displayIcon,
      @JsonKey(name: 'assetPath') String? assetPath});
}

/// @nodoc
class __$$RoleModelImplCopyWithImpl<$Res>
    extends _$RoleModelCopyWithImpl<$Res, _$RoleModelImpl>
    implements _$$RoleModelImplCopyWith<$Res> {
  __$$RoleModelImplCopyWithImpl(
      _$RoleModelImpl _value, $Res Function(_$RoleModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? displayName = freezed,
    Object? description = freezed,
    Object? displayIcon = freezed,
    Object? assetPath = freezed,
  }) {
    return _then(_$RoleModelImpl(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      assetPath: freezed == assetPath
          ? _value.assetPath
          : assetPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$RoleModelImpl implements _RoleModel {
  _$RoleModelImpl(
      {@JsonKey(name: 'uuid') this.uuid,
      @JsonKey(name: 'displayName') this.displayName,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'displayIcon') this.displayIcon,
      @JsonKey(name: 'assetPath') this.assetPath});

  factory _$RoleModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleModelImplFromJson(json);

  @override
  @JsonKey(name: 'uuid')
  final String? uuid;
  @override
  @JsonKey(name: 'displayName')
  final String? displayName;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'displayIcon')
  final String? displayIcon;
  @override
  @JsonKey(name: 'assetPath')
  final String? assetPath;

  @override
  String toString() {
    return 'RoleModel(uuid: $uuid, displayName: $displayName, description: $description, displayIcon: $displayIcon, assetPath: $assetPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleModelImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.displayIcon, displayIcon) ||
                other.displayIcon == displayIcon) &&
            (identical(other.assetPath, assetPath) ||
                other.assetPath == assetPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, uuid, displayName, description, displayIcon, assetPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleModelImplCopyWith<_$RoleModelImpl> get copyWith =>
      __$$RoleModelImplCopyWithImpl<_$RoleModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoleModelImplToJson(
      this,
    );
  }
}

abstract class _RoleModel implements RoleModel {
  factory _RoleModel(
      {@JsonKey(name: 'uuid') final String? uuid,
      @JsonKey(name: 'displayName') final String? displayName,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'displayIcon') final String? displayIcon,
      @JsonKey(name: 'assetPath') final String? assetPath}) = _$RoleModelImpl;

  factory _RoleModel.fromJson(Map<String, dynamic> json) =
      _$RoleModelImpl.fromJson;

  @override
  @JsonKey(name: 'uuid')
  String? get uuid;
  @override
  @JsonKey(name: 'displayName')
  String? get displayName;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'displayIcon')
  String? get displayIcon;
  @override
  @JsonKey(name: 'assetPath')
  String? get assetPath;
  @override
  @JsonKey(ignore: true)
  _$$RoleModelImplCopyWith<_$RoleModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AbilityModel _$AbilityModelFromJson(Map<String, dynamic> json) {
  return _AbilityModel.fromJson(json);
}

/// @nodoc
mixin _$AbilityModel {
  @JsonKey(name: 'slot')
  String? get slot => throw _privateConstructorUsedError;
  @JsonKey(name: 'displayName')
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'displayIcon')
  String? get displayIcon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbilityModelCopyWith<AbilityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityModelCopyWith<$Res> {
  factory $AbilityModelCopyWith(
          AbilityModel value, $Res Function(AbilityModel) then) =
      _$AbilityModelCopyWithImpl<$Res, AbilityModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'slot') String? slot,
      @JsonKey(name: 'displayName') String? displayName,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'displayIcon') String? displayIcon});
}

/// @nodoc
class _$AbilityModelCopyWithImpl<$Res, $Val extends AbilityModel>
    implements $AbilityModelCopyWith<$Res> {
  _$AbilityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = freezed,
    Object? displayName = freezed,
    Object? description = freezed,
    Object? displayIcon = freezed,
  }) {
    return _then(_value.copyWith(
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AbilityModelImplCopyWith<$Res>
    implements $AbilityModelCopyWith<$Res> {
  factory _$$AbilityModelImplCopyWith(
          _$AbilityModelImpl value, $Res Function(_$AbilityModelImpl) then) =
      __$$AbilityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'slot') String? slot,
      @JsonKey(name: 'displayName') String? displayName,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'displayIcon') String? displayIcon});
}

/// @nodoc
class __$$AbilityModelImplCopyWithImpl<$Res>
    extends _$AbilityModelCopyWithImpl<$Res, _$AbilityModelImpl>
    implements _$$AbilityModelImplCopyWith<$Res> {
  __$$AbilityModelImplCopyWithImpl(
      _$AbilityModelImpl _value, $Res Function(_$AbilityModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = freezed,
    Object? displayName = freezed,
    Object? description = freezed,
    Object? displayIcon = freezed,
  }) {
    return _then(_$AbilityModelImpl(
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      displayIcon: freezed == displayIcon
          ? _value.displayIcon
          : displayIcon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$AbilityModelImpl implements _AbilityModel {
  _$AbilityModelImpl(
      {@JsonKey(name: 'slot') this.slot,
      @JsonKey(name: 'displayName') this.displayName,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'displayIcon') this.displayIcon});

  factory _$AbilityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbilityModelImplFromJson(json);

  @override
  @JsonKey(name: 'slot')
  final String? slot;
  @override
  @JsonKey(name: 'displayName')
  final String? displayName;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'displayIcon')
  final String? displayIcon;

  @override
  String toString() {
    return 'AbilityModel(slot: $slot, displayName: $displayName, description: $description, displayIcon: $displayIcon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbilityModelImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.displayIcon, displayIcon) ||
                other.displayIcon == displayIcon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, slot, displayName, description, displayIcon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AbilityModelImplCopyWith<_$AbilityModelImpl> get copyWith =>
      __$$AbilityModelImplCopyWithImpl<_$AbilityModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbilityModelImplToJson(
      this,
    );
  }
}

abstract class _AbilityModel implements AbilityModel {
  factory _AbilityModel(
          {@JsonKey(name: 'slot') final String? slot,
          @JsonKey(name: 'displayName') final String? displayName,
          @JsonKey(name: 'description') final String? description,
          @JsonKey(name: 'displayIcon') final String? displayIcon}) =
      _$AbilityModelImpl;

  factory _AbilityModel.fromJson(Map<String, dynamic> json) =
      _$AbilityModelImpl.fromJson;

  @override
  @JsonKey(name: 'slot')
  String? get slot;
  @override
  @JsonKey(name: 'displayName')
  String? get displayName;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'displayIcon')
  String? get displayIcon;
  @override
  @JsonKey(ignore: true)
  _$$AbilityModelImplCopyWith<_$AbilityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
