part of 'get_agent_bloc.dart';

enum GetAgentStatus {
  initial,
  loading,
  loaded;

  bool get isInitial => this == GetAgentStatus.initial;
  bool get isLoading => this == GetAgentStatus.loading;
  bool get isLoaded => this == GetAgentStatus.loaded;
}

@freezed
class GetAgentState with _$GetAgentState {
  const factory GetAgentState({
    @Default(GetAgentStatus.initial) GetAgentStatus status,
    AgentModel? data,
    Object? error,
  }) = _GetAgentState;
}
