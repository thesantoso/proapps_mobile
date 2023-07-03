// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pkg_shorthand.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PkgShorthand _$$_PkgShorthandFromJson(Map<String, dynamic> json) =>
    _$_PkgShorthand(
      assignUnitId: json['assign_unit_id'] as int,
      pkgId: json['pkg_id'] as int,
      tenant: json['tenant'] as String,
      unitNumber: json['unit_number'] as String,
      floor: json['floor'] as String,
      imgUrl: json['img_url'] as String,
      receivedAt: json['received_at'] as String?,
      pickedUpAt: json['picked_up_at'] as String?,
      recipient: json['recipient'] as String?,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_PkgShorthandToJson(_$_PkgShorthand instance) =>
    <String, dynamic>{
      'assign_unit_id': instance.assignUnitId,
      'pkg_id': instance.pkgId,
      'tenant': instance.tenant,
      'unit_number': instance.unitNumber,
      'floor': instance.floor,
      'img_url': instance.imgUrl,
      'received_at': instance.receivedAt,
      'picked_up_at': instance.pickedUpAt,
      'recipient': instance.recipient,
      'status': instance.status,
    };
