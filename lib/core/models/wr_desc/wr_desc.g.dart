// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wr_desc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WRDesc _$$_WRDescFromJson(Map<String, dynamic> json) => _$_WRDesc(
      id: json['ID'] as int,
      wrID: json['work_request_id'] as int,
      desc: json['desc'] as String,
      qty: json['qty'] as int,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$_WRDescToJson(_$_WRDesc instance) => <String, dynamic>{
      'ID': instance.id,
      'work_request_id': instance.wrID,
      'desc': instance.desc,
      'qty': instance.qty,
      'price': instance.price,
    };
