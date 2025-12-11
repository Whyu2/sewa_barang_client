part of 'get_list_transaction_bloc.dart';

enum GetListTransactionStatus {
  initial,
  loading,
  loaded;

  bool get isInitial => this == GetListTransactionStatus.initial;
  bool get isLoading => this == GetListTransactionStatus.loading;
  bool get isLoaded => this == GetListTransactionStatus.loaded;
}

@freezed
class GetListTransactionState with _$GetListTransactionState {
  const factory GetListTransactionState({
    @Default(GetListTransactionStatus.initial) GetListTransactionStatus status,
    List<RentTransactionModel>? data,
    Object? error,
  }) = _GetListTransactionState;
}
