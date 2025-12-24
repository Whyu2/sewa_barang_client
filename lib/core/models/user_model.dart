import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  @JsonSerializable(explicitToJson: true)
  factory UserModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'region_id') required int regionId,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'role') required String role,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
