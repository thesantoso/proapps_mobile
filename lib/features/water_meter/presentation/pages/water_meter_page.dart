import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../layouts/water_meter_layout.dart';

class WaterMeterPage extends ConsumerWidget {
  const WaterMeterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const WaterMeterLayout();
  }
}
