// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WishlistStateData {
  String get error => throw _privateConstructorUsedError;
  StatusType get status => throw _privateConstructorUsedError;
  List<Product> get wishlist => throw _privateConstructorUsedError;
  bool get isExist => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WishlistStateDataCopyWith<WishlistStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistStateDataCopyWith<$Res> {
  factory $WishlistStateDataCopyWith(
          WishlistStateData value, $Res Function(WishlistStateData) then) =
      _$WishlistStateDataCopyWithImpl<$Res, WishlistStateData>;
  @useResult
  $Res call(
      {String error, StatusType status, List<Product> wishlist, bool isExist});
}

/// @nodoc
class _$WishlistStateDataCopyWithImpl<$Res, $Val extends WishlistStateData>
    implements $WishlistStateDataCopyWith<$Res> {
  _$WishlistStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? wishlist = null,
    Object? isExist = null,
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
      wishlist: null == wishlist
          ? _value.wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      isExist: null == isExist
          ? _value.isExist
          : isExist // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WishlistStateDataCopyWith<$Res>
    implements $WishlistStateDataCopyWith<$Res> {
  factory _$$_WishlistStateDataCopyWith(_$_WishlistStateData value,
          $Res Function(_$_WishlistStateData) then) =
      __$$_WishlistStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String error, StatusType status, List<Product> wishlist, bool isExist});
}

/// @nodoc
class __$$_WishlistStateDataCopyWithImpl<$Res>
    extends _$WishlistStateDataCopyWithImpl<$Res, _$_WishlistStateData>
    implements _$$_WishlistStateDataCopyWith<$Res> {
  __$$_WishlistStateDataCopyWithImpl(
      _$_WishlistStateData _value, $Res Function(_$_WishlistStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? wishlist = null,
    Object? isExist = null,
  }) {
    return _then(_$_WishlistStateData(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      wishlist: null == wishlist
          ? _value._wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      isExist: null == isExist
          ? _value.isExist
          : isExist // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_WishlistStateData implements _WishlistStateData {
  const _$_WishlistStateData(
      {this.error = '',
      this.status = StatusType.init,
      final List<Product> wishlist = const [],
      this.isExist = false})
      : _wishlist = wishlist;

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final StatusType status;
  final List<Product> _wishlist;
  @override
  @JsonKey()
  List<Product> get wishlist {
    if (_wishlist is EqualUnmodifiableListView) return _wishlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wishlist);
  }

  @override
  @JsonKey()
  final bool isExist;

  @override
  String toString() {
    return 'WishlistStateData(error: $error, status: $status, wishlist: $wishlist, isExist: $isExist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WishlistStateData &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._wishlist, _wishlist) &&
            (identical(other.isExist, isExist) || other.isExist == isExist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, status,
      const DeepCollectionEquality().hash(_wishlist), isExist);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WishlistStateDataCopyWith<_$_WishlistStateData> get copyWith =>
      __$$_WishlistStateDataCopyWithImpl<_$_WishlistStateData>(
          this, _$identity);
}

abstract class _WishlistStateData implements WishlistStateData {
  const factory _WishlistStateData(
      {final String error,
      final StatusType status,
      final List<Product> wishlist,
      final bool isExist}) = _$_WishlistStateData;

  @override
  String get error;
  @override
  StatusType get status;
  @override
  List<Product> get wishlist;
  @override
  bool get isExist;
  @override
  @JsonKey(ignore: true)
  _$$_WishlistStateDataCopyWith<_$_WishlistStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WishlistState {
  WishlistStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WishlistStateData? data) initial,
    required TResult Function(WishlistStateData? data) status,
    required TResult Function(WishlistStateData? data) getError,
    required TResult Function(WishlistStateData? data) getWishlist,
    required TResult Function(WishlistStateData? data) setIsExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WishlistStateData? data)? initial,
    TResult? Function(WishlistStateData? data)? status,
    TResult? Function(WishlistStateData? data)? getError,
    TResult? Function(WishlistStateData? data)? getWishlist,
    TResult? Function(WishlistStateData? data)? setIsExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WishlistStateData? data)? initial,
    TResult Function(WishlistStateData? data)? status,
    TResult Function(WishlistStateData? data)? getError,
    TResult Function(WishlistStateData? data)? getWishlist,
    TResult Function(WishlistStateData? data)? setIsExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetOrders value) getWishlist,
    required TResult Function(SetIsExist value) setIsExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetOrders value)? getWishlist,
    TResult? Function(SetIsExist value)? setIsExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetOrders value)? getWishlist,
    TResult Function(SetIsExist value)? setIsExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WishlistStateCopyWith<WishlistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistStateCopyWith<$Res> {
  factory $WishlistStateCopyWith(
          WishlistState value, $Res Function(WishlistState) then) =
      _$WishlistStateCopyWithImpl<$Res, WishlistState>;
  @useResult
  $Res call({WishlistStateData? data});

  $WishlistStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$WishlistStateCopyWithImpl<$Res, $Val extends WishlistState>
    implements $WishlistStateCopyWith<$Res> {
  _$WishlistStateCopyWithImpl(this._value, this._then);

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
              as WishlistStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WishlistStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $WishlistStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $WishlistStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WishlistStateData? data});

  @override
  $WishlistStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$WishlistStateCopyWithImpl<$Res, _$Initial>
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
              as WishlistStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final WishlistStateData? data;

  @override
  String toString() {
    return 'WishlistState.initial(data: $data)';
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
    required TResult Function(WishlistStateData? data) initial,
    required TResult Function(WishlistStateData? data) status,
    required TResult Function(WishlistStateData? data) getError,
    required TResult Function(WishlistStateData? data) getWishlist,
    required TResult Function(WishlistStateData? data) setIsExist,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WishlistStateData? data)? initial,
    TResult? Function(WishlistStateData? data)? status,
    TResult? Function(WishlistStateData? data)? getError,
    TResult? Function(WishlistStateData? data)? getWishlist,
    TResult? Function(WishlistStateData? data)? setIsExist,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WishlistStateData? data)? initial,
    TResult Function(WishlistStateData? data)? status,
    TResult Function(WishlistStateData? data)? getError,
    TResult Function(WishlistStateData? data)? getWishlist,
    TResult Function(WishlistStateData? data)? setIsExist,
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
    required TResult Function(GetOrders value) getWishlist,
    required TResult Function(SetIsExist value) setIsExist,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetOrders value)? getWishlist,
    TResult? Function(SetIsExist value)? setIsExist,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetOrders value)? getWishlist,
    TResult Function(SetIsExist value)? setIsExist,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements WishlistState {
  const factory Initial({final WishlistStateData? data}) = _$Initial;

  @override
  WishlistStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res> implements $WishlistStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WishlistStateData? data});

  @override
  $WishlistStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$WishlistStateCopyWithImpl<$Res, _$Status>
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
              as WishlistStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final WishlistStateData? data;

  @override
  String toString() {
    return 'WishlistState.status(data: $data)';
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
    required TResult Function(WishlistStateData? data) initial,
    required TResult Function(WishlistStateData? data) status,
    required TResult Function(WishlistStateData? data) getError,
    required TResult Function(WishlistStateData? data) getWishlist,
    required TResult Function(WishlistStateData? data) setIsExist,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WishlistStateData? data)? initial,
    TResult? Function(WishlistStateData? data)? status,
    TResult? Function(WishlistStateData? data)? getError,
    TResult? Function(WishlistStateData? data)? getWishlist,
    TResult? Function(WishlistStateData? data)? setIsExist,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WishlistStateData? data)? initial,
    TResult Function(WishlistStateData? data)? status,
    TResult Function(WishlistStateData? data)? getError,
    TResult Function(WishlistStateData? data)? getWishlist,
    TResult Function(WishlistStateData? data)? setIsExist,
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
    required TResult Function(GetOrders value) getWishlist,
    required TResult Function(SetIsExist value) setIsExist,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetOrders value)? getWishlist,
    TResult? Function(SetIsExist value)? setIsExist,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetOrders value)? getWishlist,
    TResult Function(SetIsExist value)? setIsExist,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements WishlistState {
  const factory Status({final WishlistStateData? data}) = _$Status;

  @override
  WishlistStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorCopyWith<$Res>
    implements $WishlistStateCopyWith<$Res> {
  factory _$$GetErrorCopyWith(
          _$GetError value, $Res Function(_$GetError) then) =
      __$$GetErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WishlistStateData? data});

  @override
  $WishlistStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetErrorCopyWithImpl<$Res>
    extends _$WishlistStateCopyWithImpl<$Res, _$GetError>
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
              as WishlistStateData?,
    ));
  }
}

/// @nodoc

class _$GetError implements GetError {
  const _$GetError({this.data});

  @override
  final WishlistStateData? data;

  @override
  String toString() {
    return 'WishlistState.getError(data: $data)';
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
    required TResult Function(WishlistStateData? data) initial,
    required TResult Function(WishlistStateData? data) status,
    required TResult Function(WishlistStateData? data) getError,
    required TResult Function(WishlistStateData? data) getWishlist,
    required TResult Function(WishlistStateData? data) setIsExist,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WishlistStateData? data)? initial,
    TResult? Function(WishlistStateData? data)? status,
    TResult? Function(WishlistStateData? data)? getError,
    TResult? Function(WishlistStateData? data)? getWishlist,
    TResult? Function(WishlistStateData? data)? setIsExist,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WishlistStateData? data)? initial,
    TResult Function(WishlistStateData? data)? status,
    TResult Function(WishlistStateData? data)? getError,
    TResult Function(WishlistStateData? data)? getWishlist,
    TResult Function(WishlistStateData? data)? setIsExist,
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
    required TResult Function(GetOrders value) getWishlist,
    required TResult Function(SetIsExist value) setIsExist,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetOrders value)? getWishlist,
    TResult? Function(SetIsExist value)? setIsExist,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetOrders value)? getWishlist,
    TResult Function(SetIsExist value)? setIsExist,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements WishlistState {
  const factory GetError({final WishlistStateData? data}) = _$GetError;

  @override
  WishlistStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorCopyWith<_$GetError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetOrdersCopyWith<$Res>
    implements $WishlistStateCopyWith<$Res> {
  factory _$$GetOrdersCopyWith(
          _$GetOrders value, $Res Function(_$GetOrders) then) =
      __$$GetOrdersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WishlistStateData? data});

  @override
  $WishlistStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetOrdersCopyWithImpl<$Res>
    extends _$WishlistStateCopyWithImpl<$Res, _$GetOrders>
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
              as WishlistStateData?,
    ));
  }
}

/// @nodoc

class _$GetOrders implements GetOrders {
  const _$GetOrders({this.data});

  @override
  final WishlistStateData? data;

  @override
  String toString() {
    return 'WishlistState.getWishlist(data: $data)';
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
    required TResult Function(WishlistStateData? data) initial,
    required TResult Function(WishlistStateData? data) status,
    required TResult Function(WishlistStateData? data) getError,
    required TResult Function(WishlistStateData? data) getWishlist,
    required TResult Function(WishlistStateData? data) setIsExist,
  }) {
    return getWishlist(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WishlistStateData? data)? initial,
    TResult? Function(WishlistStateData? data)? status,
    TResult? Function(WishlistStateData? data)? getError,
    TResult? Function(WishlistStateData? data)? getWishlist,
    TResult? Function(WishlistStateData? data)? setIsExist,
  }) {
    return getWishlist?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WishlistStateData? data)? initial,
    TResult Function(WishlistStateData? data)? status,
    TResult Function(WishlistStateData? data)? getError,
    TResult Function(WishlistStateData? data)? getWishlist,
    TResult Function(WishlistStateData? data)? setIsExist,
    required TResult orElse(),
  }) {
    if (getWishlist != null) {
      return getWishlist(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetOrders value) getWishlist,
    required TResult Function(SetIsExist value) setIsExist,
  }) {
    return getWishlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetOrders value)? getWishlist,
    TResult? Function(SetIsExist value)? setIsExist,
  }) {
    return getWishlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetOrders value)? getWishlist,
    TResult Function(SetIsExist value)? setIsExist,
    required TResult orElse(),
  }) {
    if (getWishlist != null) {
      return getWishlist(this);
    }
    return orElse();
  }
}

abstract class GetOrders implements WishlistState {
  const factory GetOrders({final WishlistStateData? data}) = _$GetOrders;

  @override
  WishlistStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetOrdersCopyWith<_$GetOrders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetIsExistCopyWith<$Res>
    implements $WishlistStateCopyWith<$Res> {
  factory _$$SetIsExistCopyWith(
          _$SetIsExist value, $Res Function(_$SetIsExist) then) =
      __$$SetIsExistCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WishlistStateData? data});

  @override
  $WishlistStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetIsExistCopyWithImpl<$Res>
    extends _$WishlistStateCopyWithImpl<$Res, _$SetIsExist>
    implements _$$SetIsExistCopyWith<$Res> {
  __$$SetIsExistCopyWithImpl(
      _$SetIsExist _value, $Res Function(_$SetIsExist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SetIsExist(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WishlistStateData?,
    ));
  }
}

/// @nodoc

class _$SetIsExist implements SetIsExist {
  const _$SetIsExist({this.data});

  @override
  final WishlistStateData? data;

  @override
  String toString() {
    return 'WishlistState.setIsExist(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetIsExist &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetIsExistCopyWith<_$SetIsExist> get copyWith =>
      __$$SetIsExistCopyWithImpl<_$SetIsExist>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WishlistStateData? data) initial,
    required TResult Function(WishlistStateData? data) status,
    required TResult Function(WishlistStateData? data) getError,
    required TResult Function(WishlistStateData? data) getWishlist,
    required TResult Function(WishlistStateData? data) setIsExist,
  }) {
    return setIsExist(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(WishlistStateData? data)? initial,
    TResult? Function(WishlistStateData? data)? status,
    TResult? Function(WishlistStateData? data)? getError,
    TResult? Function(WishlistStateData? data)? getWishlist,
    TResult? Function(WishlistStateData? data)? setIsExist,
  }) {
    return setIsExist?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WishlistStateData? data)? initial,
    TResult Function(WishlistStateData? data)? status,
    TResult Function(WishlistStateData? data)? getError,
    TResult Function(WishlistStateData? data)? getWishlist,
    TResult Function(WishlistStateData? data)? setIsExist,
    required TResult orElse(),
  }) {
    if (setIsExist != null) {
      return setIsExist(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetOrders value) getWishlist,
    required TResult Function(SetIsExist value) setIsExist,
  }) {
    return setIsExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetOrders value)? getWishlist,
    TResult? Function(SetIsExist value)? setIsExist,
  }) {
    return setIsExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetOrders value)? getWishlist,
    TResult Function(SetIsExist value)? setIsExist,
    required TResult orElse(),
  }) {
    if (setIsExist != null) {
      return setIsExist(this);
    }
    return orElse();
  }
}

abstract class SetIsExist implements WishlistState {
  const factory SetIsExist({final WishlistStateData? data}) = _$SetIsExist;

  @override
  WishlistStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetIsExistCopyWith<_$SetIsExist> get copyWith =>
      throw _privateConstructorUsedError;
}
