part of 'create_transaction_bloc.dart';
@freezed
class CreateTransactionEvent with _$CreateTransactionEvent {
  const factory CreateTransactionEvent.submit({
    required String qrUuid,
    required int regionId,
    required String renterName,
    required String renterPhone,
    required DateTime rentDate,
    required DateTime expectedReturnDate,
    required int qty,
    required int rentPrice,
    required String pickupProofPath,
    String? notes,
  }) = _Submit;
}
