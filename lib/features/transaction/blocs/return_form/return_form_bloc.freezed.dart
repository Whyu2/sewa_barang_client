// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'return_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReturnFormEvent {
  DateTime get returnDate => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime returnDate) changeReturnDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime returnDate)? changeReturnDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime returnDate)? changeReturnDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeReturnDate value) changeReturnDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeReturnDate value)? changeReturnDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeReturnDate value)? changeReturnDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReturnFormEventCopyWith<ReturnFormEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnFormEventCopyWith<$Res> {
  factory $ReturnFormEventCopyWith(
          ReturnFormEvent value, $Res Function(ReturnFormEvent) then) =
      _$ReturnFormEventCopyWithImpl<$Res, ReturnFormEvent>;
  @useResult
  $Res call({DateTime returnDate});
}

/// @nodoc
class _$ReturnFormEventCopyWithImpl<$Res, $Val extends ReturnFormEvent>
    implements $ReturnFormEventCopyWith<$Res> {
  _$ReturnFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? returnDate = null,
  }) {
    return _then(_value.copyWith(
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeReturnDateImplCopyWith<$Res>
    implements $ReturnFormEventCopyWith<$Res> {
  factory _$$ChangeReturnDateImplCopyWith(_$ChangeReturnDateImpl value,
          $Res Function(_$ChangeReturnDateImpl) then) =
      __$$ChangeReturnDateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime returnDate});
}

/// @nodoc
class __$$ChangeReturnDateImplCopyWithImpl<$Res>
    extends _$ReturnFormEventCopyWithImpl<$Res, _$ChangeReturnDateImpl>
    implements _$$ChangeReturnDateImplCopyWith<$Res> {
  __$$ChangeReturnDateImplCopyWithImpl(_$ChangeReturnDateImpl _value,
      $Res Function(_$ChangeReturnDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? returnDate = null,
  }) {
    return _then(_$ChangeReturnDateImpl(
      returnDate: null == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ChangeReturnDateImpl implements _ChangeReturnDate {
  const _$ChangeReturnDateImpl({required this.returnDate});

  @override
  final DateTime returnDate;

  @override
  String toString() {
    return 'ReturnFormEvent.changeReturnDate(returnDate: $returnDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeReturnDateImpl &&
            (identical(other.returnDate, returnDate) ||
                other.returnDate == returnDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, returnDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeReturnDateImplCopyWith<_$ChangeReturnDateImpl> get copyWith =>
      __$$ChangeReturnDateImplCopyWithImpl<_$ChangeReturnDateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime returnDate) changeReturnDate,
  }) {
    return changeReturnDate(returnDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime returnDate)? changeReturnDate,
  }) {
    return changeReturnDate?.call(returnDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime returnDate)? changeReturnDate,
    required TResult orElse(),
  }) {
    if (changeReturnDate != null) {
      return changeReturnDate(returnDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeReturnDate value) changeReturnDate,
  }) {
    return changeReturnDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeReturnDate value)? changeReturnDate,
  }) {
    return changeReturnDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeReturnDate value)? changeReturnDate,
    required TResult orElse(),
  }) {
    if (changeReturnDate != null) {
      return changeReturnDate(this);
    }
    return orElse();
  }
}

abstract class _ChangeReturnDate implements ReturnFormEvent {
  const factory _ChangeReturnDate({required final DateTime returnDate}) =
      _$ChangeReturnDateImpl;

  @override
  DateTime get returnDate;
  @override
  @JsonKey(ignore: true)
  _$$ChangeReturnDateImplCopyWith<_$ChangeReturnDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReturnFormState {
  DateTime? get returnDate => throw _privateConstructorUsedError;
  FormzStatus get formzStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReturnFormStateCopyWith<ReturnFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnFormStateCopyWith<$Res> {
  factory $ReturnFormStateCopyWith(
          ReturnFormState value, $Res Function(ReturnFormState) then) =
      _$ReturnFormStateCopyWithImpl<$Res, ReturnFormState>;
  @useResult
  $Res call({DateTime? returnDate, FormzStatus formzStatus});
}

/// @nodoc
class _$ReturnFormStateCopyWithImpl<$Res, $Val extends ReturnFormState>
    implements $ReturnFormStateCopyWith<$Res> {
  _$ReturnFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? returnDate = freezed,
    Object? formzStatus = null,
  }) {
    return _then(_value.copyWith(
      returnDate: freezed == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      formzStatus: null == formzStatus
          ? _value.formzStatus
          : formzStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReturnFormStateImplCopyWith<$Res>
    implements $ReturnFormStateCopyWith<$Res> {
  factory _$$ReturnFormStateImplCopyWith(_$ReturnFormStateImpl value,
          $Res Function(_$ReturnFormStateImpl) then) =
      __$$ReturnFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime? returnDate, FormzStatus formzStatus});
}

/// @nodoc
class __$$ReturnFormStateImplCopyWithImpl<$Res>
    extends _$ReturnFormStateCopyWithImpl<$Res, _$ReturnFormStateImpl>
    implements _$$ReturnFormStateImplCopyWith<$Res> {
  __$$ReturnFormStateImplCopyWithImpl(
      _$ReturnFormStateImpl _value, $Res Function(_$ReturnFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? returnDate = freezed,
    Object? formzStatus = null,
  }) {
    return _then(_$ReturnFormStateImpl(
      returnDate: freezed == returnDate
          ? _value.returnDate
          : returnDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      formzStatus: null == formzStatus
          ? _value.formzStatus
          : formzStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$ReturnFormStateImpl implements _ReturnFormState {
  _$ReturnFormStateImpl({this.returnDate, this.formzStatus = FormzStatus.pure});

  @override
  final DateTime? returnDate;
  @override
  @JsonKey()
  final FormzStatus formzStatus;

  @override
  String toString() {
    return 'ReturnFormState(returnDate: $returnDate, formzStatus: $formzStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnFormStateImpl &&
            (identical(other.returnDate, returnDate) ||
                other.returnDate == returnDate) &&
            (identical(other.formzStatus, formzStatus) ||
                other.formzStatus == formzStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, returnDate, formzStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReturnFormStateImplCopyWith<_$ReturnFormStateImpl> get copyWith =>
      __$$ReturnFormStateImplCopyWithImpl<_$ReturnFormStateImpl>(
          this, _$identity);
}

abstract class _ReturnFormState implements ReturnFormState {
  factory _ReturnFormState(
      {final DateTime? returnDate,
      final FormzStatus formzStatus}) = _$ReturnFormStateImpl;

  @override
  DateTime? get returnDate;
  @override
  FormzStatus get formzStatus;
  @override
  @JsonKey(ignore: true)
  _$$ReturnFormStateImplCopyWith<_$ReturnFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
