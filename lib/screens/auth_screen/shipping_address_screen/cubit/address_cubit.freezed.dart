// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddressStateData {
  String get error => throw _privateConstructorUsedError;
  StatusType get status => throw _privateConstructorUsedError;
  List<ShippingInformation> get listAdress =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressStateDataCopyWith<AddressStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressStateDataCopyWith<$Res> {
  factory $AddressStateDataCopyWith(
          AddressStateData value, $Res Function(AddressStateData) then) =
      _$AddressStateDataCopyWithImpl<$Res, AddressStateData>;
  @useResult
  $Res call(
      {String error, StatusType status, List<ShippingInformation> listAdress});
}

/// @nodoc
class _$AddressStateDataCopyWithImpl<$Res, $Val extends AddressStateData>
    implements $AddressStateDataCopyWith<$Res> {
  _$AddressStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? listAdress = null,
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
      listAdress: null == listAdress
          ? _value.listAdress
          : listAdress // ignore: cast_nullable_to_non_nullable
              as List<ShippingInformation>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressStateDataCopyWith<$Res>
    implements $AddressStateDataCopyWith<$Res> {
  factory _$$_AddressStateDataCopyWith(
          _$_AddressStateData value, $Res Function(_$_AddressStateData) then) =
      __$$_AddressStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String error, StatusType status, List<ShippingInformation> listAdress});
}

/// @nodoc
class __$$_AddressStateDataCopyWithImpl<$Res>
    extends _$AddressStateDataCopyWithImpl<$Res, _$_AddressStateData>
    implements _$$_AddressStateDataCopyWith<$Res> {
  __$$_AddressStateDataCopyWithImpl(
      _$_AddressStateData _value, $Res Function(_$_AddressStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? listAdress = null,
  }) {
    return _then(_$_AddressStateData(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      listAdress: null == listAdress
          ? _value._listAdress
          : listAdress // ignore: cast_nullable_to_non_nullable
              as List<ShippingInformation>,
    ));
  }
}

/// @nodoc

class _$_AddressStateData implements _AddressStateData {
  const _$_AddressStateData(
      {this.error = '',
      this.status = StatusType.init,
      final List<ShippingInformation> listAdress = const []})
      : _listAdress = listAdress;

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final StatusType status;
  final List<ShippingInformation> _listAdress;
  @override
  @JsonKey()
  List<ShippingInformation> get listAdress {
    if (_listAdress is EqualUnmodifiableListView) return _listAdress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listAdress);
  }

  @override
  String toString() {
    return 'AddressStateData(error: $error, status: $status, listAdress: $listAdress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressStateData &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._listAdress, _listAdress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, status,
      const DeepCollectionEquality().hash(_listAdress));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressStateDataCopyWith<_$_AddressStateData> get copyWith =>
      __$$_AddressStateDataCopyWithImpl<_$_AddressStateData>(this, _$identity);
}

abstract class _AddressStateData implements AddressStateData {
  const factory _AddressStateData(
      {final String error,
      final StatusType status,
      final List<ShippingInformation> listAdress}) = _$_AddressStateData;

  @override
  String get error;
  @override
  StatusType get status;
  @override
  List<ShippingInformation> get listAdress;
  @override
  @JsonKey(ignore: true)
  _$$_AddressStateDataCopyWith<_$_AddressStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddressState {
  AddressStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddressStateData? data) initial,
    required TResult Function(AddressStateData? data) status,
    required TResult Function(AddressStateData? data) getError,
    required TResult Function(AddressStateData? data) getListAddress,
    required TResult Function(AddressStateData? data) deleteShippingInforById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressStateData? data)? initial,
    TResult? Function(AddressStateData? data)? status,
    TResult? Function(AddressStateData? data)? getError,
    TResult? Function(AddressStateData? data)? getListAddress,
    TResult? Function(AddressStateData? data)? deleteShippingInforById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressStateData? data)? initial,
    TResult Function(AddressStateData? data)? status,
    TResult Function(AddressStateData? data)? getError,
    TResult Function(AddressStateData? data)? getListAddress,
    TResult Function(AddressStateData? data)? deleteShippingInforById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetListAddress value) getListAddress,
    required TResult Function(DeleteShippingInforById value)
        deleteShippingInforById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetListAddress value)? getListAddress,
    TResult? Function(DeleteShippingInforById value)? deleteShippingInforById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetListAddress value)? getListAddress,
    TResult Function(DeleteShippingInforById value)? deleteShippingInforById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressStateCopyWith<AddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressStateCopyWith<$Res> {
  factory $AddressStateCopyWith(
          AddressState value, $Res Function(AddressState) then) =
      _$AddressStateCopyWithImpl<$Res, AddressState>;
  @useResult
  $Res call({AddressStateData? data});

  $AddressStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddressStateCopyWithImpl<$Res, $Val extends AddressState>
    implements $AddressStateCopyWith<$Res> {
  _$AddressStateCopyWithImpl(this._value, this._then);

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
              as AddressStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AddressStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $AddressStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddressStateData? data});

  @override
  $AddressStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$Initial>
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
              as AddressStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final AddressStateData? data;

  @override
  String toString() {
    return 'AddressState.initial(data: $data)';
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
    required TResult Function(AddressStateData? data) initial,
    required TResult Function(AddressStateData? data) status,
    required TResult Function(AddressStateData? data) getError,
    required TResult Function(AddressStateData? data) getListAddress,
    required TResult Function(AddressStateData? data) deleteShippingInforById,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressStateData? data)? initial,
    TResult? Function(AddressStateData? data)? status,
    TResult? Function(AddressStateData? data)? getError,
    TResult? Function(AddressStateData? data)? getListAddress,
    TResult? Function(AddressStateData? data)? deleteShippingInforById,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressStateData? data)? initial,
    TResult Function(AddressStateData? data)? status,
    TResult Function(AddressStateData? data)? getError,
    TResult Function(AddressStateData? data)? getListAddress,
    TResult Function(AddressStateData? data)? deleteShippingInforById,
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
    required TResult Function(GetListAddress value) getListAddress,
    required TResult Function(DeleteShippingInforById value)
        deleteShippingInforById,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetListAddress value)? getListAddress,
    TResult? Function(DeleteShippingInforById value)? deleteShippingInforById,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetListAddress value)? getListAddress,
    TResult Function(DeleteShippingInforById value)? deleteShippingInforById,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AddressState {
  const factory Initial({final AddressStateData? data}) = _$Initial;

  @override
  AddressStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res> implements $AddressStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddressStateData? data});

  @override
  $AddressStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$Status>
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
              as AddressStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final AddressStateData? data;

  @override
  String toString() {
    return 'AddressState.status(data: $data)';
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
    required TResult Function(AddressStateData? data) initial,
    required TResult Function(AddressStateData? data) status,
    required TResult Function(AddressStateData? data) getError,
    required TResult Function(AddressStateData? data) getListAddress,
    required TResult Function(AddressStateData? data) deleteShippingInforById,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressStateData? data)? initial,
    TResult? Function(AddressStateData? data)? status,
    TResult? Function(AddressStateData? data)? getError,
    TResult? Function(AddressStateData? data)? getListAddress,
    TResult? Function(AddressStateData? data)? deleteShippingInforById,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressStateData? data)? initial,
    TResult Function(AddressStateData? data)? status,
    TResult Function(AddressStateData? data)? getError,
    TResult Function(AddressStateData? data)? getListAddress,
    TResult Function(AddressStateData? data)? deleteShippingInforById,
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
    required TResult Function(GetListAddress value) getListAddress,
    required TResult Function(DeleteShippingInforById value)
        deleteShippingInforById,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetListAddress value)? getListAddress,
    TResult? Function(DeleteShippingInforById value)? deleteShippingInforById,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetListAddress value)? getListAddress,
    TResult Function(DeleteShippingInforById value)? deleteShippingInforById,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements AddressState {
  const factory Status({final AddressStateData? data}) = _$Status;

  @override
  AddressStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorCopyWith<$Res>
    implements $AddressStateCopyWith<$Res> {
  factory _$$GetErrorCopyWith(
          _$GetError value, $Res Function(_$GetError) then) =
      __$$GetErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddressStateData? data});

  @override
  $AddressStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetErrorCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$GetError>
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
              as AddressStateData?,
    ));
  }
}

/// @nodoc

class _$GetError implements GetError {
  const _$GetError({this.data});

  @override
  final AddressStateData? data;

  @override
  String toString() {
    return 'AddressState.getError(data: $data)';
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
    required TResult Function(AddressStateData? data) initial,
    required TResult Function(AddressStateData? data) status,
    required TResult Function(AddressStateData? data) getError,
    required TResult Function(AddressStateData? data) getListAddress,
    required TResult Function(AddressStateData? data) deleteShippingInforById,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressStateData? data)? initial,
    TResult? Function(AddressStateData? data)? status,
    TResult? Function(AddressStateData? data)? getError,
    TResult? Function(AddressStateData? data)? getListAddress,
    TResult? Function(AddressStateData? data)? deleteShippingInforById,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressStateData? data)? initial,
    TResult Function(AddressStateData? data)? status,
    TResult Function(AddressStateData? data)? getError,
    TResult Function(AddressStateData? data)? getListAddress,
    TResult Function(AddressStateData? data)? deleteShippingInforById,
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
    required TResult Function(GetListAddress value) getListAddress,
    required TResult Function(DeleteShippingInforById value)
        deleteShippingInforById,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetListAddress value)? getListAddress,
    TResult? Function(DeleteShippingInforById value)? deleteShippingInforById,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetListAddress value)? getListAddress,
    TResult Function(DeleteShippingInforById value)? deleteShippingInforById,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements AddressState {
  const factory GetError({final AddressStateData? data}) = _$GetError;

  @override
  AddressStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorCopyWith<_$GetError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetListAddressCopyWith<$Res>
    implements $AddressStateCopyWith<$Res> {
  factory _$$GetListAddressCopyWith(
          _$GetListAddress value, $Res Function(_$GetListAddress) then) =
      __$$GetListAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddressStateData? data});

  @override
  $AddressStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetListAddressCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$GetListAddress>
    implements _$$GetListAddressCopyWith<$Res> {
  __$$GetListAddressCopyWithImpl(
      _$GetListAddress _value, $Res Function(_$GetListAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetListAddress(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddressStateData?,
    ));
  }
}

/// @nodoc

class _$GetListAddress implements GetListAddress {
  const _$GetListAddress({this.data});

  @override
  final AddressStateData? data;

  @override
  String toString() {
    return 'AddressState.getListAddress(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetListAddress &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetListAddressCopyWith<_$GetListAddress> get copyWith =>
      __$$GetListAddressCopyWithImpl<_$GetListAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddressStateData? data) initial,
    required TResult Function(AddressStateData? data) status,
    required TResult Function(AddressStateData? data) getError,
    required TResult Function(AddressStateData? data) getListAddress,
    required TResult Function(AddressStateData? data) deleteShippingInforById,
  }) {
    return getListAddress(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressStateData? data)? initial,
    TResult? Function(AddressStateData? data)? status,
    TResult? Function(AddressStateData? data)? getError,
    TResult? Function(AddressStateData? data)? getListAddress,
    TResult? Function(AddressStateData? data)? deleteShippingInforById,
  }) {
    return getListAddress?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressStateData? data)? initial,
    TResult Function(AddressStateData? data)? status,
    TResult Function(AddressStateData? data)? getError,
    TResult Function(AddressStateData? data)? getListAddress,
    TResult Function(AddressStateData? data)? deleteShippingInforById,
    required TResult orElse(),
  }) {
    if (getListAddress != null) {
      return getListAddress(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetListAddress value) getListAddress,
    required TResult Function(DeleteShippingInforById value)
        deleteShippingInforById,
  }) {
    return getListAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetListAddress value)? getListAddress,
    TResult? Function(DeleteShippingInforById value)? deleteShippingInforById,
  }) {
    return getListAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetListAddress value)? getListAddress,
    TResult Function(DeleteShippingInforById value)? deleteShippingInforById,
    required TResult orElse(),
  }) {
    if (getListAddress != null) {
      return getListAddress(this);
    }
    return orElse();
  }
}

abstract class GetListAddress implements AddressState {
  const factory GetListAddress({final AddressStateData? data}) =
      _$GetListAddress;

  @override
  AddressStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetListAddressCopyWith<_$GetListAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteShippingInforByIdCopyWith<$Res>
    implements $AddressStateCopyWith<$Res> {
  factory _$$DeleteShippingInforByIdCopyWith(_$DeleteShippingInforById value,
          $Res Function(_$DeleteShippingInforById) then) =
      __$$DeleteShippingInforByIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AddressStateData? data});

  @override
  $AddressStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$DeleteShippingInforByIdCopyWithImpl<$Res>
    extends _$AddressStateCopyWithImpl<$Res, _$DeleteShippingInforById>
    implements _$$DeleteShippingInforByIdCopyWith<$Res> {
  __$$DeleteShippingInforByIdCopyWithImpl(_$DeleteShippingInforById _value,
      $Res Function(_$DeleteShippingInforById) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DeleteShippingInforById(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AddressStateData?,
    ));
  }
}

/// @nodoc

class _$DeleteShippingInforById implements DeleteShippingInforById {
  const _$DeleteShippingInforById({this.data});

  @override
  final AddressStateData? data;

  @override
  String toString() {
    return 'AddressState.deleteShippingInforById(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteShippingInforById &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteShippingInforByIdCopyWith<_$DeleteShippingInforById> get copyWith =>
      __$$DeleteShippingInforByIdCopyWithImpl<_$DeleteShippingInforById>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddressStateData? data) initial,
    required TResult Function(AddressStateData? data) status,
    required TResult Function(AddressStateData? data) getError,
    required TResult Function(AddressStateData? data) getListAddress,
    required TResult Function(AddressStateData? data) deleteShippingInforById,
  }) {
    return deleteShippingInforById(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressStateData? data)? initial,
    TResult? Function(AddressStateData? data)? status,
    TResult? Function(AddressStateData? data)? getError,
    TResult? Function(AddressStateData? data)? getListAddress,
    TResult? Function(AddressStateData? data)? deleteShippingInforById,
  }) {
    return deleteShippingInforById?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressStateData? data)? initial,
    TResult Function(AddressStateData? data)? status,
    TResult Function(AddressStateData? data)? getError,
    TResult Function(AddressStateData? data)? getListAddress,
    TResult Function(AddressStateData? data)? deleteShippingInforById,
    required TResult orElse(),
  }) {
    if (deleteShippingInforById != null) {
      return deleteShippingInforById(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetError value) getError,
    required TResult Function(GetListAddress value) getListAddress,
    required TResult Function(DeleteShippingInforById value)
        deleteShippingInforById,
  }) {
    return deleteShippingInforById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetListAddress value)? getListAddress,
    TResult? Function(DeleteShippingInforById value)? deleteShippingInforById,
  }) {
    return deleteShippingInforById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetError value)? getError,
    TResult Function(GetListAddress value)? getListAddress,
    TResult Function(DeleteShippingInforById value)? deleteShippingInforById,
    required TResult orElse(),
  }) {
    if (deleteShippingInforById != null) {
      return deleteShippingInforById(this);
    }
    return orElse();
  }
}

abstract class DeleteShippingInforById implements AddressState {
  const factory DeleteShippingInforById({final AddressStateData? data}) =
      _$DeleteShippingInforById;

  @override
  AddressStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$DeleteShippingInforByIdCopyWith<_$DeleteShippingInforById> get copyWith =>
      throw _privateConstructorUsedError;
}
