import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wr_desc.g.dart';
part 'wr_desc.freezed.dart';

@freezed
class WRDesc with _$WRDesc {
  const factory WRDesc({
    @JsonKey(name: 'ID') required int id,
    @JsonKey(name: 'work_request_id') required int wrID,
    @JsonKey(name: 'desc') required String desc,
    required int qty,
    required double price,
  }) = _WRDesc;

  factory WRDesc.fromJson(Map<String, Object?> json) => _$WRDescFromJson(json);
}
