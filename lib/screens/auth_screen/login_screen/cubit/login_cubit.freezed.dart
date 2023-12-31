// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginStateData {
  String get error => throw _privateConstructorUsedError;
  LoginResponse? get response => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateDataCopyWith<LoginStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateDataCopyWith<$Res> {
  factory $LoginStateDataCopyWith(
          LoginStateData value, $Res Function(LoginStateData) then) =
      _$LoginStateDataCopyWithImpl<$Res, LoginStateData>;
  @useResult
  $Res call({String error, LoginResponse? response});
}

/// @nodoc
class _$LoginStateDataCopyWithImpl<$Res, $Val extends LoginStateData>
    implements $LoginStateDataCopyWith<$Res> {
  _$LoginStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as LoginResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginStateDataCopyWith<$Res>
    implements $LoginStateDataCopyWith<$Res> {
  factory _$$_LoginStateDataCopyWith(
          _$_LoginStateData value, $Res Function(_$_LoginStateData) then) =
      __$$_LoginStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, LoginResponse? response});
}

/// @nodoc
class __$$_LoginStateDataCopyWithImpl<$Res>
    extends _$LoginStateDataCopyWithImpl<$Res, _$_LoginStateData>
    implements _$$_LoginStateDataCopyWith<$Res> {
  __$$_LoginStateDataCopyWithImpl(
      _$_LoginStateData _value, $Res Function(_$_LoginStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? response = freezed,
  }) {
    return _then(_$_LoginStateData(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as LoginResponse?,
    ));
  }
}

/// @nodoc

class _$_LoginStateData implements _LoginStateData {
  const _$_LoginStateData({this.error = '', this.response});

  @override
  @JsonKey()
  final String error;
  @override
  final LoginResponse? response;

  @override
  String toString() {
    return 'LoginStateData(error: $error, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginStateData &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateDataCopyWith<_$_LoginStateData> get copyWith =>
      __$$_LoginStateDataCopyWithImpl<_$_LoginStateData>(this, _$identity);
}

abstract class _LoginStateData implements LoginStateData {
  const factory _LoginStateData(
      {final String error, final LoginResponse? response}) = _$_LoginStateData;

  @override
  String get error;
  @override
  LoginResponse? get response;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateDataCopyWith<_$_LoginStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  LoginStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginStateData? data) initial,
    required TResult Function(LoginStateData? data) getError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginStateData? data)? initial,
    TResult? Function(LoginStateData? data)? getError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginStateData? data)? initial,
    TResult Function(LoginStateData? data)? getError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call({LoginStateData? data});

  $LoginStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

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
              as LoginStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LoginStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginStateData? data});

  @override
  $LoginStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$Initial>
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
              as LoginStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final LoginStateData? data;

  @override
  String toString() {
    return 'LoginState.initial(data: $data)';
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
    required TResult Function(LoginStateData? data) initial,
    required TResult Function(LoginStateData? data) getError,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginStateData? data)? initial,
    TResult? Function(LoginStateData? data)? getError,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginStateData? data)? initial,
    TResult Function(LoginStateData? data)? getError,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements LoginState {
  const factory Initial({final LoginStateData? data}) = _$Initial;

  @override
  LoginStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$$GetErrorCopyWith(
          _$GetError value, $Res Function(_$GetError) then) =
      __$$GetErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginStateData? data});

  @override
  $LoginStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetErrorCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$GetError>
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
              as LoginStateData?,
    ));
  }
}

/// @nodoc

class _$GetError implements GetError {
  const _$GetError({this.data});

  @override
  final LoginStateData? data;

  @override
  String toString() {
    return 'LoginState.getError(data: $data)';
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
    required TResult Function(LoginStateData? data) initial,
    required TResult Function(LoginStateData? data) getError,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginStateData? data)? initial,
    TResult? Function(LoginStateData? data)? getError,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginStateData? data)? initial,
    TResult Function(LoginStateData? data)? getError,
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
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements LoginState {
  const factory GetError({final LoginStateData? data}) = _$GetError;

  @override
  LoginStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorCopyWith<_$GetError> get copyWith =>
      throw _privateConstructorUsedError;
}
