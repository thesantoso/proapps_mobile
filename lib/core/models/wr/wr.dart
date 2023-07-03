import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../wr_desc/wr_desc.dart';

part 'wr.g.dart';
part 'wr.freezed.dart';

@freezed
class WR with _$WR {
  const factory WR({
    @JsonKey(name: 'ID') required int id,
    @JsonKey(name: 'wr_category_id') required int wrCategoryID,
    @JsonKey(name: 'wr_descs') required List<WRDesc> wrDescs,
    @JsonKey(name: 'assign_unit_id') required int assignUnitID,
  }) = _WR;

  factory WR.fromJson(Map<String, Object?> json) => _$WRFromJson(json);
}
