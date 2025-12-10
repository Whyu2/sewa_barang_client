// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_list_agent_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetListAgentEvent {
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
abstract class $GetListAgentEventCopyWith<$Res> {
  factory $GetListAgentEventCopyWith(
          GetListAgentEvent value, $Res Function(GetListAgentEvent) then) =
      _$GetListAgentEventCopyWithImpl<$Res, GetListAgentEvent>;
}

/// @nodoc
class _$GetListAgentEventCopyWithImpl<$Res, $Val extends GetListAgentEvent>
    implements $GetListAgentEventCopyWith<$Res> {
  _$GetListAgentEventCopyWithImpl(this._value, this._then);

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
    extends _$GetListAgentEventCopyWithImpl<$Res, _$FetchImpl>
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
    return 'GetListAgentEvent.fetch()';
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

abstract class _Fetch implements GetListAgentEvent {
  const factory _Fetch() = _$FetchImpl;
}

/// @nodoc
mixin _$GetListAgentState {
  GetListAgentStatus get status => throw _privateConstructorUsedError;
  List<AgentModel>? get data => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetListAgentStateCopyWith<GetListAgentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetListAgentStateCopyWith<$Res> {
  factory $GetListAgentStateCopyWith(
          GetListAgentState value, $Res Function(GetListAgentState) then) =
      _$GetListAgentStateCopyWithImpl<$Res, GetListAgentState>;
  @useResult
  $Res call({GetListAgentStatus status, List<AgentModel>? data, Object? error});
}

/// @nodoc
class _$GetListAgentStateCopyWithImpl<$Res, $Val extends GetListAgentState>
    implements $GetListAgentStateCopyWith<$Res> {
  _$GetListAgentStateCopyWithImpl(this._value, this._then);

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
              as GetListAgentStatus,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AgentModel>?,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetListAgentStateImplCopyWith<$Res>
    implements $GetListAgentStateCopyWith<$Res> {
  factory _$$GetListAgentStateImplCopyWith(_$GetListAgentStateImpl value,
          $Res Function(_$GetListAgentStateImpl) then) =
      __$$GetListAgentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetListAgentStatus status, List<AgentModel>? data, Object? error});
}

/// @nodoc
class __$$GetListAgentStateImplCopyWithImpl<$Res>
    extends _$GetListAgentStateCopyWithImpl<$Res, _$GetListAgentStateImpl>
    implements _$$GetListAgentStateImplCopyWith<$Res> {
  __$$GetListAgentStateImplCopyWithImpl(_$GetListAgentStateImpl _value,
      $Res Function(_$GetListAgentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(_$GetListAgentStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GetListAgentStatus,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AgentModel>?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$GetListAgentStateImpl implements _GetListAgentState {
  const _$GetListAgentStateImpl(
      {this.status = GetListAgentStatus.initial,
      final List<AgentModel>? data,
      this.error})
      : _data = data;

  @override
  @JsonKey()
  final GetListAgentStatus status;
  final List<AgentModel>? _data;
  @override
  List<AgentModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Object? error;

  @override
  String toString() {
    return 'GetListAgentState(status: $status, data: $data, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetListAgentStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetListAgentStateImplCopyWith<_$GetListAgentStateImpl> get copyWith =>
      __$$GetListAgentStateImplCopyWithImpl<_$GetListAgentStateImpl>(
          this, _$identity);
}

abstract class _GetListAgentState implements GetListAgentState {
  const factory _GetListAgentState(
      {final GetListAgentStatus status,
      final List<AgentModel>? data,
      final Object? error}) = _$GetListAgentStateImpl;

  @override
  GetListAgentStatus get status;
  @override
  List<AgentModel>? get data;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$GetListAgentStateImplCopyWith<_$GetListAgentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
