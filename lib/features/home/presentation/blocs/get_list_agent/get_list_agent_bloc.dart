import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valoku_app/features/home/data/models/models.dart';
import 'package:valoku_app/features/home/data/repositories/repositories.dart';

part 'get_list_agent_event.dart';
part 'get_list_agent_state.dart';

part 'get_list_agent_bloc.freezed.dart';

class GetListAgentBloc extends Bloc<GetListAgentEvent, GetListAgentState> {
  final AgentRepository _repo;
  GetListAgentBloc(this._repo) : super(const GetListAgentState()) {
    on<_Fetch>(_fetch);
  }
  Future<void> _fetch(
    _Fetch event,
    Emitter<GetListAgentState> emit,
  ) async {
    emit(
      state.copyWith(
        status: GetListAgentStatus.loading,
      ),
    );
    try {
      final agent = await _repo.getListAgentFromRemote();
      emit(
        state.copyWith(status: GetListAgentStatus.loaded, data: agent),
      );
    } catch (err) {
      emit(
        state.copyWith(status: GetListAgentStatus.loaded, error: err),
      );
    }
  }
}
