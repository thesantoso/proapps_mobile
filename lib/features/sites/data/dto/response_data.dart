import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_data.freezed.dart';
part 'response_data.g.dart';

@freezed
class ResponseData with _$ResponseData {
  const factory ResponseData({
    required dynamic data,
  }) = _ResponseData;

  factory ResponseData.fromJson(Map<String, Object?> json) =>
      _$ResponseDataFromJson(json);
}
