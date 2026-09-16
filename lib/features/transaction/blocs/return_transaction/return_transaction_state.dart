part of 'return_transaction_bloc.dart';
enum ReturnTransactionStatus { initial, loading, success, failure }
@freezed
class ReturnTransactionState with _$ReturnTransactionState {
  const factory ReturnTransactionState({@Default(ReturnTransactionStatus.initial) ReturnTransactionStatus status, Object? error, dynamic data}) = _ReturnTransactionState;
}
