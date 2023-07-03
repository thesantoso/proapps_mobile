// ignore_for_file: invalid_annotation_target

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pkg_shorthand.freezed.dart';
part 'pkg_shorthand.g.dart';

@freezed
class PkgShorthand with _$PkgShorthand {
  const factory PkgShorthand({
    @JsonKey(name: "assign_unit_id") required int assignUnitId,
    @JsonKey(name: "pkg_id") required int pkgId,
    required String tenant,
    @JsonKey(name: "unit_number") required String unitNumber,
    required String floor,
    @JsonKey(name: "img_url") required String imgUrl,
    @JsonKey(name: "received_at") String? receivedAt,
    @JsonKey(name: "picked_up_at") String? pickedUpAt,
    String? recipient,
    required String status,
  }) = _PkgShorthand;

  const PkgShorthand._();

  factory PkgShorthand.empty() => const PkgShorthand(
        assignUnitId: 0,
        pkgId: 0,
        tenant: "",
        unitNumber: "",
        floor: "",
        imgUrl: "",
        receivedAt: "",
        pickedUpAt: "",
        recipient: "",
        status: "",
      );

  factory PkgShorthand.fromJson(Map<String, dynamic> json) =>
      _$PkgShorthandFromJson(json);
}
