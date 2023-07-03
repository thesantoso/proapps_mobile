import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../layouts/notifications_layout.dart';

class NotificationsPage extends HookConsumerWidget {
  const NotificationsPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;

    return NotificationsLayout(
      size: size,
      title: const Text(
        'Notifications',
        style: TextStyle(
          color: Colors.teal,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
