// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentStateData {
  String get error => throw _privateConstructorUsedError;
  List<Order> get orders => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentStateDataCopyWith<PaymentStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateDataCopyWith<$Res> {
  factory $PaymentStateDataCopyWith(
          PaymentStateData value, $Res Function(PaymentStateData) then) =
      _$PaymentStateDataCopyWithImpl<$Res, PaymentStateData>;
  @useResult
  $Res call({String error, List<Order> orders});
}

/// @nodoc
class _$PaymentStateDataCopyWithImpl<$Res, $Val extends PaymentStateData>
    implements $PaymentStateDataCopyWith<$Res> {
  _$PaymentStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? orders = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentStateDataCopyWith<$Res>
    implements $PaymentStateDataCopyWith<$Res> {
  factory _$$_PaymentStateDataCopyWith(
          _$_PaymentStateData value, $Res Function(_$_PaymentStateData) then) =
      __$$_PaymentStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, List<Order> orders});
}

/// @nodoc
class __$$_PaymentStateDataCopyWithImpl<$Res>
    extends _$PaymentStateDataCopyWithImpl<$Res, _$_PaymentStateData>
    implements _$$_PaymentStateDataCopyWith<$Res> {
  __$$_PaymentStateDataCopyWithImpl(
      _$_PaymentStateData _value, $Res Function(_$_PaymentStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? orders = null,
  }) {
    return _then(_$_PaymentStateData(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
    ));
  }
}

/// @nodoc

class _$_PaymentStateData
    with DiagnosticableTreeMixin
    implements _PaymentStateData {
  const _$_PaymentStateData(
      {this.error = '', final List<Order> orders = const []})
      : _orders = orders;

  @override
  @JsonKey()
  final String error;
  final List<Order> _orders;
  @override
  @JsonKey()
  List<Order> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentStateData(error: $error, orders: $orders)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentStateData'))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('orders', orders));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentStateData &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, error, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentStateDataCopyWith<_$_PaymentStateData> get copyWith =>
      __$$_PaymentStateDataCopyWithImpl<_$_PaymentStateData>(this, _$identity);
}

abstract class _PaymentStateData implements PaymentStateData {
  const factory _PaymentStateData(
      {final String error, final List<Order> orders}) = _$_PaymentStateData;

  @override
  String get error;
  @override
  List<Order> get orders;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentStateDataCopyWith<_$_PaymentStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PaymentState {
  PaymentStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentStateData? data) initial,
    required TResult Function(PaymentStateData? data) getError,
    required TResult Function(PaymentStateData? data) setOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStateData? data)? initial,
    TResult? Function(PaymentStateData? data)? getError,
    TResult? Function(PaymentStateData? data)? setOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStateData? data)? initial,
    TResult Function(PaymentStateData? data)? getError,
    TResult Function(PaymentStateData? data)? setOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(SetOrders value) setOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(SetOrders value)? setOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(SetOrders value)? setOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
  @useResult
  $Res call({PaymentStateData? data});

  $PaymentStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

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
              as PaymentStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PaymentStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $PaymentStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaymentStateData? data});

  @override
  $PaymentStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$Initial>
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
              as PaymentStateData?,
    ));
  }
}

/// @nodoc

class _$Initial with DiagnosticableTreeMixin implements Initial {
  const _$Initial({this.data});

  @override
  final PaymentStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentState.initial(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentState.initial'))
      ..add(DiagnosticsProperty('data', data));
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
    required TResult Function(PaymentStateData? data) initial,
    required TResult Function(PaymentStateData? data) getError,
    required TResult Function(PaymentStateData? data) setOrders,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStateData? data)? initial,
    TResult? Function(PaymentStateData? data)? getError,
    TResult? Function(PaymentStateData? data)? setOrders,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStateData? data)? initial,
    TResult Function(PaymentStateData? data)? getError,
    TResult Function(PaymentStateData? data)? setOrders,
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
    required TResult Function(GetError value) getError,
    required TResult Function(SetOrders value) setOrders,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(SetOrders value)? setOrders,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(SetOrders value)? setOrders,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements PaymentState {
  const factory Initial({final PaymentStateData? data}) = _$Initial;

  @override
  PaymentStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$GetErrorCopyWith(
          _$GetError value, $Res Function(_$GetError) then) =
      __$$GetErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaymentStateData? data});

  @override
  $PaymentStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetErrorCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$GetError>
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
              as PaymentStateData?,
    ));
  }
}

/// @nodoc

class _$GetError with DiagnosticableTreeMixin implements GetError {
  const _$GetError({this.data});

  @override
  final PaymentStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentState.getError(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentState.getError'))
      ..add(DiagnosticsProperty('data', data));
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
    required TResult Function(PaymentStateData? data) initial,
    required TResult Function(PaymentStateData? data) getError,
    required TResult Function(PaymentStateData? data) setOrders,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStateData? data)? initial,
    TResult? Function(PaymentStateData? data)? getError,
    TResult? Function(PaymentStateData? data)? setOrders,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStateData? data)? initial,
    TResult Function(PaymentStateData? data)? getError,
    TResult Function(PaymentStateData? data)? setOrders,
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
    required TResult Function(GetError value) getError,
    required TResult Function(SetOrders value) setOrders,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(SetOrders value)? setOrders,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(SetOrders value)? setOrders,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements PaymentState {
  const factory GetError({final PaymentStateData? data}) = _$GetError;

  @override
  PaymentStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorCopyWith<_$GetError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetOrdersCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$SetOrdersCopyWith(
          _$SetOrders value, $Res Function(_$SetOrders) then) =
      __$$SetOrdersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaymentStateData? data});

  @override
  $PaymentStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetOrdersCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$SetOrders>
    implements _$$SetOrdersCopyWith<$Res> {
  __$$SetOrdersCopyWithImpl(
      _$SetOrders _value, $Res Function(_$SetOrders) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SetOrders(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaymentStateData?,
    ));
  }
}

/// @nodoc

class _$SetOrders with DiagnosticableTreeMixin implements SetOrders {
  const _$SetOrders({this.data});

  @override
  final PaymentStateData? data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentState.setOrders(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentState.setOrders'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetOrders &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetOrdersCopyWith<_$SetOrders> get copyWith =>
      __$$SetOrdersCopyWithImpl<_$SetOrders>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PaymentStateData? data) initial,
    required TResult Function(PaymentStateData? data) getError,
    required TResult Function(PaymentStateData? data) setOrders,
  }) {
    return setOrders(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PaymentStateData? data)? initial,
    TResult? Function(PaymentStateData? data)? getError,
    TResult? Function(PaymentStateData? data)? setOrders,
  }) {
    return setOrders?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PaymentStateData? data)? initial,
    TResult Function(PaymentStateData? data)? getError,
    TResult Function(PaymentStateData? data)? setOrders,
    required TResult orElse(),
  }) {
    if (setOrders != null) {
      return setOrders(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(SetOrders value) setOrders,
  }) {
    return setOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(SetOrders value)? setOrders,
  }) {
    return setOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(SetOrders value)? setOrders,
    required TResult orElse(),
  }) {
    if (setOrders != null) {
      return setOrders(this);
    }
    return orElse();
  }
}

abstract class SetOrders implements PaymentState {
  const factory SetOrders({final PaymentStateData? data}) = _$SetOrders;

  @override
  PaymentStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetOrdersCopyWith<_$SetOrders> get copyWith =>
      throw _privateConstructorUsedError;
}
