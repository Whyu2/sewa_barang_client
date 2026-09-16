part of 'create_transaction_bloc.dart';
enum CreateTransactionStatus { initial, loading, success, failure }
@freezed
class CreateTransactionState with _$CreateTransactionState {
  const factory CreateTransactionState({
    @Default(CreateTransactionStatus.initial) CreateTransactionStatus status,
    Object? error,
    dynamic data,
  }) = _CreateTransactionState;
}
