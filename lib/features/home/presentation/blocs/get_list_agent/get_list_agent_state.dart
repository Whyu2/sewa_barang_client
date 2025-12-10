part of 'get_list_agent_bloc.dart';

enum GetListAgentStatus {
  initial,
  loading,
  loaded;

  bool get isInitial => this == GetListAgentStatus.initial;
  bool get isLoading => this == GetListAgentStatus.loading;
  bool get isLoaded => this == GetListAgentStatus.loaded;
}

@freezed
class GetListAgentState with _$GetListAgentState {
  const factory GetListAgentState({
    @Default(GetListAgentStatus.initial) GetListAgentStatus status,
    List<AgentModel>? data,
    Object? error,
  }) = _GetListAgentState;
}
