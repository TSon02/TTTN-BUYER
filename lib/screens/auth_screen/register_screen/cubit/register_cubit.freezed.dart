// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterStateData {
  String get error => throw _privateConstructorUsedError;
  bool get createAdmin => throw _privateConstructorUsedError;
  bool get rules => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateDataCopyWith<RegisterStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateDataCopyWith<$Res> {
  factory $RegisterStateDataCopyWith(
          RegisterStateData value, $Res Function(RegisterStateData) then) =
      _$RegisterStateDataCopyWithImpl<$Res, RegisterStateData>;
  @useResult
  $Res call({String error, bool createAdmin, bool rules});
}

/// @nodoc
class _$RegisterStateDataCopyWithImpl<$Res, $Val extends RegisterStateData>
    implements $RegisterStateDataCopyWith<$Res> {
  _$RegisterStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? createAdmin = null,
    Object? rules = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      createAdmin: null == createAdmin
          ? _value.createAdmin
          : createAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      rules: null == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegisterStateDataCopyWith<$Res>
    implements $RegisterStateDataCopyWith<$Res> {
  factory _$$_RegisterStateDataCopyWith(_$_RegisterStateData value,
          $Res Function(_$_RegisterStateData) then) =
      __$$_RegisterStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error, bool createAdmin, bool rules});
}

/// @nodoc
class __$$_RegisterStateDataCopyWithImpl<$Res>
    extends _$RegisterStateDataCopyWithImpl<$Res, _$_RegisterStateData>
    implements _$$_RegisterStateDataCopyWith<$Res> {
  __$$_RegisterStateDataCopyWithImpl(
      _$_RegisterStateData _value, $Res Function(_$_RegisterStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? createAdmin = null,
    Object? rules = null,
  }) {
    return _then(_$_RegisterStateData(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      createAdmin: null == createAdmin
          ? _value.createAdmin
          : createAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      rules: null == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RegisterStateData implements _RegisterStateData {
  const _$_RegisterStateData(
      {this.error = '', this.createAdmin = false, this.rules = false});

  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final bool createAdmin;
  @override
  @JsonKey()
  final bool rules;

  @override
  String toString() {
    return 'RegisterStateData(error: $error, createAdmin: $createAdmin, rules: $rules)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterStateData &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.createAdmin, createAdmin) ||
                other.createAdmin == createAdmin) &&
            (identical(other.rules, rules) || other.rules == rules));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, createAdmin, rules);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterStateDataCopyWith<_$_RegisterStateData> get copyWith =>
      __$$_RegisterStateDataCopyWithImpl<_$_RegisterStateData>(
          this, _$identity);
}

abstract class _RegisterStateData implements RegisterStateData {
  const factory _RegisterStateData(
      {final String error,
      final bool createAdmin,
      final bool rules}) = _$_RegisterStateData;

  @override
  String get error;
  @override
  bool get createAdmin;
  @override
  bool get rules;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterStateDataCopyWith<_$_RegisterStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegisterState {
  RegisterStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterStateData? data) initial,
    required TResult Function(RegisterStateData? data) getError,
    required TResult Function(RegisterStateData? data) createAdmin,
    required TResult Function(RegisterStateData? data) rules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterStateData? data)? initial,
    TResult? Function(RegisterStateData? data)? getError,
    TResult? Function(RegisterStateData? data)? createAdmin,
    TResult? Function(RegisterStateData? data)? rules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterStateData? data)? initial,
    TResult Function(RegisterStateData? data)? getError,
    TResult Function(RegisterStateData? data)? createAdmin,
    TResult Function(RegisterStateData? data)? rules,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(CreateAdmin value) createAdmin,
    required TResult Function(Rules value) rules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(CreateAdmin value)? createAdmin,
    TResult? Function(Rules value)? rules,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(CreateAdmin value)? createAdmin,
    TResult Function(Rules value)? rules,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call({RegisterStateData? data});

  $RegisterStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

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
              as RegisterStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $RegisterStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisterStateData? data});

  @override
  $RegisterStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$Initial>
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
              as RegisterStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final RegisterStateData? data;

  @override
  String toString() {
    return 'RegisterState.initial(data: $data)';
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
    required TResult Function(RegisterStateData? data) initial,
    required TResult Function(RegisterStateData? data) getError,
    required TResult Function(RegisterStateData? data) createAdmin,
    required TResult Function(RegisterStateData? data) rules,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterStateData? data)? initial,
    TResult? Function(RegisterStateData? data)? getError,
    TResult? Function(RegisterStateData? data)? createAdmin,
    TResult? Function(RegisterStateData? data)? rules,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterStateData? data)? initial,
    TResult Function(RegisterStateData? data)? getError,
    TResult Function(RegisterStateData? data)? createAdmin,
    TResult Function(RegisterStateData? data)? rules,
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
    required TResult Function(CreateAdmin value) createAdmin,
    required TResult Function(Rules value) rules,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(CreateAdmin value)? createAdmin,
    TResult? Function(Rules value)? rules,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(CreateAdmin value)? createAdmin,
    TResult Function(Rules value)? rules,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements RegisterState {
  const factory Initial({final RegisterStateData? data}) = _$Initial;

  @override
  RegisterStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetErrorCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$GetErrorCopyWith(
          _$GetError value, $Res Function(_$GetError) then) =
      __$$GetErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisterStateData? data});

  @override
  $RegisterStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetErrorCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$GetError>
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
              as RegisterStateData?,
    ));
  }
}

/// @nodoc

class _$GetError implements GetError {
  const _$GetError({this.data});

  @override
  final RegisterStateData? data;

  @override
  String toString() {
    return 'RegisterState.getError(data: $data)';
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
    required TResult Function(RegisterStateData? data) initial,
    required TResult Function(RegisterStateData? data) getError,
    required TResult Function(RegisterStateData? data) createAdmin,
    required TResult Function(RegisterStateData? data) rules,
  }) {
    return getError(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterStateData? data)? initial,
    TResult? Function(RegisterStateData? data)? getError,
    TResult? Function(RegisterStateData? data)? createAdmin,
    TResult? Function(RegisterStateData? data)? rules,
  }) {
    return getError?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterStateData? data)? initial,
    TResult Function(RegisterStateData? data)? getError,
    TResult Function(RegisterStateData? data)? createAdmin,
    TResult Function(RegisterStateData? data)? rules,
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
    required TResult Function(CreateAdmin value) createAdmin,
    required TResult Function(Rules value) rules,
  }) {
    return getError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(CreateAdmin value)? createAdmin,
    TResult? Function(Rules value)? rules,
  }) {
    return getError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(CreateAdmin value)? createAdmin,
    TResult Function(Rules value)? rules,
    required TResult orElse(),
  }) {
    if (getError != null) {
      return getError(this);
    }
    return orElse();
  }
}

abstract class GetError implements RegisterState {
  const factory GetError({final RegisterStateData? data}) = _$GetError;

  @override
  RegisterStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetErrorCopyWith<_$GetError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateAdminCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$CreateAdminCopyWith(
          _$CreateAdmin value, $Res Function(_$CreateAdmin) then) =
      __$$CreateAdminCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisterStateData? data});

  @override
  $RegisterStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CreateAdminCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$CreateAdmin>
    implements _$$CreateAdminCopyWith<$Res> {
  __$$CreateAdminCopyWithImpl(
      _$CreateAdmin _value, $Res Function(_$CreateAdmin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$CreateAdmin(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RegisterStateData?,
    ));
  }
}

/// @nodoc

class _$CreateAdmin implements CreateAdmin {
  const _$CreateAdmin({this.data});

  @override
  final RegisterStateData? data;

  @override
  String toString() {
    return 'RegisterState.createAdmin(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAdmin &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAdminCopyWith<_$CreateAdmin> get copyWith =>
      __$$CreateAdminCopyWithImpl<_$CreateAdmin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterStateData? data) initial,
    required TResult Function(RegisterStateData? data) getError,
    required TResult Function(RegisterStateData? data) createAdmin,
    required TResult Function(RegisterStateData? data) rules,
  }) {
    return createAdmin(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterStateData? data)? initial,
    TResult? Function(RegisterStateData? data)? getError,
    TResult? Function(RegisterStateData? data)? createAdmin,
    TResult? Function(RegisterStateData? data)? rules,
  }) {
    return createAdmin?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterStateData? data)? initial,
    TResult Function(RegisterStateData? data)? getError,
    TResult Function(RegisterStateData? data)? createAdmin,
    TResult Function(RegisterStateData? data)? rules,
    required TResult orElse(),
  }) {
    if (createAdmin != null) {
      return createAdmin(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(CreateAdmin value) createAdmin,
    required TResult Function(Rules value) rules,
  }) {
    return createAdmin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(CreateAdmin value)? createAdmin,
    TResult? Function(Rules value)? rules,
  }) {
    return createAdmin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(CreateAdmin value)? createAdmin,
    TResult Function(Rules value)? rules,
    required TResult orElse(),
  }) {
    if (createAdmin != null) {
      return createAdmin(this);
    }
    return orElse();
  }
}

abstract class CreateAdmin implements RegisterState {
  const factory CreateAdmin({final RegisterStateData? data}) = _$CreateAdmin;

  @override
  RegisterStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$CreateAdminCopyWith<_$CreateAdmin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RulesCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$$RulesCopyWith(_$Rules value, $Res Function(_$Rules) then) =
      __$$RulesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisterStateData? data});

  @override
  $RegisterStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$RulesCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$Rules>
    implements _$$RulesCopyWith<$Res> {
  __$$RulesCopyWithImpl(_$Rules _value, $Res Function(_$Rules) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Rules(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as RegisterStateData?,
    ));
  }
}

/// @nodoc

class _$Rules implements Rules {
  const _$Rules({this.data});

  @override
  final RegisterStateData? data;

  @override
  String toString() {
    return 'RegisterState.rules(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Rules &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RulesCopyWith<_$Rules> get copyWith =>
      __$$RulesCopyWithImpl<_$Rules>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterStateData? data) initial,
    required TResult Function(RegisterStateData? data) getError,
    required TResult Function(RegisterStateData? data) createAdmin,
    required TResult Function(RegisterStateData? data) rules,
  }) {
    return rules(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(RegisterStateData? data)? initial,
    TResult? Function(RegisterStateData? data)? getError,
    TResult? Function(RegisterStateData? data)? createAdmin,
    TResult? Function(RegisterStateData? data)? rules,
  }) {
    return rules?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterStateData? data)? initial,
    TResult Function(RegisterStateData? data)? getError,
    TResult Function(RegisterStateData? data)? createAdmin,
    TResult Function(RegisterStateData? data)? rules,
    required TResult orElse(),
  }) {
    if (rules != null) {
      return rules(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetError value) getError,
    required TResult Function(CreateAdmin value) createAdmin,
    required TResult Function(Rules value) rules,
  }) {
    return rules(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetError value)? getError,
    TResult? Function(CreateAdmin value)? createAdmin,
    TResult? Function(Rules value)? rules,
  }) {
    return rules?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetError value)? getError,
    TResult Function(CreateAdmin value)? createAdmin,
    TResult Function(Rules value)? rules,
    required TResult orElse(),
  }) {
    if (rules != null) {
      return rules(this);
    }
    return orElse();
  }
}

abstract class Rules implements RegisterState {
  const factory Rules({final RegisterStateData? data}) = _$Rules;

  @override
  RegisterStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$RulesCopyWith<_$Rules> get copyWith => throw _privateConstructorUsedError;
}
