import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../layouts/complaints_layout.dart';

class ComplaintsPage extends HookConsumerWidget {
  const ComplaintsPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const ComplaintsLayout();
  }
}