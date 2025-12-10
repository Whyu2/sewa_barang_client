import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:valoku_app/features/home/data/models/models.dart';
import 'package:valoku_app/features/home/data/repositories/repositories.dart';

part 'get_agent_event.dart';
part 'get_agent_state.dart';

part 'get_agent_bloc.freezed.dart';

class GetAgentBloc extends Bloc<GetAgentEvent, GetAgentState> {
  final AgentRepository _repo;
  GetAgentBloc(this._repo) : super(const GetAgentState()) {
    on<_Fetch>(_fetch);
  }
  Future<void> _fetch(
    _Fetch event,
    Emitter<GetAgentState> emit,
  ) async {
    emit(
      state.copyWith(
        status: GetAgentStatus.loading,
      ),
    );
    try {
      final agent = await _repo.getAgentFromRemote();
      emit(
        state.copyWith(status: GetAgentStatus.loaded, data: agent),
      );
    } catch (err) {
      emit(
        state.copyWith(status: GetAgentStatus.loaded, error: err),
      );
    }
  }
}
