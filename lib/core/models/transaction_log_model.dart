import 'package:freezed_annotation/freezed_annotation.dart';
part 'transaction_log_model.freezed.dart';
part 'transaction_log_model.g.dart';
@freezed
class TransactionLogModel with _$TransactionLogModel {
  @JsonSerializable(explicitToJson: true, checked: true)
  factory TransactionLogModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'transaction_id') required int transactionId,
    @JsonKey(name: 'product_id') required int productId,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'action') required String action,
    @JsonKey(name: 'from_status') String? fromStatus,
    @JsonKey(name: 'to_status') String? toStatus,
    @JsonKey(name: 'metadata') Map<String, dynamic>? metadata,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _TransactionLogModel;
  factory TransactionLogModel.fromJson(Map<String, dynamic> json) => _$TransactionLogModelFromJson(json);
}
