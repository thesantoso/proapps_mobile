// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WR _$$_WRFromJson(Map<String, dynamic> json) => _$_WR(
      id: json['ID'] as int,
      wrCategoryID: json['wr_category_id'] as int,
      wrDescs: (json['wr_descs'] as List<dynamic>)
          .map((e) => WRDesc.fromJson(e as Map<String, dynamic>))
          .toList(),
      assignUnitID: json['assign_unit_id'] as int,
    );

Map<String, dynamic> _$$_WRToJson(_$_WR instance) => <String, dynamic>{
      'ID': instance.id,
      'wr_category_id': instance.wrCategoryID,
      'wr_descs': instance.wrDescs,
      'assign_unit_id': instance.assignUnitID,
    };
