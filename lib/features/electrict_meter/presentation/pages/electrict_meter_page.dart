import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../layouts/electrict_meter_layout.dart';

class ElectrictMeterPage extends ConsumerWidget {
  const ElectrictMeterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElectrictMeterLayout();
  }
}