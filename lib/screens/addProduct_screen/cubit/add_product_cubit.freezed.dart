// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_product_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddProductStateData {
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddProductStateDataCopyWith<AddProductStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddProductStateDataCopyWith<$Res> {
  factory $AddProductStateDataCopyWith(
          AddProductStateData value, $Res Function(AddProductStateData) then) =
      _$AddProductStateDataCopyWithImpl<$Res, AddProductStateData>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$AddProductStateDataCopyWithImpl<$Res, $Val extends AddProductStateData>
    implements $AddProductStateDataCopyWith<$Res> {
  _$AddProductStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddProductStateDataCopyWith<$Res>
    implements $AddProductStateDataCopyWith<$Res> {
  factory _$$_AddProductStateDataCopyWith(_$_AddProductStateData value,
          $Res Function(_$_AddProductStateData) then) =
      __$$_AddProductStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_AddProductStateDataCopyWithImpl<$Res>
    extends _$AddProductStateDataCopyWithImpl<$Res, _$_AddProductStateData>
    implements _$$_AddProductStateDataCopyWith<$Res> {
  __$$_AddProductStateDataCopyWithImpl(_$_AddProductStateData _value,
      $Res Function(_$_AddProductStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_AddProductStateData(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddProductStateData implements _AddProductStateData {
  const _$_AddProductStateData({this.error = ''});

  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'AddProductStateData(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddProductStateData &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddProductStateDataCopyWith<_$_AddProductStateData> get copyWith =>
      __$$_AddProductStateDataCopyWithImpl<_$_AddProductStateData>(
          this, _$identity);
}

abstract class _AddProductStateData implements AddProductStateData {
  const factory _AddProductStateData({final String error}) =
      _$_AddProductStateData;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$_AddProductStateDataCopyWith<_$_AddProductStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddProductState {
  AddProductStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddProductStateData? data) initial,
    required TResult Function(AddProductStateData? data) getError,
    required TResult Function(AddProductStateData? data) sellProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddProductStateData? data)? initial,
    TResult? Function(AddProductStateData? data)? getError,
    TResult? Function(AddProductStateData? data)? sellProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddProductStateData? data)? initial,
    TResult Function(AddProductStateData? data)? getError,
    TResult Function(AddProductStateData? data)? sellProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(SellProduct value) sellProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(SellProduct value)? sellProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(SellProduct value)? sellProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddProductStateCopyWith<AddProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddProductStateCopyWith<$Res> {
  factory $AddProductStateCopyWith(
          AddProductState value, $Res Function(AddProductState) then) =
      _$AddProductStateCopyWithImpl<$Res, AddProductState>;
  @useResult
  $Res call({AddProductStateData? data});

  $AddProductStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddProductStateCopyWithImpl<$Res, $Val extends AddProductState>
    implements $AddProductStateCopyWith<$Res> {
  _$AddProductStateCopyWithImpl(this._value, this._then);

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
              as AddProductStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddProductStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AddProductStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $AddProductStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddProductStateData? data});

  @override
  $AddProductStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$AddProductStateCopyWithImpl<$Res, _$Initial>
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
              as AddProductStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final AddProductStateData? data;

  @override
  String toString() {
    return 'AddProductState.initial(data: $data)';
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
    required TResult Function(AddProductStateData? data) initial,
    required TResult Function(AddProductStateData? data) getError,
    required TResult Function(AddProductStateData? data) sellProduct,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddProductStateData? data)? initial,
    TResult? Function(AddProductStateData? data)? getError,
    TResult? Function(AddProductStateData? data)? sellProduct,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddProductStateData? data)? initial,
    TResult Function(AddProductStateData? data)? getError,
    TResult Function(AddProductStateData? data)? sellProduct,
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
    required TResult Function(SellProduct value) sellProduct,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(SellProduct value)? sellProduct,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(SellProduct value)? sellProduct,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AddProductState {
  const factory Initial({final AddProductStateData? data}) = _$Initial;

  @override
  AddProductStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorCopyWith<$Res>
    implements $AddProductStateCopyWith<$Res> {
  factory _$$GetErrorCopyWith(
          _$GetError value, $Res Function(_$GetError) then) =
      __$$GetErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddProductStateData? data});

  @override
  $AddProductStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetErrorCopyWithImpl<$Res>
    extends _$AddProductStateCopyWithImpl<$Res, _$GetError>
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
              as AddProductStateData?,
    ));
  }
}

/// @nodoc

class _$GetError implements GetError {
  const _$GetError({this.data});

  @override
  final AddProductStateData? data;

  @override
  String toString() {
    return 'AddProductState.getError(data: $data)';
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
    required TResult Function(AddProductStateData? data) initial,
    required TResult Function(AddProductStateData? data) getError,
    required TResult Function(AddProductStateData? data) sellProduct,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddProductStateData? data)? initial,
    TResult? Function(AddProductStateData? data)? getError,
    TResult? Function(AddProductStateData? data)? sellProduct,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddProductStateData? data)? initial,
    TResult Function(AddProductStateData? data)? getError,
    TResult Function(AddProductStateData? data)? sellProduct,
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
    required TResult Function(SellProduct value) sellProduct,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(SellProduct value)? sellProduct,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(SellProduct value)? sellProduct,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements AddProductState {
  const factory GetError({final AddProductStateData? data}) = _$GetError;

  @override
  AddProductStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorCopyWith<_$GetError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SellProductCopyWith<$Res>
    implements $AddProductStateCopyWith<$Res> {
  factory _$$SellProductCopyWith(
          _$SellProduct value, $Res Function(_$SellProduct) then) =
      __$$SellProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddProductStateData? data});

  @override
  $AddProductStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SellProductCopyWithImpl<$Res>
    extends _$AddProductStateCopyWithImpl<$Res, _$SellProduct>
    implements _$$SellProductCopyWith<$Res> {
  __$$SellProductCopyWithImpl(
      _$SellProduct _value, $Res Function(_$SellProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SellProduct(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddProductStateData?,
    ));
  }
}

/// @nodoc

class _$SellProduct implements SellProduct {
  const _$SellProduct({this.data});

  @override
  final AddProductStateData? data;

  @override
  String toString() {
    return 'AddProductState.sellProduct(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SellProduct &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SellProductCopyWith<_$SellProduct> get copyWith =>
      __$$SellProductCopyWithImpl<_$SellProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddProductStateData? data) initial,
    required TResult Function(AddProductStateData? data) getError,
    required TResult Function(AddProductStateData? data) sellProduct,
  }) {
    return sellProduct(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddProductStateData? data)? initial,
    TResult? Function(AddProductStateData? data)? getError,
    TResult? Function(AddProductStateData? data)? sellProduct,
  }) {
    return sellProduct?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddProductStateData? data)? initial,
    TResult Function(AddProductStateData? data)? getError,
    TResult Function(AddProductStateData? data)? sellProduct,
    required TResult orElse(),
  }) {
    if (sellProduct != null) {
      return sellProduct(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(SellProduct value) sellProduct,
  }) {
    return sellProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(SellProduct value)? sellProduct,
  }) {
    return sellProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(SellProduct value)? sellProduct,
    required TResult orElse(),
  }) {
    if (sellProduct != null) {
      return sellProduct(this);
    }
    return orElse();
  }
}

abstract class SellProduct implements AddProductState {
  const factory SellProduct({final AddProductStateData? data}) = _$SellProduct;

  @override
  AddProductStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SellProductCopyWith<_$SellProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
