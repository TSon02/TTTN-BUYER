// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CardStateData {
  String get error => throw _privateConstructorUsedError;
  StatusType get status => throw _privateConstructorUsedError;
  List<CreditCard> get cards => throw _privateConstructorUsedError;
  CreditCard? get cardResponse => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CardStateDataCopyWith<CardStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardStateDataCopyWith<$Res> {
  factory $CardStateDataCopyWith(
          CardStateData value, $Res Function(CardStateData) then) =
      _$CardStateDataCopyWithImpl<$Res, CardStateData>;
  @useResult
  $Res call(
      {String error,
      StatusType status,
      List<CreditCard> cards,
      CreditCard? cardResponse});
}

/// @nodoc
class _$CardStateDataCopyWithImpl<$Res, $Val extends CardStateData>
    implements $CardStateDataCopyWith<$Res> {
  _$CardStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? cards = null,
    Object? cardResponse = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CreditCard>,
      cardResponse: freezed == cardResponse
          ? _value.cardResponse
          : cardResponse // ignore: cast_nullable_to_non_nullable
              as CreditCard?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CardStateDataCopyWith<$Res>
    implements $CardStateDataCopyWith<$Res> {
  factory _$$_CardStateDataCopyWith(
          _$_CardStateData value, $Res Function(_$_CardStateData) then) =
      __$$_CardStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String error,
      StatusType status,
      List<CreditCard> cards,
      CreditCard? cardResponse});
}

/// @nodoc
class __$$_CardStateDataCopyWithImpl<$Res>
    extends _$CardStateDataCopyWithImpl<$Res, _$_CardStateData>
    implements _$$_CardStateDataCopyWith<$Res> {
  __$$_CardStateDataCopyWithImpl(
      _$_CardStateData _value, $Res Function(_$_CardStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? cards = null,
    Object? cardResponse = freezed,
  }) {
    return _then(_$_CardStateData(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CreditCard>,
      cardResponse: freezed == cardResponse
          ? _value.cardResponse
          : cardResponse // ignore: cast_nullable_to_non_nullable
              as CreditCard?,
    ));
  }
}

/// @nodoc

class _$_CardStateData implements _CardStateData {
  const _$_CardStateData(
      {this.error = '',
      this.status = StatusType.init,
      final List<CreditCard> cards = const [],
      this.cardResponse})
      : _cards = cards;

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final StatusType status;
  final List<CreditCard> _cards;
  @override
  @JsonKey()
  List<CreditCard> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  final CreditCard? cardResponse;

  @override
  String toString() {
    return 'CardStateData(error: $error, status: $status, cards: $cards, cardResponse: $cardResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardStateData &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._cards, _cards) &&
            (identical(other.cardResponse, cardResponse) ||
                other.cardResponse == cardResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, status,
      const DeepCollectionEquality().hash(_cards), cardResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardStateDataCopyWith<_$_CardStateData> get copyWith =>
      __$$_CardStateDataCopyWithImpl<_$_CardStateData>(this, _$identity);
}

abstract class _CardStateData implements CardStateData {
  const factory _CardStateData(
      {final String error,
      final StatusType status,
      final List<CreditCard> cards,
      final CreditCard? cardResponse}) = _$_CardStateData;

  @override
  String get error;
  @override
  StatusType get status;
  @override
  List<CreditCard> get cards;
  @override
  CreditCard? get cardResponse;
  @override
  @JsonKey(ignore: true)
  _$$_CardStateDataCopyWith<_$_CardStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CardState {
  CardStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CardStateData? data) initial,
    required TResult Function(CardStateData? data) status,
    required TResult Function(CardStateData? data) getError,
    required TResult Function(CardStateData? data) getCards,
    required TResult Function(CardStateData? data) deleteCard,
    required TResult Function(CardStateData? data) getCardResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CardStateData? data)? initial,
    TResult? Function(CardStateData? data)? status,
    TResult? Function(CardStateData? data)? getError,
    TResult? Function(CardStateData? data)? getCards,
    TResult? Function(CardStateData? data)? deleteCard,
    TResult? Function(CardStateData? data)? getCardResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CardStateData? data)? initial,
    TResult Function(CardStateData? data)? status,
    TResult Function(CardStateData? data)? getError,
    TResult Function(CardStateData? data)? getCards,
    TResult Function(CardStateData? data)? deleteCard,
    TResult Function(CardStateData? data)? getCardResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetCards value) getCards,
    required TResult Function(DeleteCard value) deleteCard,
    required TResult Function(GetCardResponse value) getCardResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetCards value)? getCards,
    TResult? Function(DeleteCard value)? deleteCard,
    TResult? Function(GetCardResponse value)? getCardResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetCards value)? getCards,
    TResult Function(DeleteCard value)? deleteCard,
    TResult Function(GetCardResponse value)? getCardResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CardStateCopyWith<CardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardStateCopyWith<$Res> {
  factory $CardStateCopyWith(CardState value, $Res Function(CardState) then) =
      _$CardStateCopyWithImpl<$Res, CardState>;
  @useResult
  $Res call({CardStateData? data});

  $CardStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CardStateCopyWithImpl<$Res, $Val extends CardState>
    implements $CardStateCopyWith<$Res> {
  _$CardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CardStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CardStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CardStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $CardStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CardStateData? data});

  @override
  $CardStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$CardStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Initial(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CardStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final CardStateData? data;

  @override
  String toString() {
    return 'CardState.initial(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initial &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialCopyWith<_$Initial> get copyWith =>
      __$$InitialCopyWithImpl<_$Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CardStateData? data) initial,
    required TResult Function(CardStateData? data) status,
    required TResult Function(CardStateData? data) getError,
    required TResult Function(CardStateData? data) getCards,
    required TResult Function(CardStateData? data) deleteCard,
    required TResult Function(CardStateData? data) getCardResponse,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CardStateData? data)? initial,
    TResult? Function(CardStateData? data)? status,
    TResult? Function(CardStateData? data)? getError,
    TResult? Function(CardStateData? data)? getCards,
    TResult? Function(CardStateData? data)? deleteCard,
    TResult? Function(CardStateData? data)? getCardResponse,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CardStateData? data)? initial,
    TResult Function(CardStateData? data)? status,
    TResult Function(CardStateData? data)? getError,
    TResult Function(CardStateData? data)? getCards,
    TResult Function(CardStateData? data)? deleteCard,
    TResult Function(CardStateData? data)? getCardResponse,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetCards value) getCards,
    required TResult Function(DeleteCard value) deleteCard,
    required TResult Function(GetCardResponse value) getCardResponse,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetCards value)? getCards,
    TResult? Function(DeleteCard value)? deleteCard,
    TResult? Function(GetCardResponse value)? getCardResponse,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetCards value)? getCards,
    TResult Function(DeleteCard value)? deleteCard,
    TResult Function(GetCardResponse value)? getCardResponse,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CardState {
  const factory Initial({final CardStateData? data}) = _$Initial;

  @override
  CardStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res> implements $CardStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CardStateData? data});

  @override
  $CardStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$CardStateCopyWithImpl<$Res, _$Status>
    implements _$$StatusCopyWith<$Res> {
  __$$StatusCopyWithImpl(_$Status _value, $Res Function(_$Status) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Status(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CardStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final CardStateData? data;

  @override
  String toString() {
    return 'CardState.status(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Status &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusCopyWith<_$Status> get copyWith =>
      __$$StatusCopyWithImpl<_$Status>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CardStateData? data) initial,
    required TResult Function(CardStateData? data) status,
    required TResult Function(CardStateData? data) getError,
    required TResult Function(CardStateData? data) getCards,
    required TResult Function(CardStateData? data) deleteCard,
    required TResult Function(CardStateData? data) getCardResponse,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CardStateData? data)? initial,
    TResult? Function(CardStateData? data)? status,
    TResult? Function(CardStateData? data)? getError,
    TResult? Function(CardStateData? data)? getCards,
    TResult? Function(CardStateData? data)? deleteCard,
    TResult? Function(CardStateData? data)? getCardResponse,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CardStateData? data)? initial,
    TResult Function(CardStateData? data)? status,
    TResult Function(CardStateData? data)? getError,
    TResult Function(CardStateData? data)? getCards,
    TResult Function(CardStateData? data)? deleteCard,
    TResult Function(CardStateData? data)? getCardResponse,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetCards value) getCards,
    required TResult Function(DeleteCard value) deleteCard,
    required TResult Function(GetCardResponse value) getCardResponse,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetCards value)? getCards,
    TResult? Function(DeleteCard value)? deleteCard,
    TResult? Function(GetCardResponse value)? getCardResponse,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetCards value)? getCards,
    TResult Function(DeleteCard value)? deleteCard,
    TResult Function(GetCardResponse value)? getCardResponse,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements CardState {
  const factory Status({final CardStateData? data}) = _$Status;

  @override
  CardStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorCopyWith<$Res> implements $CardStateCopyWith<$Res> {
  factory _$$GetErrorCopyWith(
          _$GetError value, $Res Function(_$GetError) then) =
      __$$GetErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CardStateData? data});

  @override
  $CardStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetErrorCopyWithImpl<$Res>
    extends _$CardStateCopyWithImpl<$Res, _$GetError>
    implements _$$GetErrorCopyWith<$Res> {
  __$$GetErrorCopyWithImpl(_$GetError _value, $Res Function(_$GetError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetError(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CardStateData?,
    ));
  }
}

/// @nodoc

class _$GetError implements GetError {
  const _$GetError({this.data});

  @override
  final CardStateData? data;

  @override
  String toString() {
    return 'CardState.getError(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetError &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetErrorCopyWith<_$GetError> get copyWith =>
      __$$GetErrorCopyWithImpl<_$GetError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CardStateData? data) initial,
    required TResult Function(CardStateData? data) status,
    required TResult Function(CardStateData? data) getError,
    required TResult Function(CardStateData? data) getCards,
    required TResult Function(CardStateData? data) deleteCard,
    required TResult Function(CardStateData? data) getCardResponse,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CardStateData? data)? initial,
    TResult? Function(CardStateData? data)? status,
    TResult? Function(CardStateData? data)? getError,
    TResult? Function(CardStateData? data)? getCards,
    TResult? Function(CardStateData? data)? deleteCard,
    TResult? Function(CardStateData? data)? getCardResponse,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CardStateData? data)? initial,
    TResult Function(CardStateData? data)? status,
    TResult Function(CardStateData? data)? getError,
    TResult Function(CardStateData? data)? getCards,
    TResult Function(CardStateData? data)? deleteCard,
    TResult Function(CardStateData? data)? getCardResponse,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetCards value) getCards,
    required TResult Function(DeleteCard value) deleteCard,
    required TResult Function(GetCardResponse value) getCardResponse,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetCards value)? getCards,
    TResult? Function(DeleteCard value)? deleteCard,
    TResult? Function(GetCardResponse value)? getCardResponse,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetCards value)? getCards,
    TResult Function(DeleteCard value)? deleteCard,
    TResult Function(GetCardResponse value)? getCardResponse,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements CardState {
  const factory GetError({final CardStateData? data}) = _$GetError;

  @override
  CardStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorCopyWith<_$GetError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCardsCopyWith<$Res> implements $CardStateCopyWith<$Res> {
  factory _$$GetCardsCopyWith(
          _$GetCards value, $Res Function(_$GetCards) then) =
      __$$GetCardsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CardStateData? data});

  @override
  $CardStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetCardsCopyWithImpl<$Res>
    extends _$CardStateCopyWithImpl<$Res, _$GetCards>
    implements _$$GetCardsCopyWith<$Res> {
  __$$GetCardsCopyWithImpl(_$GetCards _value, $Res Function(_$GetCards) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetCards(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CardStateData?,
    ));
  }
}

/// @nodoc

class _$GetCards implements GetCards {
  const _$GetCards({this.data});

  @override
  final CardStateData? data;

  @override
  String toString() {
    return 'CardState.getCards(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCards &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCardsCopyWith<_$GetCards> get copyWith =>
      __$$GetCardsCopyWithImpl<_$GetCards>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CardStateData? data) initial,
    required TResult Function(CardStateData? data) status,
    required TResult Function(CardStateData? data) getError,
    required TResult Function(CardStateData? data) getCards,
    required TResult Function(CardStateData? data) deleteCard,
    required TResult Function(CardStateData? data) getCardResponse,
  }) {
    return getCards(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CardStateData? data)? initial,
    TResult? Function(CardStateData? data)? status,
    TResult? Function(CardStateData? data)? getError,
    TResult? Function(CardStateData? data)? getCards,
    TResult? Function(CardStateData? data)? deleteCard,
    TResult? Function(CardStateData? data)? getCardResponse,
  }) {
    return getCards?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CardStateData? data)? initial,
    TResult Function(CardStateData? data)? status,
    TResult Function(CardStateData? data)? getError,
    TResult Function(CardStateData? data)? getCards,
    TResult Function(CardStateData? data)? deleteCard,
    TResult Function(CardStateData? data)? getCardResponse,
    required TResult orElse(),
  }) {
    if (getCards != null) {
      return getCards(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetCards value) getCards,
    required TResult Function(DeleteCard value) deleteCard,
    required TResult Function(GetCardResponse value) getCardResponse,
  }) {
    return getCards(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetCards value)? getCards,
    TResult? Function(DeleteCard value)? deleteCard,
    TResult? Function(GetCardResponse value)? getCardResponse,
  }) {
    return getCards?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetCards value)? getCards,
    TResult Function(DeleteCard value)? deleteCard,
    TResult Function(GetCardResponse value)? getCardResponse,
    required TResult orElse(),
  }) {
    if (getCards != null) {
      return getCards(this);
    }
    return orElse();
  }
}

abstract class GetCards implements CardState {
  const factory GetCards({final CardStateData? data}) = _$GetCards;

  @override
  CardStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetCardsCopyWith<_$GetCards> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCardCopyWith<$Res> implements $CardStateCopyWith<$Res> {
  factory _$$DeleteCardCopyWith(
          _$DeleteCard value, $Res Function(_$DeleteCard) then) =
      __$$DeleteCardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CardStateData? data});

  @override
  $CardStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$DeleteCardCopyWithImpl<$Res>
    extends _$CardStateCopyWithImpl<$Res, _$DeleteCard>
    implements _$$DeleteCardCopyWith<$Res> {
  __$$DeleteCardCopyWithImpl(
      _$DeleteCard _value, $Res Function(_$DeleteCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DeleteCard(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CardStateData?,
    ));
  }
}

/// @nodoc

class _$DeleteCard implements DeleteCard {
  const _$DeleteCard({this.data});

  @override
  final CardStateData? data;

  @override
  String toString() {
    return 'CardState.deleteCard(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCard &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCardCopyWith<_$DeleteCard> get copyWith =>
      __$$DeleteCardCopyWithImpl<_$DeleteCard>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CardStateData? data) initial,
    required TResult Function(CardStateData? data) status,
    required TResult Function(CardStateData? data) getError,
    required TResult Function(CardStateData? data) getCards,
    required TResult Function(CardStateData? data) deleteCard,
    required TResult Function(CardStateData? data) getCardResponse,
  }) {
    return deleteCard(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CardStateData? data)? initial,
    TResult? Function(CardStateData? data)? status,
    TResult? Function(CardStateData? data)? getError,
    TResult? Function(CardStateData? data)? getCards,
    TResult? Function(CardStateData? data)? deleteCard,
    TResult? Function(CardStateData? data)? getCardResponse,
  }) {
    return deleteCard?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CardStateData? data)? initial,
    TResult Function(CardStateData? data)? status,
    TResult Function(CardStateData? data)? getError,
    TResult Function(CardStateData? data)? getCards,
    TResult Function(CardStateData? data)? deleteCard,
    TResult Function(CardStateData? data)? getCardResponse,
    required TResult orElse(),
  }) {
    if (deleteCard != null) {
      return deleteCard(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetCards value) getCards,
    required TResult Function(DeleteCard value) deleteCard,
    required TResult Function(GetCardResponse value) getCardResponse,
  }) {
    return deleteCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetCards value)? getCards,
    TResult? Function(DeleteCard value)? deleteCard,
    TResult? Function(GetCardResponse value)? getCardResponse,
  }) {
    return deleteCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetCards value)? getCards,
    TResult Function(DeleteCard value)? deleteCard,
    TResult Function(GetCardResponse value)? getCardResponse,
    required TResult orElse(),
  }) {
    if (deleteCard != null) {
      return deleteCard(this);
    }
    return orElse();
  }
}

abstract class DeleteCard implements CardState {
  const factory DeleteCard({final CardStateData? data}) = _$DeleteCard;

  @override
  CardStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$DeleteCardCopyWith<_$DeleteCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCardResponseCopyWith<$Res>
    implements $CardStateCopyWith<$Res> {
  factory _$$GetCardResponseCopyWith(
          _$GetCardResponse value, $Res Function(_$GetCardResponse) then) =
      __$$GetCardResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CardStateData? data});

  @override
  $CardStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetCardResponseCopyWithImpl<$Res>
    extends _$CardStateCopyWithImpl<$Res, _$GetCardResponse>
    implements _$$GetCardResponseCopyWith<$Res> {
  __$$GetCardResponseCopyWithImpl(
      _$GetCardResponse _value, $Res Function(_$GetCardResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetCardResponse(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CardStateData?,
    ));
  }
}

/// @nodoc

class _$GetCardResponse implements GetCardResponse {
  const _$GetCardResponse({this.data});

  @override
  final CardStateData? data;

  @override
  String toString() {
    return 'CardState.getCardResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCardResponse &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCardResponseCopyWith<_$GetCardResponse> get copyWith =>
      __$$GetCardResponseCopyWithImpl<_$GetCardResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CardStateData? data) initial,
    required TResult Function(CardStateData? data) status,
    required TResult Function(CardStateData? data) getError,
    required TResult Function(CardStateData? data) getCards,
    required TResult Function(CardStateData? data) deleteCard,
    required TResult Function(CardStateData? data) getCardResponse,
  }) {
    return getCardResponse(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CardStateData? data)? initial,
    TResult? Function(CardStateData? data)? status,
    TResult? Function(CardStateData? data)? getError,
    TResult? Function(CardStateData? data)? getCards,
    TResult? Function(CardStateData? data)? deleteCard,
    TResult? Function(CardStateData? data)? getCardResponse,
  }) {
    return getCardResponse?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CardStateData? data)? initial,
    TResult Function(CardStateData? data)? status,
    TResult Function(CardStateData? data)? getError,
    TResult Function(CardStateData? data)? getCards,
    TResult Function(CardStateData? data)? deleteCard,
    TResult Function(CardStateData? data)? getCardResponse,
    required TResult orElse(),
  }) {
    if (getCardResponse != null) {
      return getCardResponse(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetCards value) getCards,
    required TResult Function(DeleteCard value) deleteCard,
    required TResult Function(GetCardResponse value) getCardResponse,
  }) {
    return getCardResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetCards value)? getCards,
    TResult? Function(DeleteCard value)? deleteCard,
    TResult? Function(GetCardResponse value)? getCardResponse,
  }) {
    return getCardResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetCards value)? getCards,
    TResult Function(DeleteCard value)? deleteCard,
    TResult Function(GetCardResponse value)? getCardResponse,
    required TResult orElse(),
  }) {
    if (getCardResponse != null) {
      return getCardResponse(this);
    }
    return orElse();
  }
}

abstract class GetCardResponse implements CardState {
  const factory GetCardResponse({final CardStateData? data}) =
      _$GetCardResponse;

  @override
  CardStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetCardResponseCopyWith<_$GetCardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
