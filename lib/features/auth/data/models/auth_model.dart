import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sewa_barang_client/features/auth/data/models/user_model.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthModel with _$AuthModel {
  @JsonSerializable(explicitToJson: true)
  factory AuthModel({
    @JsonKey(name: 'token') required String token,
    @JsonKey(name: 'user') required UserModel user,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);
}
