import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'unit_shorthand.g.dart';
part 'unit_shorthand.freezed.dart';

@freezed
class UnitShorthand extends HiveObject with _$UnitShorthand {
  UnitShorthand._();

  @HiveType(typeId: 2)
  factory UnitShorthand({
    @HiveField(0) @JsonKey(name: 'assign_unit_id') required int assignUnitID,
    @HiveField(1) @JsonKey(name: 'user_id') required int userID,
    @HiveField(2) @JsonKey(name: 'unit_id') required int unitID,
    @HiveField(3) required String name,
    @HiveField(4) @JsonKey(name: 'unit_number') required String unitNumber,
  }) = _UnitShorthand;

  factory UnitShorthand.fromJson(Map<String, Object?> json) =>
      _$UnitShorthandFromJson(json);
}
