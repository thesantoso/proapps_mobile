// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LoginAdapter extends TypeAdapter<_$_Login> {
  @override
  final int typeId = 1;

  @override
  _$_Login read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Login(
      accessToken: fields[0] as String?,
      data: fields[1] as User?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Login obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.accessToken)
      ..writeByte(1)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LoginAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Login _$$_LoginFromJson(Map<String, dynamic> json) => _$_Login(
      accessToken: json['access_token'] as String?,
      data: json['data'] == null
          ? null
          : User.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoginToJson(_$_Login instance) => <String, dynamic>{
      'access_token': instance.accessToken,
      'data': instance.data,
    };
