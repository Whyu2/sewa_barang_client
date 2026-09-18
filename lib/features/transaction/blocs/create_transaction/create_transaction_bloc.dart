import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:sewa_barang_client/core/repositories/repositories.dart';
part 'create_transaction_bloc.freezed.dart';
part 'create_transaction_event.dart';
part 'create_transaction_state.dart';

class CreateTransactionBloc
    extends Bloc<CreateTransactionEvent, CreateTransactionState> {
  final TransactionRepository _repo;
  CreateTransactionBloc(this._repo) : super(const CreateTransactionState()) {
    on<_Submit>(_onSubmit);
  }
  Future<void> _onSubmit(
      _Submit e, Emitter<CreateTransactionState> emit) async {
    emit(state.copyWith(status: CreateTransactionStatus.loading));
    try {
      final df = DateFormat('yyyy-MM-dd');
      final fd = FormData.fromMap({
        'qr_uuid': e.qrUuid,
        'region_id': e.regionId,
        'renter_name': e.renterName,
        if (e.renterPhone.isNotEmpty) 'renter_phone': e.renterPhone,
        'rent_date': df.format(e.rentDate),
        'rental_duration_days': e.rentalDurationDays,
        'qty': e.qty,
        'rent_price': e.rentPrice,
        if (e.notes != null) 'notes': e.notes,
        'pickup_proof': await MultipartFile.fromFile(e.pickupProofPath,
            filename: e.pickupProofPath.split('/').last.split('\\').last),
      });
      final res = await _repo.createTransaction(fd);
      emit(state.copyWith(status: CreateTransactionStatus.success, data: res));
    } catch (err) {
      emit(state.copyWith(
          status: CreateTransactionStatus.failure, error: err.toString()));
    }
  }
}
