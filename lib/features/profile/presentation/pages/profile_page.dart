import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:proapps_mobile/features/profile/presentation/controller/profile_controller.dart';

import '../layouts/profile_layout.dart';

class ProfilePage extends HookConsumerWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(profileControllerProvider.notifier);

    return ProfileLayout(user: user.getCurrentUser());
  }
}
