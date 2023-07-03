import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../layouts/wr_add_layout.dart';

class WorkRequestAddPage extends ConsumerWidget {
  const WorkRequestAddPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const WorkRequestAddLayout();
  }
}
