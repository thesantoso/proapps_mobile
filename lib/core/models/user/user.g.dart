// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<_$_User> {
  @override
  final int typeId = 0;

  @override
  _$_User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_User(
      id: fields[0] as int?,
      name: fields[1] as String?,
      email: fields[2] as String?,
      roleId: fields[4] as String?,
      createdAt: fields[5] as String?,
      isLogged: fields[6] == null ? false : fields[6] as bool,
      updatedAt: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_User obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.roleId)
      ..writeByte(5)
      ..write(obj.createdAt)
      ..writeByte(6)
      ..write(obj.isLogged)
      ..writeByte(7)
      ..write(obj.updatedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['ID'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      roleId: json['role_id'] as String?,
      createdAt: json['created_at'] as String?,
      isLogged: json['isLogged'] as bool? ?? false,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'ID': instance.id,
      'name': instance.name,
      'email': instance.email,
      'role_id': instance.roleId,
      'created_at': instance.createdAt,
      'isLogged': instance.isLogged,
      'updated_at': instance.updatedAt,
    };
