import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;

import '../../../../core/constants/base_url.dart';
import '../../../../core/models/login/login.dart';
import '../../../../core/models/unit_shorthand/unit_shorthand.dart';

final unitControllerNotifierProvider =
    StateNotifierProvider<UnitControllerNotifier, List<UnitShorthand>>((ref) {
  return UnitControllerNotifier();
});

class UnitControllerNotifier extends StateNotifier<List<UnitShorthand>> {
  UnitControllerNotifier() : super([]);

  getUser() {
    final box = Hive.box<Login>("auth");
    final user = box.get("currentUser");

    return user;
  }

  List<UnitShorthand> parsedUnitShorthand(response) {
    final parsed = jsonDecode(response);

    return parsed
        .map<UnitShorthand>((json) => UnitShorthand.fromJson(json))
        .toList();
  }

  Future<List<UnitShorthand>> getUnitShorthand({required int userID}) async {
    final response = await http.get(
      Uri.parse("$baseURL/authenticated/assign-units/users/$userID"),
      headers: {
        "Authorization": "Bearer ${getUser().accessToken}",
      },
    );

    return parsedUnitShorthand(response.body);
  }
}
