import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sewa_barang_client/core/repositories/repositories.dart';
part 'return_transaction_bloc.freezed.dart';
part 'return_transaction_event.dart';
part 'return_transaction_state.dart';
class ReturnTransactionBloc extends Bloc<ReturnTransactionEvent, ReturnTransactionState> {
  final TransactionRepository _repo;
  ReturnTransactionBloc(this._repo) : super(const ReturnTransactionState()) {
    on<_Submit>(_onSubmit);
  }
  Future<void> _onSubmit(_Submit e, Emitter<ReturnTransactionState> emit) async {
    emit(state.copyWith(status: ReturnTransactionStatus.loading));
    try {
      final fd = FormData.fromMap({
        'status': 'returned',
        'return_date': e.returnDate.toIso8601String().split('T').first,
        'return_proof': await MultipartFile.fromFile(e.returnProofPath, filename: e.returnProofPath.split('/').last.split('\\').last),
      });
      final res = await _repo.returnTransaction(e.id, fd);
      emit(state.copyWith(status: ReturnTransactionStatus.success, data: res));
    } catch (err) {
      emit(state.copyWith(status: ReturnTransactionStatus.failure, error: err.toString()));
    }
  }
}
