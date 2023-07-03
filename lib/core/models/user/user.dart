import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User extends HiveObject with _$User {
  User._();

  @HiveType(typeId: 0)
  factory User({
    @HiveField(0) @JsonKey(name: "ID") int? id,
    @HiveField(1) @JsonKey(name: "name") String? name,
    @HiveField(2) @JsonKey(name: "email") String? email,
    @HiveField(4) @JsonKey(name: "role_id") String? roleId,
    @HiveField(5) @JsonKey(name: "created_at") String? createdAt,
    @HiveField(6, defaultValue: false) @Default(false) bool isLogged,
    @HiveField(7) @JsonKey(name: "updated_at") String? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);

  bool get isEmpty => this == User.empty();

  bool get isNotEmpty => this != User.empty();

  factory User.empty() => User();
}
