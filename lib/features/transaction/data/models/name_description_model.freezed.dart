// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'name_description_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NameDescriptionModel _$NameDescriptionModelFromJson(Map<String, dynamic> json) {
  return _NameDescriptionModel.fromJson(json);
}

/// @nodoc
mixin _$NameDescriptionModel {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameDescriptionModelCopyWith<NameDescriptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameDescriptionModelCopyWith<$Res> {
  factory $NameDescriptionModelCopyWith(NameDescriptionModel value,
          $Res Function(NameDescriptionModel) then) =
      _$NameDescriptionModelCopyWithImpl<$Res, NameDescriptionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class _$NameDescriptionModelCopyWithImpl<$Res,
        $Val extends NameDescriptionModel>
    implements $NameDescriptionModelCopyWith<$Res> {
  _$NameDescriptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NameDescriptionModelImplCopyWith<$Res>
    implements $NameDescriptionModelCopyWith<$Res> {
  factory _$$NameDescriptionModelImplCopyWith(_$NameDescriptionModelImpl value,
          $Res Function(_$NameDescriptionModelImpl) then) =
      __$$NameDescriptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String? description});
}

/// @nodoc
class __$$NameDescriptionModelImplCopyWithImpl<$Res>
    extends _$NameDescriptionModelCopyWithImpl<$Res, _$NameDescriptionModelImpl>
    implements _$$NameDescriptionModelImplCopyWith<$Res> {
  __$$NameDescriptionModelImplCopyWithImpl(_$NameDescriptionModelImpl _value,
      $Res Function(_$NameDescriptionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
  }) {
    return _then(_$NameDescriptionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$NameDescriptionModelImpl implements _NameDescriptionModel {
  _$NameDescriptionModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'description') this.description});

  factory _$NameDescriptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NameDescriptionModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'description')
  final String? description;

  @override
  String toString() {
    return 'NameDescriptionModel(id: $id, name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameDescriptionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameDescriptionModelImplCopyWith<_$NameDescriptionModelImpl>
      get copyWith =>
          __$$NameDescriptionModelImplCopyWithImpl<_$NameDescriptionModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NameDescriptionModelImplToJson(
      this,
    );
  }
}

abstract class _NameDescriptionModel implements NameDescriptionModel {
  factory _NameDescriptionModel(
          {@JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'description') final String? description}) =
      _$NameDescriptionModelImpl;

  factory _NameDescriptionModel.fromJson(Map<String, dynamic> json) =
      _$NameDescriptionModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$NameDescriptionModelImplCopyWith<_$NameDescriptionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
