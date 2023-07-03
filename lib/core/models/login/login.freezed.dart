// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Login _$LoginFromJson(Map<String, dynamic> json) {
  return _Login.fromJson(json);
}

/// @nodoc
mixin _$Login {
  @HiveField(0)
  @JsonKey(name: "access_token")
  String? get accessToken => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: "data")
  User? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginCopyWith<Login> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCopyWith<$Res> {
  factory $LoginCopyWith(Login value, $Res Function(Login) then) =
      _$LoginCopyWithImpl<$Res, Login>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: "access_token") String? accessToken,
      @HiveField(1) @JsonKey(name: "data") User? data});

  $UserCopyWith<$Res>? get data;
}

/// @nodoc
class _$LoginCopyWithImpl<$Res, $Val extends Login>
    implements $LoginCopyWith<$Res> {
  _$LoginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginCopyWith<$Res> implements $LoginCopyWith<$Res> {
  factory _$$_LoginCopyWith(_$_Login value, $Res Function(_$_Login) then) =
      __$$_LoginCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: "access_token") String? accessToken,
      @HiveField(1) @JsonKey(name: "data") User? data});

  @override
  $UserCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_LoginCopyWithImpl<$Res> extends _$LoginCopyWithImpl<$Res, _$_Login>
    implements _$$_LoginCopyWith<$Res> {
  __$$_LoginCopyWithImpl(_$_Login _value, $Res Function(_$_Login) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_Login(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1)
class _$_Login extends _Login {
  _$_Login(
      {@HiveField(0) @JsonKey(name: "access_token") this.accessToken,
      @HiveField(1) @JsonKey(name: "data") this.data})
      : super._();

  factory _$_Login.fromJson(Map<String, dynamic> json) =>
      _$$_LoginFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: "access_token")
  final String? accessToken;
  @override
  @HiveField(1)
  @JsonKey(name: "data")
  final User? data;

  @override
  String toString() {
    return 'Login(accessToken: $accessToken, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Login &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      __$$_LoginCopyWithImpl<_$_Login>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginToJson(
      this,
    );
  }
}

abstract class _Login extends Login {
  factory _Login(
      {@HiveField(0) @JsonKey(name: "access_token") final String? accessToken,
      @HiveField(1) @JsonKey(name: "data") final User? data}) = _$_Login;
  _Login._() : super._();

  factory _Login.fromJson(Map<String, dynamic> json) = _$_Login.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: "access_token")
  String? get accessToken;
  @override
  @HiveField(1)
  @JsonKey(name: "data")
  User? get data;
  @override
  @JsonKey(ignore: true)
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      throw _privateConstructorUsedError;
}
