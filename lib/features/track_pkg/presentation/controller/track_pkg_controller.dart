import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:proapps_mobile/core/constants/base_url.dart';
import 'package:proapps_mobile/core/models/pkg_shorthand/pkg_shorthand.dart';
import 'package:http/http.dart' as http;

import '../../../../core/models/login/login.dart';

final trackPackageControllerProvider =
    StateNotifierProvider<TrackPackageControllerNotifier, List<PkgShorthand>>(
        (ref) {
  return TrackPackageControllerNotifier();
});

class TrackPackageControllerNotifier extends StateNotifier<List<PkgShorthand>> {
  TrackPackageControllerNotifier() : super([]);

  getUser() {
    final box = Hive.box<Login>("auth");
    final user = box.get("currentUser");

    return user;
  }

  List<PkgShorthand> parsedPkgShorthand(response) {
    final parsed = jsonDecode(response);

    return parsed
        .map<PkgShorthand>((json) => PkgShorthand.fromJson(json))
        .toList();
  }

  Future<List<PkgShorthand>> getPkgShorthand(
      {required int assignUnitID}) async {
    final response = await http.get(
      Uri.parse(
          '$baseURL/authenticated/package-management/assign-unit/$assignUnitID'),
      headers: {
        "Authorization": "Bearer ${getUser().accessToken}",
      },
    );

    return parsedPkgShorthand(response.body);
  }
}
