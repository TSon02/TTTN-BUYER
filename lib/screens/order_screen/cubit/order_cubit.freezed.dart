// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderStateData {
  String get error => throw _privateConstructorUsedError;
  StatusType get status => throw _privateConstructorUsedError;
  List<Order> get orders => throw _privateConstructorUsedError;
  List<Order> get ordersByStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderStateDataCopyWith<OrderStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateDataCopyWith<$Res> {
  factory $OrderStateDataCopyWith(
          OrderStateData value, $Res Function(OrderStateData) then) =
      _$OrderStateDataCopyWithImpl<$Res, OrderStateData>;
  @useResult
  $Res call(
      {String error,
      StatusType status,
      List<Order> orders,
      List<Order> ordersByStatus});
}

/// @nodoc
class _$OrderStateDataCopyWithImpl<$Res, $Val extends OrderStateData>
    implements $OrderStateDataCopyWith<$Res> {
  _$OrderStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? orders = null,
    Object? ordersByStatus = null,
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
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      ordersByStatus: null == ordersByStatus
          ? _value.ordersByStatus
          : ordersByStatus // ignore: cast_nullable_to_non_nullable
              as List<Order>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderStateDataCopyWith<$Res>
    implements $OrderStateDataCopyWith<$Res> {
  factory _$$_OrderStateDataCopyWith(
          _$_OrderStateData value, $Res Function(_$_OrderStateData) then) =
      __$$_OrderStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String error,
      StatusType status,
      List<Order> orders,
      List<Order> ordersByStatus});
}

/// @nodoc
class __$$_OrderStateDataCopyWithImpl<$Res>
    extends _$OrderStateDataCopyWithImpl<$Res, _$_OrderStateData>
    implements _$$_OrderStateDataCopyWith<$Res> {
  __$$_OrderStateDataCopyWithImpl(
      _$_OrderStateData _value, $Res Function(_$_OrderStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? orders = null,
    Object? ordersByStatus = null,
  }) {
    return _then(_$_OrderStateData(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      ordersByStatus: null == ordersByStatus
          ? _value._ordersByStatus
          : ordersByStatus // ignore: cast_nullable_to_non_nullable
              as List<Order>,
    ));
  }
}

/// @nodoc

class _$_OrderStateData implements _OrderStateData {
  const _$_OrderStateData(
      {this.error = '',
      this.status = StatusType.init,
      final List<Order> orders = const [],
      final List<Order> ordersByStatus = const []})
      : _orders = orders,
        _ordersByStatus = ordersByStatus;

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final StatusType status;
  final List<Order> _orders;
  @override
  @JsonKey()
  List<Order> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  final List<Order> _ordersByStatus;
  @override
  @JsonKey()
  List<Order> get ordersByStatus {
    if (_ordersByStatus is EqualUnmodifiableListView) return _ordersByStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ordersByStatus);
  }

  @override
  String toString() {
    return 'OrderStateData(error: $error, status: $status, orders: $orders, ordersByStatus: $ordersByStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderStateData &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            const DeepCollectionEquality()
                .equals(other._ordersByStatus, _ordersByStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      error,
      status,
      const DeepCollectionEquality().hash(_orders),
      const DeepCollectionEquality().hash(_ordersByStatus));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderStateDataCopyWith<_$_OrderStateData> get copyWith =>
      __$$_OrderStateDataCopyWithImpl<_$_OrderStateData>(this, _$identity);
}

abstract class _OrderStateData implements OrderStateData {
  const factory _OrderStateData(
      {final String error,
      final StatusType status,
      final List<Order> orders,
      final List<Order> ordersByStatus}) = _$_OrderStateData;

  @override
  String get error;
  @override
  StatusType get status;
  @override
  List<Order> get orders;
  @override
  List<Order> get ordersByStatus;
  @override
  @JsonKey(ignore: true)
  _$$_OrderStateDataCopyWith<_$_OrderStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderState {
  OrderStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderStateData? data) initial,
    required TResult Function(OrderStateData? data) status,
    required TResult Function(OrderStateData? data) getError,
    required TResult Function(OrderStateData? data) getOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderStateData? data)? initial,
    TResult? Function(OrderStateData? data)? status,
    TResult? Function(OrderStateData? data)? getError,
    TResult? Function(OrderStateData? data)? getOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderStateData? data)? initial,
    TResult Function(OrderStateData? data)? status,
    TResult Function(OrderStateData? data)? getError,
    TResult Function(OrderStateData? data)? getOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetOrders value) getOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetOrders value)? getOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetOrders value)? getOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderStateCopyWith<OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
  @useResult
  $Res call({OrderStateData? data});

  $OrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

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
              as OrderStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $OrderStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $OrderStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderStateData? data});

  @override
  $OrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$Initial>
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
              as OrderStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final OrderStateData? data;

  @override
  String toString() {
    return 'OrderState.initial(data: $data)';
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
    required TResult Function(OrderStateData? data) initial,
    required TResult Function(OrderStateData? data) status,
    required TResult Function(OrderStateData? data) getError,
    required TResult Function(OrderStateData? data) getOrders,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderStateData? data)? initial,
    TResult? Function(OrderStateData? data)? status,
    TResult? Function(OrderStateData? data)? getError,
    TResult? Function(OrderStateData? data)? getOrders,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderStateData? data)? initial,
    TResult Function(OrderStateData? data)? status,
    TResult Function(OrderStateData? data)? getError,
    TResult Function(OrderStateData? data)? getOrders,
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
    required TResult Function(GetOrders value) getOrders,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetOrders value)? getOrders,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetOrders value)? getOrders,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements OrderState {
  const factory Initial({final OrderStateData? data}) = _$Initial;

  @override
  OrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res> implements $OrderStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderStateData? data});

  @override
  $OrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$Status>
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
              as OrderStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final OrderStateData? data;

  @override
  String toString() {
    return 'OrderState.status(data: $data)';
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
    required TResult Function(OrderStateData? data) initial,
    required TResult Function(OrderStateData? data) status,
    required TResult Function(OrderStateData? data) getError,
    required TResult Function(OrderStateData? data) getOrders,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderStateData? data)? initial,
    TResult? Function(OrderStateData? data)? status,
    TResult? Function(OrderStateData? data)? getError,
    TResult? Function(OrderStateData? data)? getOrders,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderStateData? data)? initial,
    TResult Function(OrderStateData? data)? status,
    TResult Function(OrderStateData? data)? getError,
    TResult Function(OrderStateData? data)? getOrders,
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
    required TResult Function(GetOrders value) getOrders,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetOrders value)? getOrders,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetOrders value)? getOrders,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements OrderState {
  const factory Status({final OrderStateData? data}) = _$Status;

  @override
  OrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorCopyWith<$Res> implements $OrderStateCopyWith<$Res> {
  factory _$$GetErrorCopyWith(
          _$GetError value, $Res Function(_$GetError) then) =
      __$$GetErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderStateData? data});

  @override
  $OrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetErrorCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$GetError>
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
              as OrderStateData?,
    ));
  }
}

/// @nodoc

class _$GetError implements GetError {
  const _$GetError({this.data});

  @override
  final OrderStateData? data;

  @override
  String toString() {
    return 'OrderState.getError(data: $data)';
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
    required TResult Function(OrderStateData? data) initial,
    required TResult Function(OrderStateData? data) status,
    required TResult Function(OrderStateData? data) getError,
    required TResult Function(OrderStateData? data) getOrders,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderStateData? data)? initial,
    TResult? Function(OrderStateData? data)? status,
    TResult? Function(OrderStateData? data)? getError,
    TResult? Function(OrderStateData? data)? getOrders,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderStateData? data)? initial,
    TResult Function(OrderStateData? data)? status,
    TResult Function(OrderStateData? data)? getError,
    TResult Function(OrderStateData? data)? getOrders,
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
    required TResult Function(GetOrders value) getOrders,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetOrders value)? getOrders,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetOrders value)? getOrders,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements OrderState {
  const factory GetError({final OrderStateData? data}) = _$GetError;

  @override
  OrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorCopyWith<_$GetError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetOrdersCopyWith<$Res> implements $OrderStateCopyWith<$Res> {
  factory _$$GetOrdersCopyWith(
          _$GetOrders value, $Res Function(_$GetOrders) then) =
      __$$GetOrdersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderStateData? data});

  @override
  $OrderStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetOrdersCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$GetOrders>
    implements _$$GetOrdersCopyWith<$Res> {
  __$$GetOrdersCopyWithImpl(
      _$GetOrders _value, $Res Function(_$GetOrders) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetOrders(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OrderStateData?,
    ));
  }
}

/// @nodoc

class _$GetOrders implements GetOrders {
  const _$GetOrders({this.data});

  @override
  final OrderStateData? data;

  @override
  String toString() {
    return 'OrderState.getOrders(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrders &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrdersCopyWith<_$GetOrders> get copyWith =>
      __$$GetOrdersCopyWithImpl<_$GetOrders>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderStateData? data) initial,
    required TResult Function(OrderStateData? data) status,
    required TResult Function(OrderStateData? data) getError,
    required TResult Function(OrderStateData? data) getOrders,
  }) {
    return getOrders(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderStateData? data)? initial,
    TResult? Function(OrderStateData? data)? status,
    TResult? Function(OrderStateData? data)? getError,
    TResult? Function(OrderStateData? data)? getOrders,
  }) {
    return getOrders?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderStateData? data)? initial,
    TResult Function(OrderStateData? data)? status,
    TResult Function(OrderStateData? data)? getError,
    TResult Function(OrderStateData? data)? getOrders,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetOrders value) getOrders,
  }) {
    return getOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetOrders value)? getOrders,
  }) {
    return getOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetOrders value)? getOrders,
    required TResult orElse(),
  }) {
    if (getOrders != null) {
      return getOrders(this);
    }
    return orElse();
  }
}

abstract class GetOrders implements OrderState {
  const factory GetOrders({final OrderStateData? data}) = _$GetOrders;

  @override
  OrderStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetOrdersCopyWith<_$GetOrders> get copyWith =>
      throw _privateConstructorUsedError;
}
