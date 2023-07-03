// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_shorthand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UnitShorthand _$UnitShorthandFromJson(Map<String, dynamic> json) {
  return _UnitShorthand.fromJson(json);
}

/// @nodoc
mixin _$UnitShorthand {
  @HiveField(0)
  @JsonKey(name: 'assign_unit_id')
  int get assignUnitID => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'user_id')
  int get userID => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'unit_id')
  int get unitID => throw _privateConstructorUsedError;
  @HiveField(3)
  String get name => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'unit_number')
  String get unitNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitShorthandCopyWith<UnitShorthand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitShorthandCopyWith<$Res> {
  factory $UnitShorthandCopyWith(
          UnitShorthand value, $Res Function(UnitShorthand) then) =
      _$UnitShorthandCopyWithImpl<$Res, UnitShorthand>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'assign_unit_id') int assignUnitID,
      @HiveField(1) @JsonKey(name: 'user_id') int userID,
      @HiveField(2) @JsonKey(name: 'unit_id') int unitID,
      @HiveField(3) String name,
      @HiveField(4) @JsonKey(name: 'unit_number') String unitNumber});
}

/// @nodoc
class _$UnitShorthandCopyWithImpl<$Res, $Val extends UnitShorthand>
    implements $UnitShorthandCopyWith<$Res> {
  _$UnitShorthandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignUnitID = null,
    Object? userID = null,
    Object? unitID = null,
    Object? name = null,
    Object? unitNumber = null,
  }) {
    return _then(_value.copyWith(
      assignUnitID: null == assignUnitID
          ? _value.assignUnitID
          : assignUnitID // ignore: cast_nullable_to_non_nullable
              as int,
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int,
      unitID: null == unitID
          ? _value.unitID
          : unitID // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unitNumber: null == unitNumber
          ? _value.unitNumber
          : unitNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UnitShorthandCopyWith<$Res>
    implements $UnitShorthandCopyWith<$Res> {
  factory _$$_UnitShorthandCopyWith(
          _$_UnitShorthand value, $Res Function(_$_UnitShorthand) then) =
      __$$_UnitShorthandCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'assign_unit_id') int assignUnitID,
      @HiveField(1) @JsonKey(name: 'user_id') int userID,
      @HiveField(2) @JsonKey(name: 'unit_id') int unitID,
      @HiveField(3) String name,
      @HiveField(4) @JsonKey(name: 'unit_number') String unitNumber});
}

/// @nodoc
class __$$_UnitShorthandCopyWithImpl<$Res>
    extends _$UnitShorthandCopyWithImpl<$Res, _$_UnitShorthand>
    implements _$$_UnitShorthandCopyWith<$Res> {
  __$$_UnitShorthandCopyWithImpl(
      _$_UnitShorthand _value, $Res Function(_$_UnitShorthand) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assignUnitID = null,
    Object? userID = null,
    Object? unitID = null,
    Object? name = null,
    Object? unitNumber = null,
  }) {
    return _then(_$_UnitShorthand(
      assignUnitID: null == assignUnitID
          ? _value.assignUnitID
          : assignUnitID // ignore: cast_nullable_to_non_nullable
              as int,
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as int,
      unitID: null == unitID
          ? _value.unitID
          : unitID // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      unitNumber: null == unitNumber
          ? _value.unitNumber
          : unitNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 2)
class _$_UnitShorthand extends _UnitShorthand with DiagnosticableTreeMixin {
  _$_UnitShorthand(
      {@HiveField(0)
      @JsonKey(name: 'assign_unit_id')
          required this.assignUnitID,
      @HiveField(1)
      @JsonKey(name: 'user_id')
          required this.userID,
      @HiveField(2)
      @JsonKey(name: 'unit_id')
          required this.unitID,
      @HiveField(3)
          required this.name,
      @HiveField(4)
      @JsonKey(name: 'unit_number')
          required this.unitNumber})
      : super._();

  factory _$_UnitShorthand.fromJson(Map<String, dynamic> json) =>
      _$$_UnitShorthandFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'assign_unit_id')
  final int assignUnitID;
  @override
  @HiveField(1)
  @JsonKey(name: 'user_id')
  final int userID;
  @override
  @HiveField(2)
  @JsonKey(name: 'unit_id')
  final int unitID;
  @override
  @HiveField(3)
  final String name;
  @override
  @HiveField(4)
  @JsonKey(name: 'unit_number')
  final String unitNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UnitShorthand(assignUnitID: $assignUnitID, userID: $userID, unitID: $unitID, name: $name, unitNumber: $unitNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UnitShorthand'))
      ..add(DiagnosticsProperty('assignUnitID', assignUnitID))
      ..add(DiagnosticsProperty('userID', userID))
      ..add(DiagnosticsProperty('unitID', unitID))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('unitNumber', unitNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnitShorthand &&
            (identical(other.assignUnitID, assignUnitID) ||
                other.assignUnitID == assignUnitID) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.unitID, unitID) || other.unitID == unitID) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.unitNumber, unitNumber) ||
                other.unitNumber == unitNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, assignUnitID, userID, unitID, name, unitNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnitShorthandCopyWith<_$_UnitShorthand> get copyWith =>
      __$$_UnitShorthandCopyWithImpl<_$_UnitShorthand>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnitShorthandToJson(
      this,
    );
  }
}

abstract class _UnitShorthand extends UnitShorthand {
  factory _UnitShorthand(
      {@HiveField(0)
      @JsonKey(name: 'assign_unit_id')
          required final int assignUnitID,
      @HiveField(1)
      @JsonKey(name: 'user_id')
          required final int userID,
      @HiveField(2)
      @JsonKey(name: 'unit_id')
          required final int unitID,
      @HiveField(3)
          required final String name,
      @HiveField(4)
      @JsonKey(name: 'unit_number')
          required final String unitNumber}) = _$_UnitShorthand;
  _UnitShorthand._() : super._();

  factory _UnitShorthand.fromJson(Map<String, dynamic> json) =
      _$_UnitShorthand.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'assign_unit_id')
  int get assignUnitID;
  @override
  @HiveField(1)
  @JsonKey(name: 'user_id')
  int get userID;
  @override
  @HiveField(2)
  @JsonKey(name: 'unit_id')
  int get unitID;
  @override
  @HiveField(3)
  String get name;
  @override
  @HiveField(4)
  @JsonKey(name: 'unit_number')
  String get unitNumber;
  @override
  @JsonKey(ignore: true)
  _$$_UnitShorthandCopyWith<_$_UnitShorthand> get copyWith =>
      throw _privateConstructorUsedError;
}
