// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartStateData {
  StatusType get status => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  List<CartProduct> get cartProducts => throw _privateConstructorUsedError;
  List<CartProduct> get cartProductsOriginal =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateDataCopyWith<CartStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateDataCopyWith<$Res> {
  factory $CartStateDataCopyWith(
          CartStateData value, $Res Function(CartStateData) then) =
      _$CartStateDataCopyWithImpl<$Res, CartStateData>;
  @useResult
  $Res call(
      {StatusType status,
      String error,
      double totalPrice,
      List<CartProduct> cartProducts,
      List<CartProduct> cartProductsOriginal});
}

/// @nodoc
class _$CartStateDataCopyWithImpl<$Res, $Val extends CartStateData>
    implements $CartStateDataCopyWith<$Res> {
  _$CartStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = null,
    Object? totalPrice = null,
    Object? cartProducts = null,
    Object? cartProductsOriginal = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      cartProducts: null == cartProducts
          ? _value.cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
      cartProductsOriginal: null == cartProductsOriginal
          ? _value.cartProductsOriginal
          : cartProductsOriginal // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartStateDataCopyWith<$Res>
    implements $CartStateDataCopyWith<$Res> {
  factory _$$_CartStateDataCopyWith(
          _$_CartStateData value, $Res Function(_$_CartStateData) then) =
      __$$_CartStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status,
      String error,
      double totalPrice,
      List<CartProduct> cartProducts,
      List<CartProduct> cartProductsOriginal});
}

/// @nodoc
class __$$_CartStateDataCopyWithImpl<$Res>
    extends _$CartStateDataCopyWithImpl<$Res, _$_CartStateData>
    implements _$$_CartStateDataCopyWith<$Res> {
  __$$_CartStateDataCopyWithImpl(
      _$_CartStateData _value, $Res Function(_$_CartStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = null,
    Object? totalPrice = null,
    Object? cartProducts = null,
    Object? cartProductsOriginal = null,
  }) {
    return _then(_$_CartStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      cartProducts: null == cartProducts
          ? _value._cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
      cartProductsOriginal: null == cartProductsOriginal
          ? _value._cartProductsOriginal
          : cartProductsOriginal // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
    ));
  }
}

/// @nodoc

class _$_CartStateData implements _CartStateData {
  const _$_CartStateData(
      {this.status = StatusType.init,
      this.error = '',
      this.totalPrice = 0,
      final List<CartProduct> cartProducts = const [],
      final List<CartProduct> cartProductsOriginal = const []})
      : _cartProducts = cartProducts,
        _cartProductsOriginal = cartProductsOriginal;

  @override
  @JsonKey()
  final StatusType status;
  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final double totalPrice;
  final List<CartProduct> _cartProducts;
  @override
  @JsonKey()
  List<CartProduct> get cartProducts {
    if (_cartProducts is EqualUnmodifiableListView) return _cartProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartProducts);
  }

  final List<CartProduct> _cartProductsOriginal;
  @override
  @JsonKey()
  List<CartProduct> get cartProductsOriginal {
    if (_cartProductsOriginal is EqualUnmodifiableListView)
      return _cartProductsOriginal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartProductsOriginal);
  }

  @override
  String toString() {
    return 'CartStateData(status: $status, error: $error, totalPrice: $totalPrice, cartProducts: $cartProducts, cartProductsOriginal: $cartProductsOriginal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartStateData &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            const DeepCollectionEquality()
                .equals(other._cartProducts, _cartProducts) &&
            const DeepCollectionEquality()
                .equals(other._cartProductsOriginal, _cartProductsOriginal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      error,
      totalPrice,
      const DeepCollectionEquality().hash(_cartProducts),
      const DeepCollectionEquality().hash(_cartProductsOriginal));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartStateDataCopyWith<_$_CartStateData> get copyWith =>
      __$$_CartStateDataCopyWithImpl<_$_CartStateData>(this, _$identity);
}

abstract class _CartStateData implements CartStateData {
  const factory _CartStateData(
      {final StatusType status,
      final String error,
      final double totalPrice,
      final List<CartProduct> cartProducts,
      final List<CartProduct> cartProductsOriginal}) = _$_CartStateData;

  @override
  StatusType get status;
  @override
  String get error;
  @override
  double get totalPrice;
  @override
  List<CartProduct> get cartProducts;
  @override
  List<CartProduct> get cartProductsOriginal;
  @override
  @JsonKey(ignore: true)
  _$$_CartStateDataCopyWith<_$_CartStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  CartStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartStateData? data) initial,
    required TResult Function(CartStateData? data) status,
    required TResult Function(CartStateData? data) getError,
    required TResult Function(CartStateData? data) setTotalPrice,
    required TResult Function(CartStateData? data) getCartProducts,
    required TResult Function(CartStateData? data) updateProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartStateData? data)? initial,
    TResult? Function(CartStateData? data)? status,
    TResult? Function(CartStateData? data)? getError,
    TResult? Function(CartStateData? data)? setTotalPrice,
    TResult? Function(CartStateData? data)? getCartProducts,
    TResult? Function(CartStateData? data)? updateProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartStateData? data)? initial,
    TResult Function(CartStateData? data)? status,
    TResult Function(CartStateData? data)? getError,
    TResult Function(CartStateData? data)? setTotalPrice,
    TResult Function(CartStateData? data)? getCartProducts,
    TResult Function(CartStateData? data)? updateProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(SetTotalPrice value) setTotalPrice,
    required TResult Function(GetCartProducts value) getCartProducts,
    required TResult Function(UpdateProduct value) updateProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(SetTotalPrice value)? setTotalPrice,
    TResult? Function(GetCartProducts value)? getCartProducts,
    TResult? Function(UpdateProduct value)? updateProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(SetTotalPrice value)? setTotalPrice,
    TResult Function(GetCartProducts value)? getCartProducts,
    TResult Function(UpdateProduct value)? updateProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call({CartStateData? data});

  $CartStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

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
              as CartStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CartStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CartStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartStateData? data});

  @override
  $CartStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$Initial>
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
              as CartStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final CartStateData? data;

  @override
  String toString() {
    return 'CartState.initial(data: $data)';
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
    required TResult Function(CartStateData? data) initial,
    required TResult Function(CartStateData? data) status,
    required TResult Function(CartStateData? data) getError,
    required TResult Function(CartStateData? data) setTotalPrice,
    required TResult Function(CartStateData? data) getCartProducts,
    required TResult Function(CartStateData? data) updateProduct,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartStateData? data)? initial,
    TResult? Function(CartStateData? data)? status,
    TResult? Function(CartStateData? data)? getError,
    TResult? Function(CartStateData? data)? setTotalPrice,
    TResult? Function(CartStateData? data)? getCartProducts,
    TResult? Function(CartStateData? data)? updateProduct,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartStateData? data)? initial,
    TResult Function(CartStateData? data)? status,
    TResult Function(CartStateData? data)? getError,
    TResult Function(CartStateData? data)? setTotalPrice,
    TResult Function(CartStateData? data)? getCartProducts,
    TResult Function(CartStateData? data)? updateProduct,
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
    required TResult Function(SetTotalPrice value) setTotalPrice,
    required TResult Function(GetCartProducts value) getCartProducts,
    required TResult Function(UpdateProduct value) updateProduct,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(SetTotalPrice value)? setTotalPrice,
    TResult? Function(GetCartProducts value)? getCartProducts,
    TResult? Function(UpdateProduct value)? updateProduct,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(SetTotalPrice value)? setTotalPrice,
    TResult Function(GetCartProducts value)? getCartProducts,
    TResult Function(UpdateProduct value)? updateProduct,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CartState {
  const factory Initial({final CartStateData? data}) = _$Initial;

  @override
  CartStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartStateData? data});

  @override
  $CartStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$Status>
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
              as CartStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final CartStateData? data;

  @override
  String toString() {
    return 'CartState.status(data: $data)';
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
    required TResult Function(CartStateData? data) initial,
    required TResult Function(CartStateData? data) status,
    required TResult Function(CartStateData? data) getError,
    required TResult Function(CartStateData? data) setTotalPrice,
    required TResult Function(CartStateData? data) getCartProducts,
    required TResult Function(CartStateData? data) updateProduct,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartStateData? data)? initial,
    TResult? Function(CartStateData? data)? status,
    TResult? Function(CartStateData? data)? getError,
    TResult? Function(CartStateData? data)? setTotalPrice,
    TResult? Function(CartStateData? data)? getCartProducts,
    TResult? Function(CartStateData? data)? updateProduct,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartStateData? data)? initial,
    TResult Function(CartStateData? data)? status,
    TResult Function(CartStateData? data)? getError,
    TResult Function(CartStateData? data)? setTotalPrice,
    TResult Function(CartStateData? data)? getCartProducts,
    TResult Function(CartStateData? data)? updateProduct,
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
    required TResult Function(SetTotalPrice value) setTotalPrice,
    required TResult Function(GetCartProducts value) getCartProducts,
    required TResult Function(UpdateProduct value) updateProduct,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(SetTotalPrice value)? setTotalPrice,
    TResult? Function(GetCartProducts value)? getCartProducts,
    TResult? Function(UpdateProduct value)? updateProduct,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(SetTotalPrice value)? setTotalPrice,
    TResult Function(GetCartProducts value)? getCartProducts,
    TResult Function(UpdateProduct value)? updateProduct,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements CartState {
  const factory Status({final CartStateData? data}) = _$Status;

  @override
  CartStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$$GetErrorCopyWith(
          _$GetError value, $Res Function(_$GetError) then) =
      __$$GetErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartStateData? data});

  @override
  $CartStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetErrorCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$GetError>
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
              as CartStateData?,
    ));
  }
}

/// @nodoc

class _$GetError implements GetError {
  const _$GetError({this.data});

  @override
  final CartStateData? data;

  @override
  String toString() {
    return 'CartState.getError(data: $data)';
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
    required TResult Function(CartStateData? data) initial,
    required TResult Function(CartStateData? data) status,
    required TResult Function(CartStateData? data) getError,
    required TResult Function(CartStateData? data) setTotalPrice,
    required TResult Function(CartStateData? data) getCartProducts,
    required TResult Function(CartStateData? data) updateProduct,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartStateData? data)? initial,
    TResult? Function(CartStateData? data)? status,
    TResult? Function(CartStateData? data)? getError,
    TResult? Function(CartStateData? data)? setTotalPrice,
    TResult? Function(CartStateData? data)? getCartProducts,
    TResult? Function(CartStateData? data)? updateProduct,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartStateData? data)? initial,
    TResult Function(CartStateData? data)? status,
    TResult Function(CartStateData? data)? getError,
    TResult Function(CartStateData? data)? setTotalPrice,
    TResult Function(CartStateData? data)? getCartProducts,
    TResult Function(CartStateData? data)? updateProduct,
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
    required TResult Function(SetTotalPrice value) setTotalPrice,
    required TResult Function(GetCartProducts value) getCartProducts,
    required TResult Function(UpdateProduct value) updateProduct,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(SetTotalPrice value)? setTotalPrice,
    TResult? Function(GetCartProducts value)? getCartProducts,
    TResult? Function(UpdateProduct value)? updateProduct,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(SetTotalPrice value)? setTotalPrice,
    TResult Function(GetCartProducts value)? getCartProducts,
    TResult Function(UpdateProduct value)? updateProduct,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements CartState {
  const factory GetError({final CartStateData? data}) = _$GetError;

  @override
  CartStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorCopyWith<_$GetError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetTotalPriceCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$SetTotalPriceCopyWith(
          _$SetTotalPrice value, $Res Function(_$SetTotalPrice) then) =
      __$$SetTotalPriceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartStateData? data});

  @override
  $CartStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetTotalPriceCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$SetTotalPrice>
    implements _$$SetTotalPriceCopyWith<$Res> {
  __$$SetTotalPriceCopyWithImpl(
      _$SetTotalPrice _value, $Res Function(_$SetTotalPrice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SetTotalPrice(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CartStateData?,
    ));
  }
}

/// @nodoc

class _$SetTotalPrice implements SetTotalPrice {
  const _$SetTotalPrice({this.data});

  @override
  final CartStateData? data;

  @override
  String toString() {
    return 'CartState.setTotalPrice(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetTotalPrice &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetTotalPriceCopyWith<_$SetTotalPrice> get copyWith =>
      __$$SetTotalPriceCopyWithImpl<_$SetTotalPrice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartStateData? data) initial,
    required TResult Function(CartStateData? data) status,
    required TResult Function(CartStateData? data) getError,
    required TResult Function(CartStateData? data) setTotalPrice,
    required TResult Function(CartStateData? data) getCartProducts,
    required TResult Function(CartStateData? data) updateProduct,
  }) {
    return setTotalPrice(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartStateData? data)? initial,
    TResult? Function(CartStateData? data)? status,
    TResult? Function(CartStateData? data)? getError,
    TResult? Function(CartStateData? data)? setTotalPrice,
    TResult? Function(CartStateData? data)? getCartProducts,
    TResult? Function(CartStateData? data)? updateProduct,
  }) {
    return setTotalPrice?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartStateData? data)? initial,
    TResult Function(CartStateData? data)? status,
    TResult Function(CartStateData? data)? getError,
    TResult Function(CartStateData? data)? setTotalPrice,
    TResult Function(CartStateData? data)? getCartProducts,
    TResult Function(CartStateData? data)? updateProduct,
    required TResult orElse(),
  }) {
    if (setTotalPrice != null) {
      return setTotalPrice(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(SetTotalPrice value) setTotalPrice,
    required TResult Function(GetCartProducts value) getCartProducts,
    required TResult Function(UpdateProduct value) updateProduct,
  }) {
    return setTotalPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(SetTotalPrice value)? setTotalPrice,
    TResult? Function(GetCartProducts value)? getCartProducts,
    TResult? Function(UpdateProduct value)? updateProduct,
  }) {
    return setTotalPrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(SetTotalPrice value)? setTotalPrice,
    TResult Function(GetCartProducts value)? getCartProducts,
    TResult Function(UpdateProduct value)? updateProduct,
    required TResult orElse(),
  }) {
    if (setTotalPrice != null) {
      return setTotalPrice(this);
    }
    return orElse();
  }
}

abstract class SetTotalPrice implements CartState {
  const factory SetTotalPrice({final CartStateData? data}) = _$SetTotalPrice;

  @override
  CartStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetTotalPriceCopyWith<_$SetTotalPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCartProductsCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$GetCartProductsCopyWith(
          _$GetCartProducts value, $Res Function(_$GetCartProducts) then) =
      __$$GetCartProductsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartStateData? data});

  @override
  $CartStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetCartProductsCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$GetCartProducts>
    implements _$$GetCartProductsCopyWith<$Res> {
  __$$GetCartProductsCopyWithImpl(
      _$GetCartProducts _value, $Res Function(_$GetCartProducts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetCartProducts(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CartStateData?,
    ));
  }
}

/// @nodoc

class _$GetCartProducts implements GetCartProducts {
  const _$GetCartProducts({this.data});

  @override
  final CartStateData? data;

  @override
  String toString() {
    return 'CartState.getCartProducts(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCartProducts &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCartProductsCopyWith<_$GetCartProducts> get copyWith =>
      __$$GetCartProductsCopyWithImpl<_$GetCartProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartStateData? data) initial,
    required TResult Function(CartStateData? data) status,
    required TResult Function(CartStateData? data) getError,
    required TResult Function(CartStateData? data) setTotalPrice,
    required TResult Function(CartStateData? data) getCartProducts,
    required TResult Function(CartStateData? data) updateProduct,
  }) {
    return getCartProducts(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartStateData? data)? initial,
    TResult? Function(CartStateData? data)? status,
    TResult? Function(CartStateData? data)? getError,
    TResult? Function(CartStateData? data)? setTotalPrice,
    TResult? Function(CartStateData? data)? getCartProducts,
    TResult? Function(CartStateData? data)? updateProduct,
  }) {
    return getCartProducts?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartStateData? data)? initial,
    TResult Function(CartStateData? data)? status,
    TResult Function(CartStateData? data)? getError,
    TResult Function(CartStateData? data)? setTotalPrice,
    TResult Function(CartStateData? data)? getCartProducts,
    TResult Function(CartStateData? data)? updateProduct,
    required TResult orElse(),
  }) {
    if (getCartProducts != null) {
      return getCartProducts(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(SetTotalPrice value) setTotalPrice,
    required TResult Function(GetCartProducts value) getCartProducts,
    required TResult Function(UpdateProduct value) updateProduct,
  }) {
    return getCartProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(SetTotalPrice value)? setTotalPrice,
    TResult? Function(GetCartProducts value)? getCartProducts,
    TResult? Function(UpdateProduct value)? updateProduct,
  }) {
    return getCartProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(SetTotalPrice value)? setTotalPrice,
    TResult Function(GetCartProducts value)? getCartProducts,
    TResult Function(UpdateProduct value)? updateProduct,
    required TResult orElse(),
  }) {
    if (getCartProducts != null) {
      return getCartProducts(this);
    }
    return orElse();
  }
}

abstract class GetCartProducts implements CartState {
  const factory GetCartProducts({final CartStateData? data}) =
      _$GetCartProducts;

  @override
  CartStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetCartProductsCopyWith<_$GetCartProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProductCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$UpdateProductCopyWith(
          _$UpdateProduct value, $Res Function(_$UpdateProduct) then) =
      __$$UpdateProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartStateData? data});

  @override
  $CartStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UpdateProductCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$UpdateProduct>
    implements _$$UpdateProductCopyWith<$Res> {
  __$$UpdateProductCopyWithImpl(
      _$UpdateProduct _value, $Res Function(_$UpdateProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$UpdateProduct(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CartStateData?,
    ));
  }
}

/// @nodoc

class _$UpdateProduct implements UpdateProduct {
  const _$UpdateProduct({this.data});

  @override
  final CartStateData? data;

  @override
  String toString() {
    return 'CartState.updateProduct(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProduct &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProductCopyWith<_$UpdateProduct> get copyWith =>
      __$$UpdateProductCopyWithImpl<_$UpdateProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartStateData? data) initial,
    required TResult Function(CartStateData? data) status,
    required TResult Function(CartStateData? data) getError,
    required TResult Function(CartStateData? data) setTotalPrice,
    required TResult Function(CartStateData? data) getCartProducts,
    required TResult Function(CartStateData? data) updateProduct,
  }) {
    return updateProduct(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartStateData? data)? initial,
    TResult? Function(CartStateData? data)? status,
    TResult? Function(CartStateData? data)? getError,
    TResult? Function(CartStateData? data)? setTotalPrice,
    TResult? Function(CartStateData? data)? getCartProducts,
    TResult? Function(CartStateData? data)? updateProduct,
  }) {
    return updateProduct?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartStateData? data)? initial,
    TResult Function(CartStateData? data)? status,
    TResult Function(CartStateData? data)? getError,
    TResult Function(CartStateData? data)? setTotalPrice,
    TResult Function(CartStateData? data)? getCartProducts,
    TResult Function(CartStateData? data)? updateProduct,
    required TResult orElse(),
  }) {
    if (updateProduct != null) {
      return updateProduct(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(SetTotalPrice value) setTotalPrice,
    required TResult Function(GetCartProducts value) getCartProducts,
    required TResult Function(UpdateProduct value) updateProduct,
  }) {
    return updateProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(SetTotalPrice value)? setTotalPrice,
    TResult? Function(GetCartProducts value)? getCartProducts,
    TResult? Function(UpdateProduct value)? updateProduct,
  }) {
    return updateProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(SetTotalPrice value)? setTotalPrice,
    TResult Function(GetCartProducts value)? getCartProducts,
    TResult Function(UpdateProduct value)? updateProduct,
    required TResult orElse(),
  }) {
    if (updateProduct != null) {
      return updateProduct(this);
    }
    return orElse();
  }
}

abstract class UpdateProduct implements CartState {
  const factory UpdateProduct({final CartStateData? data}) = _$UpdateProduct;

  @override
  CartStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$UpdateProductCopyWith<_$UpdateProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
