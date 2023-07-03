// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WR _$WRFromJson(Map<String, dynamic> json) {
  return _WR.fromJson(json);
}

/// @nodoc
mixin _$WR {
  @JsonKey(name: 'ID')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'wr_category_id')
  int get wrCategoryID => throw _privateConstructorUsedError;
  @JsonKey(name: 'wr_descs')
  List<WRDesc> get wrDescs => throw _privateConstructorUsedError;
  @JsonKey(name: 'assign_unit_id')
  int get assignUnitID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WRCopyWith<WR> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WRCopyWith<$Res> {
  factory $WRCopyWith(WR value, $Res Function(WR) then) =
      _$WRCopyWithImpl<$Res, WR>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int id,
      @JsonKey(name: 'wr_category_id') int wrCategoryID,
      @JsonKey(name: 'wr_descs') List<WRDesc> wrDescs,
      @JsonKey(name: 'assign_unit_id') int assignUnitID});
}

/// @nodoc
class _$WRCopyWithImpl<$Res, $Val extends WR> implements $WRCopyWith<$Res> {
  _$WRCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? wrCategoryID = null,
    Object? wrDescs = null,
    Object? assignUnitID = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      wrCategoryID: null == wrCategoryID
          ? _value.wrCategoryID
          : wrCategoryID // ignore: cast_nullable_to_non_nullable
              as int,
      wrDescs: null == wrDescs
          ? _value.wrDescs
          : wrDescs // ignore: cast_nullable_to_non_nullable
              as List<WRDesc>,
      assignUnitID: null == assignUnitID
          ? _value.assignUnitID
          : assignUnitID // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WRCopyWith<$Res> implements $WRCopyWith<$Res> {
  factory _$$_WRCopyWith(_$_WR value, $Res Function(_$_WR) then) =
      __$$_WRCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int id,
      @JsonKey(name: 'wr_category_id') int wrCategoryID,
      @JsonKey(name: 'wr_descs') List<WRDesc> wrDescs,
      @JsonKey(name: 'assign_unit_id') int assignUnitID});
}

/// @nodoc
class __$$_WRCopyWithImpl<$Res> extends _$WRCopyWithImpl<$Res, _$_WR>
    implements _$$_WRCopyWith<$Res> {
  __$$_WRCopyWithImpl(_$_WR _value, $Res Function(_$_WR) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? wrCategoryID = null,
    Object? wrDescs = null,
    Object? assignUnitID = null,
  }) {
    return _then(_$_WR(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      wrCategoryID: null == wrCategoryID
          ? _value.wrCategoryID
          : wrCategoryID // ignore: cast_nullable_to_non_nullable
              as int,
      wrDescs: null == wrDescs
          ? _value._wrDescs
          : wrDescs // ignore: cast_nullable_to_non_nullable
              as List<WRDesc>,
      assignUnitID: null == assignUnitID
          ? _value.assignUnitID
          : assignUnitID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WR with DiagnosticableTreeMixin implements _WR {
  const _$_WR(
      {@JsonKey(name: 'ID') required this.id,
      @JsonKey(name: 'wr_category_id') required this.wrCategoryID,
      @JsonKey(name: 'wr_descs') required final List<WRDesc> wrDescs,
      @JsonKey(name: 'assign_unit_id') required this.assignUnitID})
      : _wrDescs = wrDescs;

  factory _$_WR.fromJson(Map<String, dynamic> json) => _$$_WRFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int id;
  @override
  @JsonKey(name: 'wr_category_id')
  final int wrCategoryID;
  final List<WRDesc> _wrDescs;
  @override
  @JsonKey(name: 'wr_descs')
  List<WRDesc> get wrDescs {
    if (_wrDescs is EqualUnmodifiableListView) return _wrDescs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wrDescs);
  }

  @override
  @JsonKey(name: 'assign_unit_id')
  final int assignUnitID;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WR(id: $id, wrCategoryID: $wrCategoryID, wrDescs: $wrDescs, assignUnitID: $assignUnitID)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WR'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('wrCategoryID', wrCategoryID))
      ..add(DiagnosticsProperty('wrDescs', wrDescs))
      ..add(DiagnosticsProperty('assignUnitID', assignUnitID));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WR &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.wrCategoryID, wrCategoryID) ||
                other.wrCategoryID == wrCategoryID) &&
            const DeepCollectionEquality().equals(other._wrDescs, _wrDescs) &&
            (identical(other.assignUnitID, assignUnitID) ||
                other.assignUnitID == assignUnitID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, wrCategoryID,
      const DeepCollectionEquality().hash(_wrDescs), assignUnitID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WRCopyWith<_$_WR> get copyWith =>
      __$$_WRCopyWithImpl<_$_WR>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WRToJson(
      this,
    );
  }
}

abstract class _WR implements WR {
  const factory _WR(
          {@JsonKey(name: 'ID') required final int id,
          @JsonKey(name: 'wr_category_id') required final int wrCategoryID,
          @JsonKey(name: 'wr_descs') required final List<WRDesc> wrDescs,
          @JsonKey(name: 'assign_unit_id') required final int assignUnitID}) =
      _$_WR;

  factory _WR.fromJson(Map<String, dynamic> json) = _$_WR.fromJson;

  @override
  @JsonKey(name: 'ID')
  int get id;
  @override
  @JsonKey(name: 'wr_category_id')
  int get wrCategoryID;
  @override
  @JsonKey(name: 'wr_descs')
  List<WRDesc> get wrDescs;
  @override
  @JsonKey(name: 'assign_unit_id')
  int get assignUnitID;
  @override
  @JsonKey(ignore: true)
  _$$_WRCopyWith<_$_WR> get copyWith => throw _privateConstructorUsedError;
}
