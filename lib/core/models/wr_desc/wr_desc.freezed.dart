// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wr_desc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WRDesc _$WRDescFromJson(Map<String, dynamic> json) {
  return _WRDesc.fromJson(json);
}

/// @nodoc
mixin _$WRDesc {
  @JsonKey(name: 'ID')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'work_request_id')
  int get wrID => throw _privateConstructorUsedError;
  @JsonKey(name: 'desc')
  String get desc => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WRDescCopyWith<WRDesc> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WRDescCopyWith<$Res> {
  factory $WRDescCopyWith(WRDesc value, $Res Function(WRDesc) then) =
      _$WRDescCopyWithImpl<$Res, WRDesc>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int id,
      @JsonKey(name: 'work_request_id') int wrID,
      @JsonKey(name: 'desc') String desc,
      int qty,
      double price});
}

/// @nodoc
class _$WRDescCopyWithImpl<$Res, $Val extends WRDesc>
    implements $WRDescCopyWith<$Res> {
  _$WRDescCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? wrID = null,
    Object? desc = null,
    Object? qty = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      wrID: null == wrID
          ? _value.wrID
          : wrID // ignore: cast_nullable_to_non_nullable
              as int,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WRDescCopyWith<$Res> implements $WRDescCopyWith<$Res> {
  factory _$$_WRDescCopyWith(_$_WRDesc value, $Res Function(_$_WRDesc) then) =
      __$$_WRDescCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ID') int id,
      @JsonKey(name: 'work_request_id') int wrID,
      @JsonKey(name: 'desc') String desc,
      int qty,
      double price});
}

/// @nodoc
class __$$_WRDescCopyWithImpl<$Res>
    extends _$WRDescCopyWithImpl<$Res, _$_WRDesc>
    implements _$$_WRDescCopyWith<$Res> {
  __$$_WRDescCopyWithImpl(_$_WRDesc _value, $Res Function(_$_WRDesc) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? wrID = null,
    Object? desc = null,
    Object? qty = null,
    Object? price = null,
  }) {
    return _then(_$_WRDesc(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      wrID: null == wrID
          ? _value.wrID
          : wrID // ignore: cast_nullable_to_non_nullable
              as int,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WRDesc with DiagnosticableTreeMixin implements _WRDesc {
  const _$_WRDesc(
      {@JsonKey(name: 'ID') required this.id,
      @JsonKey(name: 'work_request_id') required this.wrID,
      @JsonKey(name: 'desc') required this.desc,
      required this.qty,
      required this.price});

  factory _$_WRDesc.fromJson(Map<String, dynamic> json) =>
      _$$_WRDescFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int id;
  @override
  @JsonKey(name: 'work_request_id')
  final int wrID;
  @override
  @JsonKey(name: 'desc')
  final String desc;
  @override
  final int qty;
  @override
  final double price;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WRDesc(id: $id, wrID: $wrID, desc: $desc, qty: $qty, price: $price)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WRDesc'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('wrID', wrID))
      ..add(DiagnosticsProperty('desc', desc))
      ..add(DiagnosticsProperty('qty', qty))
      ..add(DiagnosticsProperty('price', price));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WRDesc &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.wrID, wrID) || other.wrID == wrID) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, wrID, desc, qty, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WRDescCopyWith<_$_WRDesc> get copyWith =>
      __$$_WRDescCopyWithImpl<_$_WRDesc>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WRDescToJson(
      this,
    );
  }
}

abstract class _WRDesc implements WRDesc {
  const factory _WRDesc(
      {@JsonKey(name: 'ID') required final int id,
      @JsonKey(name: 'work_request_id') required final int wrID,
      @JsonKey(name: 'desc') required final String desc,
      required final int qty,
      required final double price}) = _$_WRDesc;

  factory _WRDesc.fromJson(Map<String, dynamic> json) = _$_WRDesc.fromJson;

  @override
  @JsonKey(name: 'ID')
  int get id;
  @override
  @JsonKey(name: 'work_request_id')
  int get wrID;
  @override
  @JsonKey(name: 'desc')
  String get desc;
  @override
  int get qty;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$_WRDescCopyWith<_$_WRDesc> get copyWith =>
      throw _privateConstructorUsedError;
}
