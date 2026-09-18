// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rent_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RentFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? renterName) changeRenterName,
    required TResult Function(String? renterPhone) changeRenterPhone,
    required TResult Function(String? rentPrice) changeRentPrice,
    required TResult Function(String? qty) changeQty,
    required TResult Function(String? rentalDuration) changeRentalDuration,
    required TResult Function(String? notes) changeNotes,
    required TResult Function(DateTime rentDate) changeRentDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? renterName)? changeRenterName,
    TResult? Function(String? renterPhone)? changeRenterPhone,
    TResult? Function(String? rentPrice)? changeRentPrice,
    TResult? Function(String? qty)? changeQty,
    TResult? Function(String? rentalDuration)? changeRentalDuration,
    TResult? Function(String? notes)? changeNotes,
    TResult? Function(DateTime rentDate)? changeRentDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? renterName)? changeRenterName,
    TResult Function(String? renterPhone)? changeRenterPhone,
    TResult Function(String? rentPrice)? changeRentPrice,
    TResult Function(String? qty)? changeQty,
    TResult Function(String? rentalDuration)? changeRentalDuration,
    TResult Function(String? notes)? changeNotes,
    TResult Function(DateTime rentDate)? changeRentDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeRenterName value) changeRenterName,
    required TResult Function(_ChangeRenterPhone value) changeRenterPhone,
    required TResult Function(_ChangeRentPrice value) changeRentPrice,
    required TResult Function(_ChangeQty value) changeQty,
    required TResult Function(_ChangeRentalDuration value) changeRentalDuration,
    required TResult Function(_ChangeNotes value) changeNotes,
    required TResult Function(_ChangeRentDate value) changeRentDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeRenterName value)? changeRenterName,
    TResult? Function(_ChangeRenterPhone value)? changeRenterPhone,
    TResult? Function(_ChangeRentPrice value)? changeRentPrice,
    TResult? Function(_ChangeQty value)? changeQty,
    TResult? Function(_ChangeRentalDuration value)? changeRentalDuration,
    TResult? Function(_ChangeNotes value)? changeNotes,
    TResult? Function(_ChangeRentDate value)? changeRentDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeRenterName value)? changeRenterName,
    TResult Function(_ChangeRenterPhone value)? changeRenterPhone,
    TResult Function(_ChangeRentPrice value)? changeRentPrice,
    TResult Function(_ChangeQty value)? changeQty,
    TResult Function(_ChangeRentalDuration value)? changeRentalDuration,
    TResult Function(_ChangeNotes value)? changeNotes,
    TResult Function(_ChangeRentDate value)? changeRentDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentFormEventCopyWith<$Res> {
  factory $RentFormEventCopyWith(
          RentFormEvent value, $Res Function(RentFormEvent) then) =
      _$RentFormEventCopyWithImpl<$Res, RentFormEvent>;
}

/// @nodoc
class _$RentFormEventCopyWithImpl<$Res, $Val extends RentFormEvent>
    implements $RentFormEventCopyWith<$Res> {
  _$RentFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangeRenterNameImplCopyWith<$Res> {
  factory _$$ChangeRenterNameImplCopyWith(_$ChangeRenterNameImpl value,
          $Res Function(_$ChangeRenterNameImpl) then) =
      __$$ChangeRenterNameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? renterName});
}

/// @nodoc
class __$$ChangeRenterNameImplCopyWithImpl<$Res>
    extends _$RentFormEventCopyWithImpl<$Res, _$ChangeRenterNameImpl>
    implements _$$ChangeRenterNameImplCopyWith<$Res> {
  __$$ChangeRenterNameImplCopyWithImpl(_$ChangeRenterNameImpl _value,
      $Res Function(_$ChangeRenterNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? renterName = freezed,
  }) {
    return _then(_$ChangeRenterNameImpl(
      renterName: freezed == renterName
          ? _value.renterName
          : renterName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChangeRenterNameImpl implements _ChangeRenterName {
  const _$ChangeRenterNameImpl({this.renterName});

  @override
  final String? renterName;

  @override
  String toString() {
    return 'RentFormEvent.changeRenterName(renterName: $renterName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeRenterNameImpl &&
            (identical(other.renterName, renterName) ||
                other.renterName == renterName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, renterName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeRenterNameImplCopyWith<_$ChangeRenterNameImpl> get copyWith =>
      __$$ChangeRenterNameImplCopyWithImpl<_$ChangeRenterNameImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? renterName) changeRenterName,
    required TResult Function(String? renterPhone) changeRenterPhone,
    required TResult Function(String? rentPrice) changeRentPrice,
    required TResult Function(String? qty) changeQty,
    required TResult Function(String? rentalDuration) changeRentalDuration,
    required TResult Function(String? notes) changeNotes,
    required TResult Function(DateTime rentDate) changeRentDate,
  }) {
    return changeRenterName(renterName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? renterName)? changeRenterName,
    TResult? Function(String? renterPhone)? changeRenterPhone,
    TResult? Function(String? rentPrice)? changeRentPrice,
    TResult? Function(String? qty)? changeQty,
    TResult? Function(String? rentalDuration)? changeRentalDuration,
    TResult? Function(String? notes)? changeNotes,
    TResult? Function(DateTime rentDate)? changeRentDate,
  }) {
    return changeRenterName?.call(renterName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? renterName)? changeRenterName,
    TResult Function(String? renterPhone)? changeRenterPhone,
    TResult Function(String? rentPrice)? changeRentPrice,
    TResult Function(String? qty)? changeQty,
    TResult Function(String? rentalDuration)? changeRentalDuration,
    TResult Function(String? notes)? changeNotes,
    TResult Function(DateTime rentDate)? changeRentDate,
    required TResult orElse(),
  }) {
    if (changeRenterName != null) {
      return changeRenterName(renterName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeRenterName value) changeRenterName,
    required TResult Function(_ChangeRenterPhone value) changeRenterPhone,
    required TResult Function(_ChangeRentPrice value) changeRentPrice,
    required TResult Function(_ChangeQty value) changeQty,
    required TResult Function(_ChangeRentalDuration value) changeRentalDuration,
    required TResult Function(_ChangeNotes value) changeNotes,
    required TResult Function(_ChangeRentDate value) changeRentDate,
  }) {
    return changeRenterName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeRenterName value)? changeRenterName,
    TResult? Function(_ChangeRenterPhone value)? changeRenterPhone,
    TResult? Function(_ChangeRentPrice value)? changeRentPrice,
    TResult? Function(_ChangeQty value)? changeQty,
    TResult? Function(_ChangeRentalDuration value)? changeRentalDuration,
    TResult? Function(_ChangeNotes value)? changeNotes,
    TResult? Function(_ChangeRentDate value)? changeRentDate,
  }) {
    return changeRenterName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeRenterName value)? changeRenterName,
    TResult Function(_ChangeRenterPhone value)? changeRenterPhone,
    TResult Function(_ChangeRentPrice value)? changeRentPrice,
    TResult Function(_ChangeQty value)? changeQty,
    TResult Function(_ChangeRentalDuration value)? changeRentalDuration,
    TResult Function(_ChangeNotes value)? changeNotes,
    TResult Function(_ChangeRentDate value)? changeRentDate,
    required TResult orElse(),
  }) {
    if (changeRenterName != null) {
      return changeRenterName(this);
    }
    return orElse();
  }
}

abstract class _ChangeRenterName implements RentFormEvent {
  const factory _ChangeRenterName({final String? renterName}) =
      _$ChangeRenterNameImpl;

  String? get renterName;
  @JsonKey(ignore: true)
  _$$ChangeRenterNameImplCopyWith<_$ChangeRenterNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeRenterPhoneImplCopyWith<$Res> {
  factory _$$ChangeRenterPhoneImplCopyWith(_$ChangeRenterPhoneImpl value,
          $Res Function(_$ChangeRenterPhoneImpl) then) =
      __$$ChangeRenterPhoneImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? renterPhone});
}

/// @nodoc
class __$$ChangeRenterPhoneImplCopyWithImpl<$Res>
    extends _$RentFormEventCopyWithImpl<$Res, _$ChangeRenterPhoneImpl>
    implements _$$ChangeRenterPhoneImplCopyWith<$Res> {
  __$$ChangeRenterPhoneImplCopyWithImpl(_$ChangeRenterPhoneImpl _value,
      $Res Function(_$ChangeRenterPhoneImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? renterPhone = freezed,
  }) {
    return _then(_$ChangeRenterPhoneImpl(
      renterPhone: freezed == renterPhone
          ? _value.renterPhone
          : renterPhone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChangeRenterPhoneImpl implements _ChangeRenterPhone {
  const _$ChangeRenterPhoneImpl({this.renterPhone});

  @override
  final String? renterPhone;

  @override
  String toString() {
    return 'RentFormEvent.changeRenterPhone(renterPhone: $renterPhone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeRenterPhoneImpl &&
            (identical(other.renterPhone, renterPhone) ||
                other.renterPhone == renterPhone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, renterPhone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeRenterPhoneImplCopyWith<_$ChangeRenterPhoneImpl> get copyWith =>
      __$$ChangeRenterPhoneImplCopyWithImpl<_$ChangeRenterPhoneImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? renterName) changeRenterName,
    required TResult Function(String? renterPhone) changeRenterPhone,
    required TResult Function(String? rentPrice) changeRentPrice,
    required TResult Function(String? qty) changeQty,
    required TResult Function(String? rentalDuration) changeRentalDuration,
    required TResult Function(String? notes) changeNotes,
    required TResult Function(DateTime rentDate) changeRentDate,
  }) {
    return changeRenterPhone(renterPhone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? renterName)? changeRenterName,
    TResult? Function(String? renterPhone)? changeRenterPhone,
    TResult? Function(String? rentPrice)? changeRentPrice,
    TResult? Function(String? qty)? changeQty,
    TResult? Function(String? rentalDuration)? changeRentalDuration,
    TResult? Function(String? notes)? changeNotes,
    TResult? Function(DateTime rentDate)? changeRentDate,
  }) {
    return changeRenterPhone?.call(renterPhone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? renterName)? changeRenterName,
    TResult Function(String? renterPhone)? changeRenterPhone,
    TResult Function(String? rentPrice)? changeRentPrice,
    TResult Function(String? qty)? changeQty,
    TResult Function(String? rentalDuration)? changeRentalDuration,
    TResult Function(String? notes)? changeNotes,
    TResult Function(DateTime rentDate)? changeRentDate,
    required TResult orElse(),
  }) {
    if (changeRenterPhone != null) {
      return changeRenterPhone(renterPhone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeRenterName value) changeRenterName,
    required TResult Function(_ChangeRenterPhone value) changeRenterPhone,
    required TResult Function(_ChangeRentPrice value) changeRentPrice,
    required TResult Function(_ChangeQty value) changeQty,
    required TResult Function(_ChangeRentalDuration value) changeRentalDuration,
    required TResult Function(_ChangeNotes value) changeNotes,
    required TResult Function(_ChangeRentDate value) changeRentDate,
  }) {
    return changeRenterPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeRenterName value)? changeRenterName,
    TResult? Function(_ChangeRenterPhone value)? changeRenterPhone,
    TResult? Function(_ChangeRentPrice value)? changeRentPrice,
    TResult? Function(_ChangeQty value)? changeQty,
    TResult? Function(_ChangeRentalDuration value)? changeRentalDuration,
    TResult? Function(_ChangeNotes value)? changeNotes,
    TResult? Function(_ChangeRentDate value)? changeRentDate,
  }) {
    return changeRenterPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeRenterName value)? changeRenterName,
    TResult Function(_ChangeRenterPhone value)? changeRenterPhone,
    TResult Function(_ChangeRentPrice value)? changeRentPrice,
    TResult Function(_ChangeQty value)? changeQty,
    TResult Function(_ChangeRentalDuration value)? changeRentalDuration,
    TResult Function(_ChangeNotes value)? changeNotes,
    TResult Function(_ChangeRentDate value)? changeRentDate,
    required TResult orElse(),
  }) {
    if (changeRenterPhone != null) {
      return changeRenterPhone(this);
    }
    return orElse();
  }
}

abstract class _ChangeRenterPhone implements RentFormEvent {
  const factory _ChangeRenterPhone({final String? renterPhone}) =
      _$ChangeRenterPhoneImpl;

  String? get renterPhone;
  @JsonKey(ignore: true)
  _$$ChangeRenterPhoneImplCopyWith<_$ChangeRenterPhoneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeRentPriceImplCopyWith<$Res> {
  factory _$$ChangeRentPriceImplCopyWith(_$ChangeRentPriceImpl value,
          $Res Function(_$ChangeRentPriceImpl) then) =
      __$$ChangeRentPriceImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? rentPrice});
}

/// @nodoc
class __$$ChangeRentPriceImplCopyWithImpl<$Res>
    extends _$RentFormEventCopyWithImpl<$Res, _$ChangeRentPriceImpl>
    implements _$$ChangeRentPriceImplCopyWith<$Res> {
  __$$ChangeRentPriceImplCopyWithImpl(
      _$ChangeRentPriceImpl _value, $Res Function(_$ChangeRentPriceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rentPrice = freezed,
  }) {
    return _then(_$ChangeRentPriceImpl(
      rentPrice: freezed == rentPrice
          ? _value.rentPrice
          : rentPrice // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChangeRentPriceImpl implements _ChangeRentPrice {
  const _$ChangeRentPriceImpl({this.rentPrice});

  @override
  final String? rentPrice;

  @override
  String toString() {
    return 'RentFormEvent.changeRentPrice(rentPrice: $rentPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeRentPriceImpl &&
            (identical(other.rentPrice, rentPrice) ||
                other.rentPrice == rentPrice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rentPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeRentPriceImplCopyWith<_$ChangeRentPriceImpl> get copyWith =>
      __$$ChangeRentPriceImplCopyWithImpl<_$ChangeRentPriceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? renterName) changeRenterName,
    required TResult Function(String? renterPhone) changeRenterPhone,
    required TResult Function(String? rentPrice) changeRentPrice,
    required TResult Function(String? qty) changeQty,
    required TResult Function(String? rentalDuration) changeRentalDuration,
    required TResult Function(String? notes) changeNotes,
    required TResult Function(DateTime rentDate) changeRentDate,
  }) {
    return changeRentPrice(rentPrice);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? renterName)? changeRenterName,
    TResult? Function(String? renterPhone)? changeRenterPhone,
    TResult? Function(String? rentPrice)? changeRentPrice,
    TResult? Function(String? qty)? changeQty,
    TResult? Function(String? rentalDuration)? changeRentalDuration,
    TResult? Function(String? notes)? changeNotes,
    TResult? Function(DateTime rentDate)? changeRentDate,
  }) {
    return changeRentPrice?.call(rentPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? renterName)? changeRenterName,
    TResult Function(String? renterPhone)? changeRenterPhone,
    TResult Function(String? rentPrice)? changeRentPrice,
    TResult Function(String? qty)? changeQty,
    TResult Function(String? rentalDuration)? changeRentalDuration,
    TResult Function(String? notes)? changeNotes,
    TResult Function(DateTime rentDate)? changeRentDate,
    required TResult orElse(),
  }) {
    if (changeRentPrice != null) {
      return changeRentPrice(rentPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeRenterName value) changeRenterName,
    required TResult Function(_ChangeRenterPhone value) changeRenterPhone,
    required TResult Function(_ChangeRentPrice value) changeRentPrice,
    required TResult Function(_ChangeQty value) changeQty,
    required TResult Function(_ChangeRentalDuration value) changeRentalDuration,
    required TResult Function(_ChangeNotes value) changeNotes,
    required TResult Function(_ChangeRentDate value) changeRentDate,
  }) {
    return changeRentPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeRenterName value)? changeRenterName,
    TResult? Function(_ChangeRenterPhone value)? changeRenterPhone,
    TResult? Function(_ChangeRentPrice value)? changeRentPrice,
    TResult? Function(_ChangeQty value)? changeQty,
    TResult? Function(_ChangeRentalDuration value)? changeRentalDuration,
    TResult? Function(_ChangeNotes value)? changeNotes,
    TResult? Function(_ChangeRentDate value)? changeRentDate,
  }) {
    return changeRentPrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeRenterName value)? changeRenterName,
    TResult Function(_ChangeRenterPhone value)? changeRenterPhone,
    TResult Function(_ChangeRentPrice value)? changeRentPrice,
    TResult Function(_ChangeQty value)? changeQty,
    TResult Function(_ChangeRentalDuration value)? changeRentalDuration,
    TResult Function(_ChangeNotes value)? changeNotes,
    TResult Function(_ChangeRentDate value)? changeRentDate,
    required TResult orElse(),
  }) {
    if (changeRentPrice != null) {
      return changeRentPrice(this);
    }
    return orElse();
  }
}

abstract class _ChangeRentPrice implements RentFormEvent {
  const factory _ChangeRentPrice({final String? rentPrice}) =
      _$ChangeRentPriceImpl;

  String? get rentPrice;
  @JsonKey(ignore: true)
  _$$ChangeRentPriceImplCopyWith<_$ChangeRentPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeQtyImplCopyWith<$Res> {
  factory _$$ChangeQtyImplCopyWith(
          _$ChangeQtyImpl value, $Res Function(_$ChangeQtyImpl) then) =
      __$$ChangeQtyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? qty});
}

/// @nodoc
class __$$ChangeQtyImplCopyWithImpl<$Res>
    extends _$RentFormEventCopyWithImpl<$Res, _$ChangeQtyImpl>
    implements _$$ChangeQtyImplCopyWith<$Res> {
  __$$ChangeQtyImplCopyWithImpl(
      _$ChangeQtyImpl _value, $Res Function(_$ChangeQtyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qty = freezed,
  }) {
    return _then(_$ChangeQtyImpl(
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChangeQtyImpl implements _ChangeQty {
  const _$ChangeQtyImpl({this.qty});

  @override
  final String? qty;

  @override
  String toString() {
    return 'RentFormEvent.changeQty(qty: $qty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeQtyImpl &&
            (identical(other.qty, qty) || other.qty == qty));
  }

  @override
  int get hashCode => Object.hash(runtimeType, qty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeQtyImplCopyWith<_$ChangeQtyImpl> get copyWith =>
      __$$ChangeQtyImplCopyWithImpl<_$ChangeQtyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? renterName) changeRenterName,
    required TResult Function(String? renterPhone) changeRenterPhone,
    required TResult Function(String? rentPrice) changeRentPrice,
    required TResult Function(String? qty) changeQty,
    required TResult Function(String? rentalDuration) changeRentalDuration,
    required TResult Function(String? notes) changeNotes,
    required TResult Function(DateTime rentDate) changeRentDate,
  }) {
    return changeQty(qty);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? renterName)? changeRenterName,
    TResult? Function(String? renterPhone)? changeRenterPhone,
    TResult? Function(String? rentPrice)? changeRentPrice,
    TResult? Function(String? qty)? changeQty,
    TResult? Function(String? rentalDuration)? changeRentalDuration,
    TResult? Function(String? notes)? changeNotes,
    TResult? Function(DateTime rentDate)? changeRentDate,
  }) {
    return changeQty?.call(qty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? renterName)? changeRenterName,
    TResult Function(String? renterPhone)? changeRenterPhone,
    TResult Function(String? rentPrice)? changeRentPrice,
    TResult Function(String? qty)? changeQty,
    TResult Function(String? rentalDuration)? changeRentalDuration,
    TResult Function(String? notes)? changeNotes,
    TResult Function(DateTime rentDate)? changeRentDate,
    required TResult orElse(),
  }) {
    if (changeQty != null) {
      return changeQty(qty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeRenterName value) changeRenterName,
    required TResult Function(_ChangeRenterPhone value) changeRenterPhone,
    required TResult Function(_ChangeRentPrice value) changeRentPrice,
    required TResult Function(_ChangeQty value) changeQty,
    required TResult Function(_ChangeRentalDuration value) changeRentalDuration,
    required TResult Function(_ChangeNotes value) changeNotes,
    required TResult Function(_ChangeRentDate value) changeRentDate,
  }) {
    return changeQty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeRenterName value)? changeRenterName,
    TResult? Function(_ChangeRenterPhone value)? changeRenterPhone,
    TResult? Function(_ChangeRentPrice value)? changeRentPrice,
    TResult? Function(_ChangeQty value)? changeQty,
    TResult? Function(_ChangeRentalDuration value)? changeRentalDuration,
    TResult? Function(_ChangeNotes value)? changeNotes,
    TResult? Function(_ChangeRentDate value)? changeRentDate,
  }) {
    return changeQty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeRenterName value)? changeRenterName,
    TResult Function(_ChangeRenterPhone value)? changeRenterPhone,
    TResult Function(_ChangeRentPrice value)? changeRentPrice,
    TResult Function(_ChangeQty value)? changeQty,
    TResult Function(_ChangeRentalDuration value)? changeRentalDuration,
    TResult Function(_ChangeNotes value)? changeNotes,
    TResult Function(_ChangeRentDate value)? changeRentDate,
    required TResult orElse(),
  }) {
    if (changeQty != null) {
      return changeQty(this);
    }
    return orElse();
  }
}

abstract class _ChangeQty implements RentFormEvent {
  const factory _ChangeQty({final String? qty}) = _$ChangeQtyImpl;

  String? get qty;
  @JsonKey(ignore: true)
  _$$ChangeQtyImplCopyWith<_$ChangeQtyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeRentalDurationImplCopyWith<$Res> {
  factory _$$ChangeRentalDurationImplCopyWith(_$ChangeRentalDurationImpl value,
          $Res Function(_$ChangeRentalDurationImpl) then) =
      __$$ChangeRentalDurationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? rentalDuration});
}

/// @nodoc
class __$$ChangeRentalDurationImplCopyWithImpl<$Res>
    extends _$RentFormEventCopyWithImpl<$Res, _$ChangeRentalDurationImpl>
    implements _$$ChangeRentalDurationImplCopyWith<$Res> {
  __$$ChangeRentalDurationImplCopyWithImpl(_$ChangeRentalDurationImpl _value,
      $Res Function(_$ChangeRentalDurationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rentalDuration = freezed,
  }) {
    return _then(_$ChangeRentalDurationImpl(
      rentalDuration: freezed == rentalDuration
          ? _value.rentalDuration
          : rentalDuration // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChangeRentalDurationImpl implements _ChangeRentalDuration {
  const _$ChangeRentalDurationImpl({this.rentalDuration});

  @override
  final String? rentalDuration;

  @override
  String toString() {
    return 'RentFormEvent.changeRentalDuration(rentalDuration: $rentalDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeRentalDurationImpl &&
            (identical(other.rentalDuration, rentalDuration) ||
                other.rentalDuration == rentalDuration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rentalDuration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeRentalDurationImplCopyWith<_$ChangeRentalDurationImpl>
      get copyWith =>
          __$$ChangeRentalDurationImplCopyWithImpl<_$ChangeRentalDurationImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? renterName) changeRenterName,
    required TResult Function(String? renterPhone) changeRenterPhone,
    required TResult Function(String? rentPrice) changeRentPrice,
    required TResult Function(String? qty) changeQty,
    required TResult Function(String? rentalDuration) changeRentalDuration,
    required TResult Function(String? notes) changeNotes,
    required TResult Function(DateTime rentDate) changeRentDate,
  }) {
    return changeRentalDuration(rentalDuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? renterName)? changeRenterName,
    TResult? Function(String? renterPhone)? changeRenterPhone,
    TResult? Function(String? rentPrice)? changeRentPrice,
    TResult? Function(String? qty)? changeQty,
    TResult? Function(String? rentalDuration)? changeRentalDuration,
    TResult? Function(String? notes)? changeNotes,
    TResult? Function(DateTime rentDate)? changeRentDate,
  }) {
    return changeRentalDuration?.call(rentalDuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? renterName)? changeRenterName,
    TResult Function(String? renterPhone)? changeRenterPhone,
    TResult Function(String? rentPrice)? changeRentPrice,
    TResult Function(String? qty)? changeQty,
    TResult Function(String? rentalDuration)? changeRentalDuration,
    TResult Function(String? notes)? changeNotes,
    TResult Function(DateTime rentDate)? changeRentDate,
    required TResult orElse(),
  }) {
    if (changeRentalDuration != null) {
      return changeRentalDuration(rentalDuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeRenterName value) changeRenterName,
    required TResult Function(_ChangeRenterPhone value) changeRenterPhone,
    required TResult Function(_ChangeRentPrice value) changeRentPrice,
    required TResult Function(_ChangeQty value) changeQty,
    required TResult Function(_ChangeRentalDuration value) changeRentalDuration,
    required TResult Function(_ChangeNotes value) changeNotes,
    required TResult Function(_ChangeRentDate value) changeRentDate,
  }) {
    return changeRentalDuration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeRenterName value)? changeRenterName,
    TResult? Function(_ChangeRenterPhone value)? changeRenterPhone,
    TResult? Function(_ChangeRentPrice value)? changeRentPrice,
    TResult? Function(_ChangeQty value)? changeQty,
    TResult? Function(_ChangeRentalDuration value)? changeRentalDuration,
    TResult? Function(_ChangeNotes value)? changeNotes,
    TResult? Function(_ChangeRentDate value)? changeRentDate,
  }) {
    return changeRentalDuration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeRenterName value)? changeRenterName,
    TResult Function(_ChangeRenterPhone value)? changeRenterPhone,
    TResult Function(_ChangeRentPrice value)? changeRentPrice,
    TResult Function(_ChangeQty value)? changeQty,
    TResult Function(_ChangeRentalDuration value)? changeRentalDuration,
    TResult Function(_ChangeNotes value)? changeNotes,
    TResult Function(_ChangeRentDate value)? changeRentDate,
    required TResult orElse(),
  }) {
    if (changeRentalDuration != null) {
      return changeRentalDuration(this);
    }
    return orElse();
  }
}

abstract class _ChangeRentalDuration implements RentFormEvent {
  const factory _ChangeRentalDuration({final String? rentalDuration}) =
      _$ChangeRentalDurationImpl;

  String? get rentalDuration;
  @JsonKey(ignore: true)
  _$$ChangeRentalDurationImplCopyWith<_$ChangeRentalDurationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeNotesImplCopyWith<$Res> {
  factory _$$ChangeNotesImplCopyWith(
          _$ChangeNotesImpl value, $Res Function(_$ChangeNotesImpl) then) =
      __$$ChangeNotesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? notes});
}

/// @nodoc
class __$$ChangeNotesImplCopyWithImpl<$Res>
    extends _$RentFormEventCopyWithImpl<$Res, _$ChangeNotesImpl>
    implements _$$ChangeNotesImplCopyWith<$Res> {
  __$$ChangeNotesImplCopyWithImpl(
      _$ChangeNotesImpl _value, $Res Function(_$ChangeNotesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = freezed,
  }) {
    return _then(_$ChangeNotesImpl(
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChangeNotesImpl implements _ChangeNotes {
  const _$ChangeNotesImpl({this.notes});

  @override
  final String? notes;

  @override
  String toString() {
    return 'RentFormEvent.changeNotes(notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeNotesImpl &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeNotesImplCopyWith<_$ChangeNotesImpl> get copyWith =>
      __$$ChangeNotesImplCopyWithImpl<_$ChangeNotesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? renterName) changeRenterName,
    required TResult Function(String? renterPhone) changeRenterPhone,
    required TResult Function(String? rentPrice) changeRentPrice,
    required TResult Function(String? qty) changeQty,
    required TResult Function(String? rentalDuration) changeRentalDuration,
    required TResult Function(String? notes) changeNotes,
    required TResult Function(DateTime rentDate) changeRentDate,
  }) {
    return changeNotes(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? renterName)? changeRenterName,
    TResult? Function(String? renterPhone)? changeRenterPhone,
    TResult? Function(String? rentPrice)? changeRentPrice,
    TResult? Function(String? qty)? changeQty,
    TResult? Function(String? rentalDuration)? changeRentalDuration,
    TResult? Function(String? notes)? changeNotes,
    TResult? Function(DateTime rentDate)? changeRentDate,
  }) {
    return changeNotes?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? renterName)? changeRenterName,
    TResult Function(String? renterPhone)? changeRenterPhone,
    TResult Function(String? rentPrice)? changeRentPrice,
    TResult Function(String? qty)? changeQty,
    TResult Function(String? rentalDuration)? changeRentalDuration,
    TResult Function(String? notes)? changeNotes,
    TResult Function(DateTime rentDate)? changeRentDate,
    required TResult orElse(),
  }) {
    if (changeNotes != null) {
      return changeNotes(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeRenterName value) changeRenterName,
    required TResult Function(_ChangeRenterPhone value) changeRenterPhone,
    required TResult Function(_ChangeRentPrice value) changeRentPrice,
    required TResult Function(_ChangeQty value) changeQty,
    required TResult Function(_ChangeRentalDuration value) changeRentalDuration,
    required TResult Function(_ChangeNotes value) changeNotes,
    required TResult Function(_ChangeRentDate value) changeRentDate,
  }) {
    return changeNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeRenterName value)? changeRenterName,
    TResult? Function(_ChangeRenterPhone value)? changeRenterPhone,
    TResult? Function(_ChangeRentPrice value)? changeRentPrice,
    TResult? Function(_ChangeQty value)? changeQty,
    TResult? Function(_ChangeRentalDuration value)? changeRentalDuration,
    TResult? Function(_ChangeNotes value)? changeNotes,
    TResult? Function(_ChangeRentDate value)? changeRentDate,
  }) {
    return changeNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeRenterName value)? changeRenterName,
    TResult Function(_ChangeRenterPhone value)? changeRenterPhone,
    TResult Function(_ChangeRentPrice value)? changeRentPrice,
    TResult Function(_ChangeQty value)? changeQty,
    TResult Function(_ChangeRentalDuration value)? changeRentalDuration,
    TResult Function(_ChangeNotes value)? changeNotes,
    TResult Function(_ChangeRentDate value)? changeRentDate,
    required TResult orElse(),
  }) {
    if (changeNotes != null) {
      return changeNotes(this);
    }
    return orElse();
  }
}

abstract class _ChangeNotes implements RentFormEvent {
  const factory _ChangeNotes({final String? notes}) = _$ChangeNotesImpl;

  String? get notes;
  @JsonKey(ignore: true)
  _$$ChangeNotesImplCopyWith<_$ChangeNotesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeRentDateImplCopyWith<$Res> {
  factory _$$ChangeRentDateImplCopyWith(_$ChangeRentDateImpl value,
          $Res Function(_$ChangeRentDateImpl) then) =
      __$$ChangeRentDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime rentDate});
}

/// @nodoc
class __$$ChangeRentDateImplCopyWithImpl<$Res>
    extends _$RentFormEventCopyWithImpl<$Res, _$ChangeRentDateImpl>
    implements _$$ChangeRentDateImplCopyWith<$Res> {
  __$$ChangeRentDateImplCopyWithImpl(
      _$ChangeRentDateImpl _value, $Res Function(_$ChangeRentDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rentDate = null,
  }) {
    return _then(_$ChangeRentDateImpl(
      rentDate: null == rentDate
          ? _value.rentDate
          : rentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ChangeRentDateImpl implements _ChangeRentDate {
  const _$ChangeRentDateImpl({required this.rentDate});

  @override
  final DateTime rentDate;

  @override
  String toString() {
    return 'RentFormEvent.changeRentDate(rentDate: $rentDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeRentDateImpl &&
            (identical(other.rentDate, rentDate) ||
                other.rentDate == rentDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rentDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeRentDateImplCopyWith<_$ChangeRentDateImpl> get copyWith =>
      __$$ChangeRentDateImplCopyWithImpl<_$ChangeRentDateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? renterName) changeRenterName,
    required TResult Function(String? renterPhone) changeRenterPhone,
    required TResult Function(String? rentPrice) changeRentPrice,
    required TResult Function(String? qty) changeQty,
    required TResult Function(String? rentalDuration) changeRentalDuration,
    required TResult Function(String? notes) changeNotes,
    required TResult Function(DateTime rentDate) changeRentDate,
  }) {
    return changeRentDate(rentDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? renterName)? changeRenterName,
    TResult? Function(String? renterPhone)? changeRenterPhone,
    TResult? Function(String? rentPrice)? changeRentPrice,
    TResult? Function(String? qty)? changeQty,
    TResult? Function(String? rentalDuration)? changeRentalDuration,
    TResult? Function(String? notes)? changeNotes,
    TResult? Function(DateTime rentDate)? changeRentDate,
  }) {
    return changeRentDate?.call(rentDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? renterName)? changeRenterName,
    TResult Function(String? renterPhone)? changeRenterPhone,
    TResult Function(String? rentPrice)? changeRentPrice,
    TResult Function(String? qty)? changeQty,
    TResult Function(String? rentalDuration)? changeRentalDuration,
    TResult Function(String? notes)? changeNotes,
    TResult Function(DateTime rentDate)? changeRentDate,
    required TResult orElse(),
  }) {
    if (changeRentDate != null) {
      return changeRentDate(rentDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeRenterName value) changeRenterName,
    required TResult Function(_ChangeRenterPhone value) changeRenterPhone,
    required TResult Function(_ChangeRentPrice value) changeRentPrice,
    required TResult Function(_ChangeQty value) changeQty,
    required TResult Function(_ChangeRentalDuration value) changeRentalDuration,
    required TResult Function(_ChangeNotes value) changeNotes,
    required TResult Function(_ChangeRentDate value) changeRentDate,
  }) {
    return changeRentDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeRenterName value)? changeRenterName,
    TResult? Function(_ChangeRenterPhone value)? changeRenterPhone,
    TResult? Function(_ChangeRentPrice value)? changeRentPrice,
    TResult? Function(_ChangeQty value)? changeQty,
    TResult? Function(_ChangeRentalDuration value)? changeRentalDuration,
    TResult? Function(_ChangeNotes value)? changeNotes,
    TResult? Function(_ChangeRentDate value)? changeRentDate,
  }) {
    return changeRentDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeRenterName value)? changeRenterName,
    TResult Function(_ChangeRenterPhone value)? changeRenterPhone,
    TResult Function(_ChangeRentPrice value)? changeRentPrice,
    TResult Function(_ChangeQty value)? changeQty,
    TResult Function(_ChangeRentalDuration value)? changeRentalDuration,
    TResult Function(_ChangeNotes value)? changeNotes,
    TResult Function(_ChangeRentDate value)? changeRentDate,
    required TResult orElse(),
  }) {
    if (changeRentDate != null) {
      return changeRentDate(this);
    }
    return orElse();
  }
}

abstract class _ChangeRentDate implements RentFormEvent {
  const factory _ChangeRentDate({required final DateTime rentDate}) =
      _$ChangeRentDateImpl;

  DateTime get rentDate;
  @JsonKey(ignore: true)
  _$$ChangeRentDateImplCopyWith<_$ChangeRentDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RentFormState {
  StringForm get renterName => throw _privateConstructorUsedError;
  StringForm get renterPhone => throw _privateConstructorUsedError;
  IntForm get rentPrice => throw _privateConstructorUsedError;
  IntForm get qty => throw _privateConstructorUsedError;
  IntForm get rentalDuration => throw _privateConstructorUsedError;
  StringForm get notes => throw _privateConstructorUsedError;
  DateTime? get rentDate => throw _privateConstructorUsedError;
  FormzStatus get formzStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RentFormStateCopyWith<RentFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentFormStateCopyWith<$Res> {
  factory $RentFormStateCopyWith(
          RentFormState value, $Res Function(RentFormState) then) =
      _$RentFormStateCopyWithImpl<$Res, RentFormState>;
  @useResult
  $Res call(
      {StringForm renterName,
      StringForm renterPhone,
      IntForm rentPrice,
      IntForm qty,
      IntForm rentalDuration,
      StringForm notes,
      DateTime? rentDate,
      FormzStatus formzStatus});
}

/// @nodoc
class _$RentFormStateCopyWithImpl<$Res, $Val extends RentFormState>
    implements $RentFormStateCopyWith<$Res> {
  _$RentFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? renterName = null,
    Object? renterPhone = null,
    Object? rentPrice = null,
    Object? qty = null,
    Object? rentalDuration = null,
    Object? notes = null,
    Object? rentDate = freezed,
    Object? formzStatus = null,
  }) {
    return _then(_value.copyWith(
      renterName: null == renterName
          ? _value.renterName
          : renterName // ignore: cast_nullable_to_non_nullable
              as StringForm,
      renterPhone: null == renterPhone
          ? _value.renterPhone
          : renterPhone // ignore: cast_nullable_to_non_nullable
              as StringForm,
      rentPrice: null == rentPrice
          ? _value.rentPrice
          : rentPrice // ignore: cast_nullable_to_non_nullable
              as IntForm,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as IntForm,
      rentalDuration: null == rentalDuration
          ? _value.rentalDuration
          : rentalDuration // ignore: cast_nullable_to_non_nullable
              as IntForm,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as StringForm,
      rentDate: freezed == rentDate
          ? _value.rentDate
          : rentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      formzStatus: null == formzStatus
          ? _value.formzStatus
          : formzStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RentFormStateImplCopyWith<$Res>
    implements $RentFormStateCopyWith<$Res> {
  factory _$$RentFormStateImplCopyWith(
          _$RentFormStateImpl value, $Res Function(_$RentFormStateImpl) then) =
      __$$RentFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringForm renterName,
      StringForm renterPhone,
      IntForm rentPrice,
      IntForm qty,
      IntForm rentalDuration,
      StringForm notes,
      DateTime? rentDate,
      FormzStatus formzStatus});
}

/// @nodoc
class __$$RentFormStateImplCopyWithImpl<$Res>
    extends _$RentFormStateCopyWithImpl<$Res, _$RentFormStateImpl>
    implements _$$RentFormStateImplCopyWith<$Res> {
  __$$RentFormStateImplCopyWithImpl(
      _$RentFormStateImpl _value, $Res Function(_$RentFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? renterName = null,
    Object? renterPhone = null,
    Object? rentPrice = null,
    Object? qty = null,
    Object? rentalDuration = null,
    Object? notes = null,
    Object? rentDate = freezed,
    Object? formzStatus = null,
  }) {
    return _then(_$RentFormStateImpl(
      renterName: null == renterName
          ? _value.renterName
          : renterName // ignore: cast_nullable_to_non_nullable
              as StringForm,
      renterPhone: null == renterPhone
          ? _value.renterPhone
          : renterPhone // ignore: cast_nullable_to_non_nullable
              as StringForm,
      rentPrice: null == rentPrice
          ? _value.rentPrice
          : rentPrice // ignore: cast_nullable_to_non_nullable
              as IntForm,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as IntForm,
      rentalDuration: null == rentalDuration
          ? _value.rentalDuration
          : rentalDuration // ignore: cast_nullable_to_non_nullable
              as IntForm,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as StringForm,
      rentDate: freezed == rentDate
          ? _value.rentDate
          : rentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      formzStatus: null == formzStatus
          ? _value.formzStatus
          : formzStatus // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$RentFormStateImpl implements _RentFormState {
  _$RentFormStateImpl(
      {this.renterName = const StringForm.pure(isRequired: true),
      this.renterPhone =
          const StringForm.pure(isRequired: false, isPhoneNumber: true),
      this.rentPrice = const IntForm.pure(min: 0),
      this.qty = const IntForm.pure(min: 1),
      this.rentalDuration = const IntForm.dirty(min: 1, value: '1'),
      this.notes = const StringForm.pure(isRequired: false),
      this.rentDate,
      this.formzStatus = FormzStatus.pure});

  @override
  @JsonKey()
  final StringForm renterName;
  @override
  @JsonKey()
  final StringForm renterPhone;
  @override
  @JsonKey()
  final IntForm rentPrice;
  @override
  @JsonKey()
  final IntForm qty;
  @override
  @JsonKey()
  final IntForm rentalDuration;
  @override
  @JsonKey()
  final StringForm notes;
  @override
  final DateTime? rentDate;
  @override
  @JsonKey()
  final FormzStatus formzStatus;

  @override
  String toString() {
    return 'RentFormState(renterName: $renterName, renterPhone: $renterPhone, rentPrice: $rentPrice, qty: $qty, rentalDuration: $rentalDuration, notes: $notes, rentDate: $rentDate, formzStatus: $formzStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RentFormStateImpl &&
            (identical(other.renterName, renterName) ||
                other.renterName == renterName) &&
            (identical(other.renterPhone, renterPhone) ||
                other.renterPhone == renterPhone) &&
            (identical(other.rentPrice, rentPrice) ||
                other.rentPrice == rentPrice) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.rentalDuration, rentalDuration) ||
                other.rentalDuration == rentalDuration) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.rentDate, rentDate) ||
                other.rentDate == rentDate) &&
            (identical(other.formzStatus, formzStatus) ||
                other.formzStatus == formzStatus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, renterName, renterPhone,
      rentPrice, qty, rentalDuration, notes, rentDate, formzStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RentFormStateImplCopyWith<_$RentFormStateImpl> get copyWith =>
      __$$RentFormStateImplCopyWithImpl<_$RentFormStateImpl>(this, _$identity);
}

abstract class _RentFormState implements RentFormState {
  factory _RentFormState(
      {final StringForm renterName,
      final StringForm renterPhone,
      final IntForm rentPrice,
      final IntForm qty,
      final IntForm rentalDuration,
      final StringForm notes,
      final DateTime? rentDate,
      final FormzStatus formzStatus}) = _$RentFormStateImpl;

  @override
  StringForm get renterName;
  @override
  StringForm get renterPhone;
  @override
  IntForm get rentPrice;
  @override
  IntForm get qty;
  @override
  IntForm get rentalDuration;
  @override
  StringForm get notes;
  @override
  DateTime? get rentDate;
  @override
  FormzStatus get formzStatus;
  @override
  @JsonKey(ignore: true)
  _$$RentFormStateImplCopyWith<_$RentFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
