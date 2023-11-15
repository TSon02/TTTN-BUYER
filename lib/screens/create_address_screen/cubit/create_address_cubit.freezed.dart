// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_address_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateAddressStateData {
  String get error => throw _privateConstructorUsedError;
  StatusType get status => throw _privateConstructorUsedError;
  CreateOrUpdateShippingInfoResponse? get response =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateAddressStateDataCopyWith<CreateAddressStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAddressStateDataCopyWith<$Res> {
  factory $CreateAddressStateDataCopyWith(CreateAddressStateData value,
          $Res Function(CreateAddressStateData) then) =
      _$CreateAddressStateDataCopyWithImpl<$Res, CreateAddressStateData>;
  @useResult
  $Res call(
      {String error,
      StatusType status,
      CreateOrUpdateShippingInfoResponse? response});
}

/// @nodoc
class _$CreateAddressStateDataCopyWithImpl<$Res,
        $Val extends CreateAddressStateData>
    implements $CreateAddressStateDataCopyWith<$Res> {
  _$CreateAddressStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? response = freezed,
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
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as CreateOrUpdateShippingInfoResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateAddressStateDataCopyWith<$Res>
    implements $CreateAddressStateDataCopyWith<$Res> {
  factory _$$_CreateAddressStateDataCopyWith(_$_CreateAddressStateData value,
          $Res Function(_$_CreateAddressStateData) then) =
      __$$_CreateAddressStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String error,
      StatusType status,
      CreateOrUpdateShippingInfoResponse? response});
}

/// @nodoc
class __$$_CreateAddressStateDataCopyWithImpl<$Res>
    extends _$CreateAddressStateDataCopyWithImpl<$Res,
        _$_CreateAddressStateData>
    implements _$$_CreateAddressStateDataCopyWith<$Res> {
  __$$_CreateAddressStateDataCopyWithImpl(_$_CreateAddressStateData _value,
      $Res Function(_$_CreateAddressStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? status = null,
    Object? response = freezed,
  }) {
    return _then(_$_CreateAddressStateData(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as CreateOrUpdateShippingInfoResponse?,
    ));
  }
}

/// @nodoc

class _$_CreateAddressStateData implements _CreateAddressStateData {
  const _$_CreateAddressStateData(
      {this.error = '', this.status = StatusType.init, this.response});

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final StatusType status;
  @override
  final CreateOrUpdateShippingInfoResponse? response;

  @override
  String toString() {
    return 'CreateAddressStateData(error: $error, status: $status, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateAddressStateData &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, status, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateAddressStateDataCopyWith<_$_CreateAddressStateData> get copyWith =>
      __$$_CreateAddressStateDataCopyWithImpl<_$_CreateAddressStateData>(
          this, _$identity);
}

abstract class _CreateAddressStateData implements CreateAddressStateData {
  const factory _CreateAddressStateData(
          {final String error,
          final StatusType status,
          final CreateOrUpdateShippingInfoResponse? response}) =
      _$_CreateAddressStateData;

  @override
  String get error;
  @override
  StatusType get status;
  @override
  CreateOrUpdateShippingInfoResponse? get response;
  @override
  @JsonKey(ignore: true)
  _$$_CreateAddressStateDataCopyWith<_$_CreateAddressStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateAddressState {
  CreateAddressStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateAddressStateData? data) initial,
    required TResult Function(CreateAddressStateData? data) getError,
    required TResult Function(CreateAddressStateData? data) getAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateAddressStateData? data)? initial,
    TResult? Function(CreateAddressStateData? data)? getError,
    TResult? Function(CreateAddressStateData? data)? getAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateAddressStateData? data)? initial,
    TResult Function(CreateAddressStateData? data)? getError,
    TResult Function(CreateAddressStateData? data)? getAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(GetAddress value) getAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetAddress value)? getAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(GetAddress value)? getAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateAddressStateCopyWith<CreateAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAddressStateCopyWith<$Res> {
  factory $CreateAddressStateCopyWith(
          CreateAddressState value, $Res Function(CreateAddressState) then) =
      _$CreateAddressStateCopyWithImpl<$Res, CreateAddressState>;
  @useResult
  $Res call({CreateAddressStateData? data});

  $CreateAddressStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreateAddressStateCopyWithImpl<$Res, $Val extends CreateAddressState>
    implements $CreateAddressStateCopyWith<$Res> {
  _$CreateAddressStateCopyWithImpl(this._value, this._then);

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
              as CreateAddressStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateAddressStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CreateAddressStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $CreateAddressStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateAddressStateData? data});

  @override
  $CreateAddressStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$CreateAddressStateCopyWithImpl<$Res, _$Initial>
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
              as CreateAddressStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final CreateAddressStateData? data;

  @override
  String toString() {
    return 'CreateAddressState.initial(data: $data)';
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
    required TResult Function(CreateAddressStateData? data) initial,
    required TResult Function(CreateAddressStateData? data) getError,
    required TResult Function(CreateAddressStateData? data) getAddress,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateAddressStateData? data)? initial,
    TResult? Function(CreateAddressStateData? data)? getError,
    TResult? Function(CreateAddressStateData? data)? getAddress,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateAddressStateData? data)? initial,
    TResult Function(CreateAddressStateData? data)? getError,
    TResult Function(CreateAddressStateData? data)? getAddress,
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
    required TResult Function(GetAddress value) getAddress,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetAddress value)? getAddress,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(GetAddress value)? getAddress,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements CreateAddressState {
  const factory Initial({final CreateAddressStateData? data}) = _$Initial;

  @override
  CreateAddressStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorCopyWith<$Res>
    implements $CreateAddressStateCopyWith<$Res> {
  factory _$$GetErrorCopyWith(
          _$GetError value, $Res Function(_$GetError) then) =
      __$$GetErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateAddressStateData? data});

  @override
  $CreateAddressStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetErrorCopyWithImpl<$Res>
    extends _$CreateAddressStateCopyWithImpl<$Res, _$GetError>
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
              as CreateAddressStateData?,
    ));
  }
}

/// @nodoc

class _$GetError implements GetError {
  const _$GetError({this.data});

  @override
  final CreateAddressStateData? data;

  @override
  String toString() {
    return 'CreateAddressState.getError(data: $data)';
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
    required TResult Function(CreateAddressStateData? data) initial,
    required TResult Function(CreateAddressStateData? data) getError,
    required TResult Function(CreateAddressStateData? data) getAddress,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateAddressStateData? data)? initial,
    TResult? Function(CreateAddressStateData? data)? getError,
    TResult? Function(CreateAddressStateData? data)? getAddress,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateAddressStateData? data)? initial,
    TResult Function(CreateAddressStateData? data)? getError,
    TResult Function(CreateAddressStateData? data)? getAddress,
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
    required TResult Function(GetAddress value) getAddress,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetAddress value)? getAddress,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(GetAddress value)? getAddress,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements CreateAddressState {
  const factory GetError({final CreateAddressStateData? data}) = _$GetError;

  @override
  CreateAddressStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorCopyWith<_$GetError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAddressCopyWith<$Res>
    implements $CreateAddressStateCopyWith<$Res> {
  factory _$$GetAddressCopyWith(
          _$GetAddress value, $Res Function(_$GetAddress) then) =
      __$$GetAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateAddressStateData? data});

  @override
  $CreateAddressStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetAddressCopyWithImpl<$Res>
    extends _$CreateAddressStateCopyWithImpl<$Res, _$GetAddress>
    implements _$$GetAddressCopyWith<$Res> {
  __$$GetAddressCopyWithImpl(
      _$GetAddress _value, $Res Function(_$GetAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetAddress(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CreateAddressStateData?,
    ));
  }
}

/// @nodoc

class _$GetAddress implements GetAddress {
  const _$GetAddress({this.data});

  @override
  final CreateAddressStateData? data;

  @override
  String toString() {
    return 'CreateAddressState.getAddress(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAddress &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAddressCopyWith<_$GetAddress> get copyWith =>
      __$$GetAddressCopyWithImpl<_$GetAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateAddressStateData? data) initial,
    required TResult Function(CreateAddressStateData? data) getError,
    required TResult Function(CreateAddressStateData? data) getAddress,
  }) {
    return getAddress(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateAddressStateData? data)? initial,
    TResult? Function(CreateAddressStateData? data)? getError,
    TResult? Function(CreateAddressStateData? data)? getAddress,
  }) {
    return getAddress?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateAddressStateData? data)? initial,
    TResult Function(CreateAddressStateData? data)? getError,
    TResult Function(CreateAddressStateData? data)? getAddress,
    required TResult orElse(),
  }) {
    if (getAddress != null) {
      return getAddress(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(GetAddress value) getAddress,
  }) {
    return getAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(GetAddress value)? getAddress,
  }) {
    return getAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(GetAddress value)? getAddress,
    required TResult orElse(),
  }) {
    if (getAddress != null) {
      return getAddress(this);
    }
    return orElse();
  }
}

abstract class GetAddress implements CreateAddressState {
  const factory GetAddress({final CreateAddressStateData? data}) = _$GetAddress;

  @override
  CreateAddressStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetAddressCopyWith<_$GetAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
