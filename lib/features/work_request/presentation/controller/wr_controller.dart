import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:proapps_mobile/core/constants/base_url.dart';
import 'package:proapps_mobile/core/models/wr/wr.dart';
import 'package:proapps_mobile/core/models/wr_category.dart/wr_category.dart';

import '../../../../core/models/login/login.dart';

import 'package:http/http.dart' as http;

final wrControllerProvider = StateNotifierProvider((ref) {
  return WRControllerNotifier();
});

class WRControllerNotifier extends StateNotifier {
  WRControllerNotifier() : super(null);

  getUser() {
    final box = Hive.box<Login>("auth");
    final user = box.get("currentUser");

    return user;
  }

  Future<List<WRCategory>> getWRCategory() async {
    final response = await http.get(
      Uri.parse(
        "$baseURL/authenticated/wr-categories",
      ),
      headers: {
        "Authorization": "Bearer ${getUser().accessToken}",
      },
    );

    final parsed = jsonDecode(response.body)['data'];

    return parsed.map<WRCategory>((json) => WRCategory.fromJson(json)).toList();
  }

  Future<bool> createWR(WR wr) async {
    final response = await http.post(
      Uri.parse(
        "$baseURL/authenticated/work-requests",
      ),
      body: wr.toJson(),
      headers: {
        "Authorization": "Bearer ${getUser().accessToken}",
      },
    );

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
