import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:proapps_mobile/core/constants/base_url.dart';
import 'package:result_type/result_type.dart';
import 'package:http/http.dart' as http;

import '../../../../core/models/login/login.dart';

final formControllerProvider =
    StateNotifierProvider<FormControllerNotifier, Login>((ref) {
  return FormControllerNotifier();
});

class FormControllerNotifier extends StateNotifier<Login> {
  FormControllerNotifier() : super(Login.empty());
  void _saveUser(Login res) {
    final box = Hive.box<Login>("auth");
    box.put("currentUser", res);
  }

  Future<Result<Login, String>> login(Map<String, dynamic> formValues) async {
    const header = {
      "Content-Type": "application/json",
    };

    final logged = await http.post(
      Uri.parse("$baseURL/login"),
      body: jsonEncode(formValues),
      headers: header,
    );

    final decodedBody = jsonDecode(logged.body);

    final res = Login.fromJson(decodedBody);

    if (res.isNotEmpty) {
      if (res.data!.roleId == "01" || res.data!.roleId == "02") {
        return Failure("You don't have access");
      }

      state = res.copyWith(data: res.data!.copyWith(isLogged: true));
    } else {
      return Failure("Something wrong between email or password!");
    }

    _saveUser(state);

    return Success(state);
  }
}
