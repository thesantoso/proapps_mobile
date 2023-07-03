import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../layouts/electrict_period_layout.dart';

class ElectrictPeriodPage extends HookConsumerWidget {
  const ElectrictPeriodPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElectrictPeriodLayout(title: 'Electrict Period');
  }
}
