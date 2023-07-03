import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:proapps_mobile/core/models/login/login.dart';
import 'package:proapps_mobile/core/models/user/user.dart';

final profileControllerProvider = StateNotifierProvider((ref) {
  return ProfileControllerNotifier();
});

class ProfileControllerNotifier extends StateNotifier {
  ProfileControllerNotifier() : super(null);

  User getCurrentUser() {
    final box = Hive.box<Login>("auth");
    return box.get("currentUser")!.data!;
  }

  void logOut() {
    final box = Hive.box<Login>("auth");
    box.delete("currentUser");
  }
}
