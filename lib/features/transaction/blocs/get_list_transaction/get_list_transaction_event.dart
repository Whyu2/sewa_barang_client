part of 'get_list_transaction_bloc.dart';

@freezed
class GetListTransactionEvent with _$GetListTransactionEvent {
  const factory GetListTransactionEvent.fetch() = _Fetch;
}
