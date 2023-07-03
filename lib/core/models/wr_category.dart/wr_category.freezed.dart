// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wr_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WRCategory _$WRCategoryFromJson(Map<String, dynamic> json) {
  return _WRCategory.fromJson(json);
}

/// @nodoc
mixin _$WRCategory {
  @JsonKey(name: 'ID')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get categoryName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WRCategoryCopyWith<WRCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WRCategoryCopyWith<$Res> {
  factory $WRCategoryCopyWith(
          WRCategory value, $Res Function(WRCategory) then) =
      _$WRCategoryCopyWithImpl<$Res, WRCategory>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int id,
      @JsonKey(name: 'name') String categoryName});
}

/// @nodoc
class _$WRCategoryCopyWithImpl<$Res, $Val extends WRCategory>
    implements $WRCategoryCopyWith<$Res> {
  _$WRCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WRCategoryCopyWith<$Res>
    implements $WRCategoryCopyWith<$Res> {
  factory _$$_WRCategoryCopyWith(
          _$_WRCategory value, $Res Function(_$_WRCategory) then) =
      __$$_WRCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int id,
      @JsonKey(name: 'name') String categoryName});
}

/// @nodoc
class __$$_WRCategoryCopyWithImpl<$Res>
    extends _$WRCategoryCopyWithImpl<$Res, _$_WRCategory>
    implements _$$_WRCategoryCopyWith<$Res> {
  __$$_WRCategoryCopyWithImpl(
      _$_WRCategory _value, $Res Function(_$_WRCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryName = null,
  }) {
    return _then(_$_WRCategory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WRCategory with DiagnosticableTreeMixin implements _WRCategory {
  const _$_WRCategory(
      {@JsonKey(name: 'ID') required this.id,
      @JsonKey(name: 'name') required this.categoryName});

  factory _$_WRCategory.fromJson(Map<String, dynamic> json) =>
      _$$_WRCategoryFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String categoryName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WRCategory(id: $id, categoryName: $categoryName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WRCategory'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('categoryName', categoryName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WRCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, categoryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WRCategoryCopyWith<_$_WRCategory> get copyWith =>
      __$$_WRCategoryCopyWithImpl<_$_WRCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WRCategoryToJson(
      this,
    );
  }
}

abstract class _WRCategory implements WRCategory {
  const factory _WRCategory(
          {@JsonKey(name: 'ID') required final int id,
          @JsonKey(name: 'name') required final String categoryName}) =
      _$_WRCategory;

  factory _WRCategory.fromJson(Map<String, dynamic> json) =
      _$_WRCategory.fromJson;

  @override
  @JsonKey(name: 'ID')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get categoryName;
  @override
  @JsonKey(ignore: true)
  _$$_WRCategoryCopyWith<_$_WRCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
