import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sewa_barang_client/features/transaction/data/models/rent_transaction_model.dart';
import 'package:sewa_barang_client/features/transaction/data/repositories/repositories.dart';

part 'get_list_transaction_event.dart';
part 'get_list_transaction_state.dart';

part 'get_list_transaction_bloc.freezed.dart';

class GetListTransactionBloc
    extends Bloc<GetListTransactionEvent, GetListTransactionState> {
  final TransactionRepository _repo;
  GetListTransactionBloc(this._repo) : super(const GetListTransactionState()) {
    on<_Fetch>(_fetch);
  }
  Future<void> _fetch(
    _Fetch event,
    Emitter<GetListTransactionState> emit,
  ) async {
    emit(
      state.copyWith(
        status: GetListTransactionStatus.loading,
      ),
    );
    try {
      final agent = await _repo.getListTransactionFromRemote();
      emit(
        state.copyWith(status: GetListTransactionStatus.loaded, data: agent),
      );
    } catch (err) {
      emit(
        state.copyWith(status: GetListTransactionStatus.loaded, error: err),
      );
    }
  }
}
