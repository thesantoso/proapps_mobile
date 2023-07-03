// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_shorthand.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UnitShorthandAdapter extends TypeAdapter<_$_UnitShorthand> {
  @override
  final int typeId = 2;

  @override
  _$_UnitShorthand read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_UnitShorthand(
      assignUnitID: fields[0] as int,
      userID: fields[1] as int,
      unitID: fields[2] as int,
      name: fields[3] as String,
      unitNumber: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_UnitShorthand obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.assignUnitID)
      ..writeByte(1)
      ..write(obj.userID)
      ..writeByte(2)
      ..write(obj.unitID)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.unitNumber);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UnitShorthandAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UnitShorthand _$$_UnitShorthandFromJson(Map<String, dynamic> json) =>
    _$_UnitShorthand(
      assignUnitID: json['assign_unit_id'] as int,
      userID: json['user_id'] as int,
      unitID: json['unit_id'] as int,
      name: json['name'] as String,
      unitNumber: json['unit_number'] as String,
    );

Map<String, dynamic> _$$_UnitShorthandToJson(_$_UnitShorthand instance) =>
    <String, dynamic>{
      'assign_unit_id': instance.assignUnitID,
      'user_id': instance.userID,
      'unit_id': instance.unitID,
      'name': instance.name,
      'unit_number': instance.unitNumber,
    };
