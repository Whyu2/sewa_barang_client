import 'package:freezed_annotation/freezed_annotation.dart';

part 'name_description_model.freezed.dart';
part 'name_description_model.g.dart';

@freezed
class NameDescriptionModel with _$NameDescriptionModel {
  @JsonSerializable(explicitToJson: true)
  factory NameDescriptionModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'description') String? description,
  }) = _NameDescriptionModel;

  factory NameDescriptionModel.fromJson(Map<String, dynamic> json) =>
      _$NameDescriptionModelFromJson(json);
}
