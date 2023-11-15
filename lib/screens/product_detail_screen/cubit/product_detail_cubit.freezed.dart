// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductDetailStateData {
  String get error => throw _privateConstructorUsedError;
  StatusType get status => throw _privateConstructorUsedError;
  int get indexSize => throw _privateConstructorUsedError;
  int get indexColor => throw _privateConstructorUsedError;
  int? get available => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDetailStateDataCopyWith<ProductDetailStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailStateDataCopyWith<$Res> {
  factory $ProductDetailStateDataCopyWith(ProductDetailStateData value,
          $Res Function(ProductDetailStateData) then) =
      _$ProductDetailStateDataCopyWithImpl<$Res, ProductDetailStateData>;
  @useResult
  $Res call(
      {String error,
      StatusType status,
      int indexSize,
      int indexColor,
      int? available});
}

/// @nodoc
class _$ProductDetailStateDataCopyWithImpl<$Res,
        $Val extends ProductDetailStateData>
    implements $ProductDetailStateDataCopyWith<$Res> {
  _$ProductDetailStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? indexSize = null,
    Object? indexColor = null,
    Object? available = freezed,
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
      indexSize: null == indexSize
          ? _value.indexSize
          : indexSize // ignore: cast_nullable_to_non_nullable
              as int,
      indexColor: null == indexColor
          ? _value.indexColor
          : indexColor // ignore: cast_nullable_to_non_nullable
              as int,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductDetailStateDataCopyWith<$Res>
    implements $ProductDetailStateDataCopyWith<$Res> {
  factory _$$_ProductDetailStateDataCopyWith(_$_ProductDetailStateData value,
          $Res Function(_$_ProductDetailStateData) then) =
      __$$_ProductDetailStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String error,
      StatusType status,
      int indexSize,
      int indexColor,
      int? available});
}

/// @nodoc
class __$$_ProductDetailStateDataCopyWithImpl<$Res>
    extends _$ProductDetailStateDataCopyWithImpl<$Res,
        _$_ProductDetailStateData>
    implements _$$_ProductDetailStateDataCopyWith<$Res> {
  __$$_ProductDetailStateDataCopyWithImpl(_$_ProductDetailStateData _value,
      $Res Function(_$_ProductDetailStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? indexSize = null,
    Object? indexColor = null,
    Object? available = freezed,
  }) {
    return _then(_$_ProductDetailStateData(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      indexSize: null == indexSize
          ? _value.indexSize
          : indexSize // ignore: cast_nullable_to_non_nullable
              as int,
      indexColor: null == indexColor
          ? _value.indexColor
          : indexColor // ignore: cast_nullable_to_non_nullable
              as int,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_ProductDetailStateData implements _ProductDetailStateData {
  const _$_ProductDetailStateData(
      {this.error = '',
      this.status = StatusType.init,
      this.indexSize = 0,
      this.indexColor = 0,
      this.available});

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final StatusType status;
  @override
  @JsonKey()
  final int indexSize;
  @override
  @JsonKey()
  final int indexColor;
  @override
  final int? available;

  @override
  String toString() {
    return 'ProductDetailStateData(error: $error, status: $status, indexSize: $indexSize, indexColor: $indexColor, available: $available)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDetailStateData &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.indexSize, indexSize) ||
                other.indexSize == indexSize) &&
            (identical(other.indexColor, indexColor) ||
                other.indexColor == indexColor) &&
            (identical(other.available, available) ||
                other.available == available));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, error, status, indexSize, indexColor, available);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDetailStateDataCopyWith<_$_ProductDetailStateData> get copyWith =>
      __$$_ProductDetailStateDataCopyWithImpl<_$_ProductDetailStateData>(
          this, _$identity);
}

abstract class _ProductDetailStateData implements ProductDetailStateData {
  const factory _ProductDetailStateData(
      {final String error,
      final StatusType status,
      final int indexSize,
      final int indexColor,
      final int? available}) = _$_ProductDetailStateData;

  @override
  String get error;
  @override
  StatusType get status;
  @override
  int get indexSize;
  @override
  int get indexColor;
  @override
  int? get available;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDetailStateDataCopyWith<_$_ProductDetailStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductDetailState {
  ProductDetailStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductDetailStateData? data) initial,
    required TResult Function(ProductDetailStateData? data) status,
    required TResult Function(ProductDetailStateData? data) getError,
    required TResult Function(ProductDetailStateData? data) setIndex,
    required TResult Function(ProductDetailStateData? data) setAvailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailStateData? data)? initial,
    TResult? Function(ProductDetailStateData? data)? status,
    TResult? Function(ProductDetailStateData? data)? getError,
    TResult? Function(ProductDetailStateData? data)? setIndex,
    TResult? Function(ProductDetailStateData? data)? setAvailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductDetailStateData? data)? initial,
    TResult Function(ProductDetailStateData? data)? status,
    TResult Function(ProductDetailStateData? data)? getError,
    TResult Function(ProductDetailStateData? data)? setIndex,
    TResult Function(ProductDetailStateData? data)? setAvailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(SetIndex value) setIndex,
    required TResult Function(SetAvailable value) setAvailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(SetIndex value)? setIndex,
    TResult? Function(SetAvailable value)? setAvailable,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(SetIndex value)? setIndex,
    TResult Function(SetAvailable value)? setAvailable,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDetailStateCopyWith<ProductDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailStateCopyWith<$Res> {
  factory $ProductDetailStateCopyWith(
          ProductDetailState value, $Res Function(ProductDetailState) then) =
      _$ProductDetailStateCopyWithImpl<$Res, ProductDetailState>;
  @useResult
  $Res call({ProductDetailStateData? data});

  $ProductDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProductDetailStateCopyWithImpl<$Res, $Val extends ProductDetailState>
    implements $ProductDetailStateCopyWith<$Res> {
  _$ProductDetailStateCopyWithImpl(this._value, this._then);

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
              as ProductDetailStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDetailStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProductDetailStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $ProductDetailStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductDetailStateData? data});

  @override
  $ProductDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res, _$Initial>
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
              as ProductDetailStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final ProductDetailStateData? data;

  @override
  String toString() {
    return 'ProductDetailState.initial(data: $data)';
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
    required TResult Function(ProductDetailStateData? data) initial,
    required TResult Function(ProductDetailStateData? data) status,
    required TResult Function(ProductDetailStateData? data) getError,
    required TResult Function(ProductDetailStateData? data) setIndex,
    required TResult Function(ProductDetailStateData? data) setAvailable,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailStateData? data)? initial,
    TResult? Function(ProductDetailStateData? data)? status,
    TResult? Function(ProductDetailStateData? data)? getError,
    TResult? Function(ProductDetailStateData? data)? setIndex,
    TResult? Function(ProductDetailStateData? data)? setAvailable,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductDetailStateData? data)? initial,
    TResult Function(ProductDetailStateData? data)? status,
    TResult Function(ProductDetailStateData? data)? getError,
    TResult Function(ProductDetailStateData? data)? setIndex,
    TResult Function(ProductDetailStateData? data)? setAvailable,
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
    required TResult Function(SetIndex value) setIndex,
    required TResult Function(SetAvailable value) setAvailable,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(SetIndex value)? setIndex,
    TResult? Function(SetAvailable value)? setAvailable,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(SetIndex value)? setIndex,
    TResult Function(SetAvailable value)? setAvailable,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ProductDetailState {
  const factory Initial({final ProductDetailStateData? data}) = _$Initial;

  @override
  ProductDetailStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res>
    implements $ProductDetailStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductDetailStateData? data});

  @override
  $ProductDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res, _$Status>
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
              as ProductDetailStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final ProductDetailStateData? data;

  @override
  String toString() {
    return 'ProductDetailState.status(data: $data)';
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
    required TResult Function(ProductDetailStateData? data) initial,
    required TResult Function(ProductDetailStateData? data) status,
    required TResult Function(ProductDetailStateData? data) getError,
    required TResult Function(ProductDetailStateData? data) setIndex,
    required TResult Function(ProductDetailStateData? data) setAvailable,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailStateData? data)? initial,
    TResult? Function(ProductDetailStateData? data)? status,
    TResult? Function(ProductDetailStateData? data)? getError,
    TResult? Function(ProductDetailStateData? data)? setIndex,
    TResult? Function(ProductDetailStateData? data)? setAvailable,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductDetailStateData? data)? initial,
    TResult Function(ProductDetailStateData? data)? status,
    TResult Function(ProductDetailStateData? data)? getError,
    TResult Function(ProductDetailStateData? data)? setIndex,
    TResult Function(ProductDetailStateData? data)? setAvailable,
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
    required TResult Function(SetIndex value) setIndex,
    required TResult Function(SetAvailable value) setAvailable,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(SetIndex value)? setIndex,
    TResult? Function(SetAvailable value)? setAvailable,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(SetIndex value)? setIndex,
    TResult Function(SetAvailable value)? setAvailable,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements ProductDetailState {
  const factory Status({final ProductDetailStateData? data}) = _$Status;

  @override
  ProductDetailStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorCopyWith<$Res>
    implements $ProductDetailStateCopyWith<$Res> {
  factory _$$GetErrorCopyWith(
          _$GetError value, $Res Function(_$GetError) then) =
      __$$GetErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductDetailStateData? data});

  @override
  $ProductDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetErrorCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res, _$GetError>
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
              as ProductDetailStateData?,
    ));
  }
}

/// @nodoc

class _$GetError implements GetError {
  const _$GetError({this.data});

  @override
  final ProductDetailStateData? data;

  @override
  String toString() {
    return 'ProductDetailState.getError(data: $data)';
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
    required TResult Function(ProductDetailStateData? data) initial,
    required TResult Function(ProductDetailStateData? data) status,
    required TResult Function(ProductDetailStateData? data) getError,
    required TResult Function(ProductDetailStateData? data) setIndex,
    required TResult Function(ProductDetailStateData? data) setAvailable,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailStateData? data)? initial,
    TResult? Function(ProductDetailStateData? data)? status,
    TResult? Function(ProductDetailStateData? data)? getError,
    TResult? Function(ProductDetailStateData? data)? setIndex,
    TResult? Function(ProductDetailStateData? data)? setAvailable,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductDetailStateData? data)? initial,
    TResult Function(ProductDetailStateData? data)? status,
    TResult Function(ProductDetailStateData? data)? getError,
    TResult Function(ProductDetailStateData? data)? setIndex,
    TResult Function(ProductDetailStateData? data)? setAvailable,
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
    required TResult Function(SetIndex value) setIndex,
    required TResult Function(SetAvailable value) setAvailable,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(SetIndex value)? setIndex,
    TResult? Function(SetAvailable value)? setAvailable,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(SetIndex value)? setIndex,
    TResult Function(SetAvailable value)? setAvailable,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements ProductDetailState {
  const factory GetError({final ProductDetailStateData? data}) = _$GetError;

  @override
  ProductDetailStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorCopyWith<_$GetError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetIndexCopyWith<$Res>
    implements $ProductDetailStateCopyWith<$Res> {
  factory _$$SetIndexCopyWith(
          _$SetIndex value, $Res Function(_$SetIndex) then) =
      __$$SetIndexCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductDetailStateData? data});

  @override
  $ProductDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetIndexCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res, _$SetIndex>
    implements _$$SetIndexCopyWith<$Res> {
  __$$SetIndexCopyWithImpl(_$SetIndex _value, $Res Function(_$SetIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SetIndex(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductDetailStateData?,
    ));
  }
}

/// @nodoc

class _$SetIndex implements SetIndex {
  const _$SetIndex({this.data});

  @override
  final ProductDetailStateData? data;

  @override
  String toString() {
    return 'ProductDetailState.setIndex(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetIndex &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetIndexCopyWith<_$SetIndex> get copyWith =>
      __$$SetIndexCopyWithImpl<_$SetIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductDetailStateData? data) initial,
    required TResult Function(ProductDetailStateData? data) status,
    required TResult Function(ProductDetailStateData? data) getError,
    required TResult Function(ProductDetailStateData? data) setIndex,
    required TResult Function(ProductDetailStateData? data) setAvailable,
  }) {
    return setIndex(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailStateData? data)? initial,
    TResult? Function(ProductDetailStateData? data)? status,
    TResult? Function(ProductDetailStateData? data)? getError,
    TResult? Function(ProductDetailStateData? data)? setIndex,
    TResult? Function(ProductDetailStateData? data)? setAvailable,
  }) {
    return setIndex?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductDetailStateData? data)? initial,
    TResult Function(ProductDetailStateData? data)? status,
    TResult Function(ProductDetailStateData? data)? getError,
    TResult Function(ProductDetailStateData? data)? setIndex,
    TResult Function(ProductDetailStateData? data)? setAvailable,
    required TResult orElse(),
  }) {
    if (setIndex != null) {
      return setIndex(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(SetIndex value) setIndex,
    required TResult Function(SetAvailable value) setAvailable,
  }) {
    return setIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(SetIndex value)? setIndex,
    TResult? Function(SetAvailable value)? setAvailable,
  }) {
    return setIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(SetIndex value)? setIndex,
    TResult Function(SetAvailable value)? setAvailable,
    required TResult orElse(),
  }) {
    if (setIndex != null) {
      return setIndex(this);
    }
    return orElse();
  }
}

abstract class SetIndex implements ProductDetailState {
  const factory SetIndex({final ProductDetailStateData? data}) = _$SetIndex;

  @override
  ProductDetailStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetIndexCopyWith<_$SetIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetAvailableCopyWith<$Res>
    implements $ProductDetailStateCopyWith<$Res> {
  factory _$$SetAvailableCopyWith(
          _$SetAvailable value, $Res Function(_$SetAvailable) then) =
      __$$SetAvailableCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductDetailStateData? data});

  @override
  $ProductDetailStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetAvailableCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res, _$SetAvailable>
    implements _$$SetAvailableCopyWith<$Res> {
  __$$SetAvailableCopyWithImpl(
      _$SetAvailable _value, $Res Function(_$SetAvailable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SetAvailable(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductDetailStateData?,
    ));
  }
}

/// @nodoc

class _$SetAvailable implements SetAvailable {
  const _$SetAvailable({this.data});

  @override
  final ProductDetailStateData? data;

  @override
  String toString() {
    return 'ProductDetailState.setAvailable(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAvailable &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetAvailableCopyWith<_$SetAvailable> get copyWith =>
      __$$SetAvailableCopyWithImpl<_$SetAvailable>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProductDetailStateData? data) initial,
    required TResult Function(ProductDetailStateData? data) status,
    required TResult Function(ProductDetailStateData? data) getError,
    required TResult Function(ProductDetailStateData? data) setIndex,
    required TResult Function(ProductDetailStateData? data) setAvailable,
  }) {
    return setAvailable(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ProductDetailStateData? data)? initial,
    TResult? Function(ProductDetailStateData? data)? status,
    TResult? Function(ProductDetailStateData? data)? getError,
    TResult? Function(ProductDetailStateData? data)? setIndex,
    TResult? Function(ProductDetailStateData? data)? setAvailable,
  }) {
    return setAvailable?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProductDetailStateData? data)? initial,
    TResult Function(ProductDetailStateData? data)? status,
    TResult Function(ProductDetailStateData? data)? getError,
    TResult Function(ProductDetailStateData? data)? setIndex,
    TResult Function(ProductDetailStateData? data)? setAvailable,
    required TResult orElse(),
  }) {
    if (setAvailable != null) {
      return setAvailable(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(SetIndex value) setIndex,
    required TResult Function(SetAvailable value) setAvailable,
  }) {
    return setAvailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(SetIndex value)? setIndex,
    TResult? Function(SetAvailable value)? setAvailable,
  }) {
    return setAvailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(SetIndex value)? setIndex,
    TResult Function(SetAvailable value)? setAvailable,
    required TResult orElse(),
  }) {
    if (setAvailable != null) {
      return setAvailable(this);
    }
    return orElse();
  }
}

abstract class SetAvailable implements ProductDetailState {
  const factory SetAvailable({final ProductDetailStateData? data}) =
      _$SetAvailable;

  @override
  ProductDetailStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetAvailableCopyWith<_$SetAvailable> get copyWith =>
      throw _privateConstructorUsedError;
}
