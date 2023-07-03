import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../layouts/work_request_layout.dart';

class WorkRequestPage extends ConsumerWidget {
  const WorkRequestPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const WorkRequestLayout();
  }
}
