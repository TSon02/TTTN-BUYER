// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeStateData {
  String get error => throw _privateConstructorUsedError;
  StatusType get status => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  List<Product> get productsOriginal => throw _privateConstructorUsedError;
  List<Product> get newProducts => throw _privateConstructorUsedError;
  List<Product> get popularProducts => throw _privateConstructorUsedError;
  List<Product> get productsByCategory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateDataCopyWith<HomeStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateDataCopyWith<$Res> {
  factory $HomeStateDataCopyWith(
          HomeStateData value, $Res Function(HomeStateData) then) =
      _$HomeStateDataCopyWithImpl<$Res, HomeStateData>;
  @useResult
  $Res call(
      {String error,
      StatusType status,
      List<Product> products,
      List<Product> productsOriginal,
      List<Product> newProducts,
      List<Product> popularProducts,
      List<Product> productsByCategory});
}

/// @nodoc
class _$HomeStateDataCopyWithImpl<$Res, $Val extends HomeStateData>
    implements $HomeStateDataCopyWith<$Res> {
  _$HomeStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? products = null,
    Object? productsOriginal = null,
    Object? newProducts = null,
    Object? popularProducts = null,
    Object? productsByCategory = null,
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
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      productsOriginal: null == productsOriginal
          ? _value.productsOriginal
          : productsOriginal // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      newProducts: null == newProducts
          ? _value.newProducts
          : newProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      popularProducts: null == popularProducts
          ? _value.popularProducts
          : popularProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      productsByCategory: null == productsByCategory
          ? _value.productsByCategory
          : productsByCategory // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateDataCopyWith<$Res>
    implements $HomeStateDataCopyWith<$Res> {
  factory _$$_HomeStateDataCopyWith(
          _$_HomeStateData value, $Res Function(_$_HomeStateData) then) =
      __$$_HomeStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String error,
      StatusType status,
      List<Product> products,
      List<Product> productsOriginal,
      List<Product> newProducts,
      List<Product> popularProducts,
      List<Product> productsByCategory});
}

/// @nodoc
class __$$_HomeStateDataCopyWithImpl<$Res>
    extends _$HomeStateDataCopyWithImpl<$Res, _$_HomeStateData>
    implements _$$_HomeStateDataCopyWith<$Res> {
  __$$_HomeStateDataCopyWithImpl(
      _$_HomeStateData _value, $Res Function(_$_HomeStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? products = null,
    Object? productsOriginal = null,
    Object? newProducts = null,
    Object? popularProducts = null,
    Object? productsByCategory = null,
  }) {
    return _then(_$_HomeStateData(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      productsOriginal: null == productsOriginal
          ? _value._productsOriginal
          : productsOriginal // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      newProducts: null == newProducts
          ? _value._newProducts
          : newProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      popularProducts: null == popularProducts
          ? _value._popularProducts
          : popularProducts // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      productsByCategory: null == productsByCategory
          ? _value._productsByCategory
          : productsByCategory // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_HomeStateData implements _HomeStateData {
  const _$_HomeStateData(
      {this.error = '',
      this.status = StatusType.init,
      final List<Product> products = const [],
      final List<Product> productsOriginal = const [],
      final List<Product> newProducts = const [],
      final List<Product> popularProducts = const [],
      final List<Product> productsByCategory = const []})
      : _products = products,
        _productsOriginal = productsOriginal,
        _newProducts = newProducts,
        _popularProducts = popularProducts,
        _productsByCategory = productsByCategory;

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final StatusType status;
  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<Product> _productsOriginal;
  @override
  @JsonKey()
  List<Product> get productsOriginal {
    if (_productsOriginal is EqualUnmodifiableListView)
      return _productsOriginal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productsOriginal);
  }

  final List<Product> _newProducts;
  @override
  @JsonKey()
  List<Product> get newProducts {
    if (_newProducts is EqualUnmodifiableListView) return _newProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newProducts);
  }

  final List<Product> _popularProducts;
  @override
  @JsonKey()
  List<Product> get popularProducts {
    if (_popularProducts is EqualUnmodifiableListView) return _popularProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularProducts);
  }

  final List<Product> _productsByCategory;
  @override
  @JsonKey()
  List<Product> get productsByCategory {
    if (_productsByCategory is EqualUnmodifiableListView)
      return _productsByCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productsByCategory);
  }

  @override
  String toString() {
    return 'HomeStateData(error: $error, status: $status, products: $products, productsOriginal: $productsOriginal, newProducts: $newProducts, popularProducts: $popularProducts, productsByCategory: $productsByCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeStateData &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._productsOriginal, _productsOriginal) &&
            const DeepCollectionEquality()
                .equals(other._newProducts, _newProducts) &&
            const DeepCollectionEquality()
                .equals(other._popularProducts, _popularProducts) &&
            const DeepCollectionEquality()
                .equals(other._productsByCategory, _productsByCategory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      error,
      status,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_productsOriginal),
      const DeepCollectionEquality().hash(_newProducts),
      const DeepCollectionEquality().hash(_popularProducts),
      const DeepCollectionEquality().hash(_productsByCategory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateDataCopyWith<_$_HomeStateData> get copyWith =>
      __$$_HomeStateDataCopyWithImpl<_$_HomeStateData>(this, _$identity);
}

abstract class _HomeStateData implements HomeStateData {
  const factory _HomeStateData(
      {final String error,
      final StatusType status,
      final List<Product> products,
      final List<Product> productsOriginal,
      final List<Product> newProducts,
      final List<Product> popularProducts,
      final List<Product> productsByCategory}) = _$_HomeStateData;

  @override
  String get error;
  @override
  StatusType get status;
  @override
  List<Product> get products;
  @override
  List<Product> get productsOriginal;
  @override
  List<Product> get newProducts;
  @override
  List<Product> get popularProducts;
  @override
  List<Product> get productsByCategory;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateDataCopyWith<_$_HomeStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  HomeStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeStateData? data) initial,
    required TResult Function(HomeStateData? data) status,
    required TResult Function(HomeStateData? data) getError,
    required TResult Function(HomeStateData? data) getProducts,
    required TResult Function(HomeStateData? data) setPartOfProducts,
    required TResult Function(HomeStateData? data) setProductsByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStateData? data)? initial,
    TResult? Function(HomeStateData? data)? status,
    TResult? Function(HomeStateData? data)? getError,
    TResult? Function(HomeStateData? data)? getProducts,
    TResult? Function(HomeStateData? data)? setPartOfProducts,
    TResult? Function(HomeStateData? data)? setProductsByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStateData? data)? initial,
    TResult Function(HomeStateData? data)? status,
    TResult Function(HomeStateData? data)? getError,
    TResult Function(HomeStateData? data)? getProducts,
    TResult Function(HomeStateData? data)? setPartOfProducts,
    TResult Function(HomeStateData? data)? setProductsByCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(SetPartOfProducts value) setPartOfProducts,
    required TResult Function(SetProductsByCategory value)
        setProductsByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(SetPartOfProducts value)? setPartOfProducts,
    TResult? Function(SetProductsByCategory value)? setProductsByCategory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(SetPartOfProducts value)? setPartOfProducts,
    TResult Function(SetProductsByCategory value)? setProductsByCategory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({HomeStateData? data});

  $HomeStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

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
              as HomeStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $HomeStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStateData? data});

  @override
  $HomeStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$Initial>
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
              as HomeStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final HomeStateData? data;

  @override
  String toString() {
    return 'HomeState.initial(data: $data)';
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
    required TResult Function(HomeStateData? data) initial,
    required TResult Function(HomeStateData? data) status,
    required TResult Function(HomeStateData? data) getError,
    required TResult Function(HomeStateData? data) getProducts,
    required TResult Function(HomeStateData? data) setPartOfProducts,
    required TResult Function(HomeStateData? data) setProductsByCategory,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStateData? data)? initial,
    TResult? Function(HomeStateData? data)? status,
    TResult? Function(HomeStateData? data)? getError,
    TResult? Function(HomeStateData? data)? getProducts,
    TResult? Function(HomeStateData? data)? setPartOfProducts,
    TResult? Function(HomeStateData? data)? setProductsByCategory,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStateData? data)? initial,
    TResult Function(HomeStateData? data)? status,
    TResult Function(HomeStateData? data)? getError,
    TResult Function(HomeStateData? data)? getProducts,
    TResult Function(HomeStateData? data)? setPartOfProducts,
    TResult Function(HomeStateData? data)? setProductsByCategory,
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
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(SetPartOfProducts value) setPartOfProducts,
    required TResult Function(SetProductsByCategory value)
        setProductsByCategory,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(SetPartOfProducts value)? setPartOfProducts,
    TResult? Function(SetProductsByCategory value)? setProductsByCategory,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(SetPartOfProducts value)? setPartOfProducts,
    TResult Function(SetProductsByCategory value)? setProductsByCategory,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements HomeState {
  const factory Initial({final HomeStateData? data}) = _$Initial;

  @override
  HomeStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStateData? data});

  @override
  $HomeStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$Status>
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
              as HomeStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final HomeStateData? data;

  @override
  String toString() {
    return 'HomeState.status(data: $data)';
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
    required TResult Function(HomeStateData? data) initial,
    required TResult Function(HomeStateData? data) status,
    required TResult Function(HomeStateData? data) getError,
    required TResult Function(HomeStateData? data) getProducts,
    required TResult Function(HomeStateData? data) setPartOfProducts,
    required TResult Function(HomeStateData? data) setProductsByCategory,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStateData? data)? initial,
    TResult? Function(HomeStateData? data)? status,
    TResult? Function(HomeStateData? data)? getError,
    TResult? Function(HomeStateData? data)? getProducts,
    TResult? Function(HomeStateData? data)? setPartOfProducts,
    TResult? Function(HomeStateData? data)? setProductsByCategory,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStateData? data)? initial,
    TResult Function(HomeStateData? data)? status,
    TResult Function(HomeStateData? data)? getError,
    TResult Function(HomeStateData? data)? getProducts,
    TResult Function(HomeStateData? data)? setPartOfProducts,
    TResult Function(HomeStateData? data)? setProductsByCategory,
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
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(SetPartOfProducts value) setPartOfProducts,
    required TResult Function(SetProductsByCategory value)
        setProductsByCategory,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(SetPartOfProducts value)? setPartOfProducts,
    TResult? Function(SetProductsByCategory value)? setProductsByCategory,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(SetPartOfProducts value)? setPartOfProducts,
    TResult Function(SetProductsByCategory value)? setProductsByCategory,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements HomeState {
  const factory Status({final HomeStateData? data}) = _$Status;

  @override
  HomeStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$GetErrorCopyWith(
          _$GetError value, $Res Function(_$GetError) then) =
      __$$GetErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStateData? data});

  @override
  $HomeStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetErrorCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GetError>
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
              as HomeStateData?,
    ));
  }
}

/// @nodoc

class _$GetError implements GetError {
  const _$GetError({this.data});

  @override
  final HomeStateData? data;

  @override
  String toString() {
    return 'HomeState.getError(data: $data)';
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
    required TResult Function(HomeStateData? data) initial,
    required TResult Function(HomeStateData? data) status,
    required TResult Function(HomeStateData? data) getError,
    required TResult Function(HomeStateData? data) getProducts,
    required TResult Function(HomeStateData? data) setPartOfProducts,
    required TResult Function(HomeStateData? data) setProductsByCategory,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStateData? data)? initial,
    TResult? Function(HomeStateData? data)? status,
    TResult? Function(HomeStateData? data)? getError,
    TResult? Function(HomeStateData? data)? getProducts,
    TResult? Function(HomeStateData? data)? setPartOfProducts,
    TResult? Function(HomeStateData? data)? setProductsByCategory,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStateData? data)? initial,
    TResult Function(HomeStateData? data)? status,
    TResult Function(HomeStateData? data)? getError,
    TResult Function(HomeStateData? data)? getProducts,
    TResult Function(HomeStateData? data)? setPartOfProducts,
    TResult Function(HomeStateData? data)? setProductsByCategory,
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
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(SetPartOfProducts value) setPartOfProducts,
    required TResult Function(SetProductsByCategory value)
        setProductsByCategory,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(SetPartOfProducts value)? setPartOfProducts,
    TResult? Function(SetProductsByCategory value)? setProductsByCategory,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(SetPartOfProducts value)? setPartOfProducts,
    TResult Function(SetProductsByCategory value)? setProductsByCategory,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements HomeState {
  const factory GetError({final HomeStateData? data}) = _$GetError;

  @override
  HomeStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorCopyWith<_$GetError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProductsCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$GetProductsCopyWith(
          _$GetProducts value, $Res Function(_$GetProducts) then) =
      __$$GetProductsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStateData? data});

  @override
  $HomeStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetProductsCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GetProducts>
    implements _$$GetProductsCopyWith<$Res> {
  __$$GetProductsCopyWithImpl(
      _$GetProducts _value, $Res Function(_$GetProducts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetProducts(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeStateData?,
    ));
  }
}

/// @nodoc

class _$GetProducts implements GetProducts {
  const _$GetProducts({this.data});

  @override
  final HomeStateData? data;

  @override
  String toString() {
    return 'HomeState.getProducts(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProducts &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductsCopyWith<_$GetProducts> get copyWith =>
      __$$GetProductsCopyWithImpl<_$GetProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeStateData? data) initial,
    required TResult Function(HomeStateData? data) status,
    required TResult Function(HomeStateData? data) getError,
    required TResult Function(HomeStateData? data) getProducts,
    required TResult Function(HomeStateData? data) setPartOfProducts,
    required TResult Function(HomeStateData? data) setProductsByCategory,
  }) {
    return getProducts(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStateData? data)? initial,
    TResult? Function(HomeStateData? data)? status,
    TResult? Function(HomeStateData? data)? getError,
    TResult? Function(HomeStateData? data)? getProducts,
    TResult? Function(HomeStateData? data)? setPartOfProducts,
    TResult? Function(HomeStateData? data)? setProductsByCategory,
  }) {
    return getProducts?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStateData? data)? initial,
    TResult Function(HomeStateData? data)? status,
    TResult Function(HomeStateData? data)? getError,
    TResult Function(HomeStateData? data)? getProducts,
    TResult Function(HomeStateData? data)? setPartOfProducts,
    TResult Function(HomeStateData? data)? setProductsByCategory,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(SetPartOfProducts value) setPartOfProducts,
    required TResult Function(SetProductsByCategory value)
        setProductsByCategory,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(SetPartOfProducts value)? setPartOfProducts,
    TResult? Function(SetProductsByCategory value)? setProductsByCategory,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(SetPartOfProducts value)? setPartOfProducts,
    TResult Function(SetProductsByCategory value)? setProductsByCategory,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class GetProducts implements HomeState {
  const factory GetProducts({final HomeStateData? data}) = _$GetProducts;

  @override
  HomeStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetProductsCopyWith<_$GetProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetPartOfProductsCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$SetPartOfProductsCopyWith(
          _$SetPartOfProducts value, $Res Function(_$SetPartOfProducts) then) =
      __$$SetPartOfProductsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStateData? data});

  @override
  $HomeStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetPartOfProductsCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SetPartOfProducts>
    implements _$$SetPartOfProductsCopyWith<$Res> {
  __$$SetPartOfProductsCopyWithImpl(
      _$SetPartOfProducts _value, $Res Function(_$SetPartOfProducts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SetPartOfProducts(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeStateData?,
    ));
  }
}

/// @nodoc

class _$SetPartOfProducts implements SetPartOfProducts {
  const _$SetPartOfProducts({this.data});

  @override
  final HomeStateData? data;

  @override
  String toString() {
    return 'HomeState.setPartOfProducts(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPartOfProducts &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPartOfProductsCopyWith<_$SetPartOfProducts> get copyWith =>
      __$$SetPartOfProductsCopyWithImpl<_$SetPartOfProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeStateData? data) initial,
    required TResult Function(HomeStateData? data) status,
    required TResult Function(HomeStateData? data) getError,
    required TResult Function(HomeStateData? data) getProducts,
    required TResult Function(HomeStateData? data) setPartOfProducts,
    required TResult Function(HomeStateData? data) setProductsByCategory,
  }) {
    return setPartOfProducts(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStateData? data)? initial,
    TResult? Function(HomeStateData? data)? status,
    TResult? Function(HomeStateData? data)? getError,
    TResult? Function(HomeStateData? data)? getProducts,
    TResult? Function(HomeStateData? data)? setPartOfProducts,
    TResult? Function(HomeStateData? data)? setProductsByCategory,
  }) {
    return setPartOfProducts?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStateData? data)? initial,
    TResult Function(HomeStateData? data)? status,
    TResult Function(HomeStateData? data)? getError,
    TResult Function(HomeStateData? data)? getProducts,
    TResult Function(HomeStateData? data)? setPartOfProducts,
    TResult Function(HomeStateData? data)? setProductsByCategory,
    required TResult orElse(),
  }) {
    if (setPartOfProducts != null) {
      return setPartOfProducts(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(SetPartOfProducts value) setPartOfProducts,
    required TResult Function(SetProductsByCategory value)
        setProductsByCategory,
  }) {
    return setPartOfProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(SetPartOfProducts value)? setPartOfProducts,
    TResult? Function(SetProductsByCategory value)? setProductsByCategory,
  }) {
    return setPartOfProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(SetPartOfProducts value)? setPartOfProducts,
    TResult Function(SetProductsByCategory value)? setProductsByCategory,
    required TResult orElse(),
  }) {
    if (setPartOfProducts != null) {
      return setPartOfProducts(this);
    }
    return orElse();
  }
}

abstract class SetPartOfProducts implements HomeState {
  const factory SetPartOfProducts({final HomeStateData? data}) =
      _$SetPartOfProducts;

  @override
  HomeStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetPartOfProductsCopyWith<_$SetPartOfProducts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetProductsByCategoryCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$SetProductsByCategoryCopyWith(_$SetProductsByCategory value,
          $Res Function(_$SetProductsByCategory) then) =
      __$$SetProductsByCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStateData? data});

  @override
  $HomeStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetProductsByCategoryCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SetProductsByCategory>
    implements _$$SetProductsByCategoryCopyWith<$Res> {
  __$$SetProductsByCategoryCopyWithImpl(_$SetProductsByCategory _value,
      $Res Function(_$SetProductsByCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SetProductsByCategory(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeStateData?,
    ));
  }
}

/// @nodoc

class _$SetProductsByCategory implements SetProductsByCategory {
  const _$SetProductsByCategory({this.data});

  @override
  final HomeStateData? data;

  @override
  String toString() {
    return 'HomeState.setProductsByCategory(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetProductsByCategory &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetProductsByCategoryCopyWith<_$SetProductsByCategory> get copyWith =>
      __$$SetProductsByCategoryCopyWithImpl<_$SetProductsByCategory>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeStateData? data) initial,
    required TResult Function(HomeStateData? data) status,
    required TResult Function(HomeStateData? data) getError,
    required TResult Function(HomeStateData? data) getProducts,
    required TResult Function(HomeStateData? data) setPartOfProducts,
    required TResult Function(HomeStateData? data) setProductsByCategory,
  }) {
    return setProductsByCategory(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStateData? data)? initial,
    TResult? Function(HomeStateData? data)? status,
    TResult? Function(HomeStateData? data)? getError,
    TResult? Function(HomeStateData? data)? getProducts,
    TResult? Function(HomeStateData? data)? setPartOfProducts,
    TResult? Function(HomeStateData? data)? setProductsByCategory,
  }) {
    return setProductsByCategory?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStateData? data)? initial,
    TResult Function(HomeStateData? data)? status,
    TResult Function(HomeStateData? data)? getError,
    TResult Function(HomeStateData? data)? getProducts,
    TResult Function(HomeStateData? data)? setPartOfProducts,
    TResult Function(HomeStateData? data)? setProductsByCategory,
    required TResult orElse(),
  }) {
    if (setProductsByCategory != null) {
      return setProductsByCategory(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetProducts value) getProducts,
    required TResult Function(SetPartOfProducts value) setPartOfProducts,
    required TResult Function(SetProductsByCategory value)
        setProductsByCategory,
  }) {
    return setProductsByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetProducts value)? getProducts,
    TResult? Function(SetPartOfProducts value)? setPartOfProducts,
    TResult? Function(SetProductsByCategory value)? setProductsByCategory,
  }) {
    return setProductsByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetProducts value)? getProducts,
    TResult Function(SetPartOfProducts value)? setPartOfProducts,
    TResult Function(SetProductsByCategory value)? setProductsByCategory,
    required TResult orElse(),
  }) {
    if (setProductsByCategory != null) {
      return setProductsByCategory(this);
    }
    return orElse();
  }
}

abstract class SetProductsByCategory implements HomeState {
  const factory SetProductsByCategory({final HomeStateData? data}) =
      _$SetProductsByCategory;

  @override
  HomeStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetProductsByCategoryCopyWith<_$SetProductsByCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
