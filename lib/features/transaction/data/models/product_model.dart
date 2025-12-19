import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  @JsonSerializable(explicitToJson: true)
  factory ProductModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'category_id') required int categoryId,
    @JsonKey(name: 'category_name') required String categoryName,
    @JsonKey(name: 'qty') required int qty,
    @JsonKey(name: 'qr_code_url') required String qrCodeUrl,
    @JsonKey(name: 'qr_uuid') required String qrUuid,
    @JsonKey(name: 'photo_url') required String? photoUrl,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'description') String? description,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
