import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../layouts/work_order_layout.dart';

class WorkOrderPage extends ConsumerWidget {
  const WorkOrderPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const WorkOrderLayout();
  }
}
