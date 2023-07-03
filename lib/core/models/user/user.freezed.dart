// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @HiveField(0)
  @JsonKey(name: "ID")
  int? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: "role_id")
  String? get roleId => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @HiveField(6, defaultValue: false)
  bool get isLogged => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: "ID") int? id,
      @HiveField(1) @JsonKey(name: "name") String? name,
      @HiveField(2) @JsonKey(name: "email") String? email,
      @HiveField(4) @JsonKey(name: "role_id") String? roleId,
      @HiveField(5) @JsonKey(name: "created_at") String? createdAt,
      @HiveField(6, defaultValue: false) bool isLogged,
      @HiveField(7) @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? roleId = freezed,
    Object? createdAt = freezed,
    Object? isLogged = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isLogged: null == isLogged
          ? _value.isLogged
          : isLogged // ignore: cast_nullable_to_non_nullable
              as bool,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: "ID") int? id,
      @HiveField(1) @JsonKey(name: "name") String? name,
      @HiveField(2) @JsonKey(name: "email") String? email,
      @HiveField(4) @JsonKey(name: "role_id") String? roleId,
      @HiveField(5) @JsonKey(name: "created_at") String? createdAt,
      @HiveField(6, defaultValue: false) bool isLogged,
      @HiveField(7) @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? roleId = freezed,
    Object? createdAt = freezed,
    Object? isLogged = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_User(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isLogged: null == isLogged
          ? _value.isLogged
          : isLogged // ignore: cast_nullable_to_non_nullable
              as bool,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$_User extends _User with DiagnosticableTreeMixin {
  _$_User(
      {@HiveField(0) @JsonKey(name: "ID") this.id,
      @HiveField(1) @JsonKey(name: "name") this.name,
      @HiveField(2) @JsonKey(name: "email") this.email,
      @HiveField(4) @JsonKey(name: "role_id") this.roleId,
      @HiveField(5) @JsonKey(name: "created_at") this.createdAt,
      @HiveField(6, defaultValue: false) this.isLogged = false,
      @HiveField(7) @JsonKey(name: "updated_at") this.updatedAt})
      : super._();

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: "ID")
  final int? id;
  @override
  @HiveField(1)
  @JsonKey(name: "name")
  final String? name;
  @override
  @HiveField(2)
  @JsonKey(name: "email")
  final String? email;
  @override
  @HiveField(4)
  @JsonKey(name: "role_id")
  final String? roleId;
  @override
  @HiveField(5)
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey()
  @HiveField(6, defaultValue: false)
  final bool isLogged;
  @override
  @HiveField(7)
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, name: $name, email: $email, roleId: $roleId, createdAt: $createdAt, isLogged: $isLogged, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('roleId', roleId))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('isLogged', isLogged))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.roleId, roleId) || other.roleId == roleId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isLogged, isLogged) ||
                other.isLogged == isLogged) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, email, roleId, createdAt, isLogged, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User extends User {
  factory _User(
          {@HiveField(0) @JsonKey(name: "ID") final int? id,
          @HiveField(1) @JsonKey(name: "name") final String? name,
          @HiveField(2) @JsonKey(name: "email") final String? email,
          @HiveField(4) @JsonKey(name: "role_id") final String? roleId,
          @HiveField(5) @JsonKey(name: "created_at") final String? createdAt,
          @HiveField(6, defaultValue: false) final bool isLogged,
          @HiveField(7) @JsonKey(name: "updated_at") final String? updatedAt}) =
      _$_User;
  _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: "ID")
  int? get id;
  @override
  @HiveField(1)
  @JsonKey(name: "name")
  String? get name;
  @override
  @HiveField(2)
  @JsonKey(name: "email")
  String? get email;
  @override
  @HiveField(4)
  @JsonKey(name: "role_id")
  String? get roleId;
  @override
  @HiveField(5)
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @HiveField(6, defaultValue: false)
  bool get isLogged;
  @override
  @HiveField(7)
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
