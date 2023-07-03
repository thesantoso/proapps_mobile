import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/models/login/login.dart';

final homeControllerNotifierProvider = StateNotifierProvider((ref) {
  return HomeControllerNotifier();
});

class HomeControllerNotifier extends StateNotifier {
  HomeControllerNotifier() : super(null);

  getUser() {
    final box = Hive.box<Login>("auth");
    final user = box.get("currentUser");

    return user;
  }
}
