import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../layouts/electrict_add_layout.dart';

class ElectrictAddPage extends ConsumerWidget {
  const ElectrictAddPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElectrictAddLayout();
  }
}