part of 'return_transaction_bloc.dart';
@freezed
class ReturnTransactionEvent with _$ReturnTransactionEvent {
  const factory ReturnTransactionEvent.submit({required int id, required DateTime returnDate, required String returnProofPath}) = _Submit;
}
