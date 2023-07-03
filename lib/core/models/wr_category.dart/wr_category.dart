import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wr_category.g.dart';
part 'wr_category.freezed.dart';

@freezed
class WRCategory with _$WRCategory {
  const factory WRCategory({
    @JsonKey(name: 'ID') required int id,
    @JsonKey(name: 'name') required String categoryName,
  }) = _WRCategory;

  factory WRCategory.fromJson(Map<String, Object?> json) =>
      _$WRCategoryFromJson(json);
}
