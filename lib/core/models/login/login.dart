// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:proapps_mobile/core/models/user/user.dart';

part 'login.freezed.dart';
part 'login.g.dart';

@freezed
class Login extends HiveObject with _$Login {
  Login._();

  @HiveType(typeId: 1)
  factory Login({
    @HiveField(0) @JsonKey(name: "access_token") String? accessToken,
    @HiveField(1) @JsonKey(name: "data") User? data,
  }) = _Login;

  bool get isEmpty => this == Login.empty();

  bool get isNotEmpty => this != Login.empty();

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);

  factory Login.empty() => Login();
}
