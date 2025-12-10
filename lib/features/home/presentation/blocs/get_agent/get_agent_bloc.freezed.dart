// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_agent_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetAgentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAgentEventCopyWith<$Res> {
  factory $GetAgentEventCopyWith(
          GetAgentEvent value, $Res Function(GetAgentEvent) then) =
      _$GetAgentEventCopyWithImpl<$Res, GetAgentEvent>;
}

/// @nodoc
class _$GetAgentEventCopyWithImpl<$Res, $Val extends GetAgentEvent>
    implements $GetAgentEventCopyWith<$Res> {
  _$GetAgentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$GetAgentEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl();

  @override
  String toString() {
    return 'GetAgentEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements GetAgentEvent {
  const factory _Fetch() = _$FetchImpl;
}

/// @nodoc
mixin _$GetAgentState {
  GetAgentStatus get status => throw _privateConstructorUsedError;
  AgentModel? get data => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetAgentStateCopyWith<GetAgentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAgentStateCopyWith<$Res> {
  factory $GetAgentStateCopyWith(
          GetAgentState value, $Res Function(GetAgentState) then) =
      _$GetAgentStateCopyWithImpl<$Res, GetAgentState>;
  @useResult
  $Res call({GetAgentStatus status, AgentModel? data, Object? error});

  $AgentModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetAgentStateCopyWithImpl<$Res, $Val extends GetAgentState>
    implements $GetAgentStateCopyWith<$Res> {
  _$GetAgentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GetAgentStatus,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AgentModel?,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AgentModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AgentModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetAgentStateImplCopyWith<$Res>
    implements $GetAgentStateCopyWith<$Res> {
  factory _$$GetAgentStateImplCopyWith(
          _$GetAgentStateImpl value, $Res Function(_$GetAgentStateImpl) then) =
      __$$GetAgentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetAgentStatus status, AgentModel? data, Object? error});

  @override
  $AgentModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetAgentStateImplCopyWithImpl<$Res>
    extends _$GetAgentStateCopyWithImpl<$Res, _$GetAgentStateImpl>
    implements _$$GetAgentStateImplCopyWith<$Res> {
  __$$GetAgentStateImplCopyWithImpl(
      _$GetAgentStateImpl _value, $Res Function(_$GetAgentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_$GetAgentStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GetAgentStatus,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AgentModel?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$GetAgentStateImpl implements _GetAgentState {
  const _$GetAgentStateImpl(
      {this.status = GetAgentStatus.initial, this.data, this.error});

  @override
  @JsonKey()
  final GetAgentStatus status;
  @override
  final AgentModel? data;
  @override
  final Object? error;

  @override
  String toString() {
    return 'GetAgentState(status: $status, data: $data, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAgentStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, data, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAgentStateImplCopyWith<_$GetAgentStateImpl> get copyWith =>
      __$$GetAgentStateImplCopyWithImpl<_$GetAgentStateImpl>(this, _$identity);
}

abstract class _GetAgentState implements GetAgentState {
  const factory _GetAgentState(
      {final GetAgentStatus status,
      final AgentModel? data,
      final Object? error}) = _$GetAgentStateImpl;

  @override
  GetAgentStatus get status;
  @override
  AgentModel? get data;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$GetAgentStateImplCopyWith<_$GetAgentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
