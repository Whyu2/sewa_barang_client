import 'package:freezed_annotation/freezed_annotation.dart';

import 'models.dart';

part 'rent_transaction_model.freezed.dart';
part 'rent_transaction_model.g.dart';

@freezed
class RentTransactionModel with _$RentTransactionModel {
  @JsonSerializable(explicitToJson: true, checked: true)
  factory RentTransactionModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'region_id') required int regionId,
    @JsonKey(name: 'renter_name') required String renterName,
    @JsonKey(name: 'renter_phone') required String renterPhone,
    @JsonKey(name: 'rent_date') required DateTime renterDate,
    @JsonKey(name: 'qty') required int qty,
    @JsonKey(name: 'expected_return_date') required DateTime expectedReturnDate,
    @JsonKey(name: 'rent_price') required int rentPrice,
    @JsonKey(name: 'return_date') DateTime? returnDate,
    @JsonKey(name: 'status') RentTransactionStatus? status,
    @JsonKey(name: 'notes') String? notes,
    @JsonKey(name: 'pickup_proof_url') String? pickupProofUrl,
    @JsonKey(name: 'return_proof_url') String? returnProofUrl,
    @JsonKey(name: 'region') NameDescriptionModel? region,
    @JsonKey(name: 'product') ProductModel? product,
  }) = _RentTransactionModel;

  factory RentTransactionModel.fromJson(Map<String, dynamic> json) =>
      _$RentTransactionModelFromJson(json);
}
