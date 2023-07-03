import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/router/go_router.dart';
import '../layouts/units_layout.dart';

class UnitsPage extends HookConsumerWidget {
  const UnitsPage({super.key, required this.isBill});

  final bool isBill;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;
    final goRouter = ref.watch(goRouterProvider);

    return UnitsLayout(
      size: size,
      goRouter: goRouter,
      title: const Text(
        'Units',
        style: TextStyle(
          color: Colors.teal,
          fontWeight: FontWeight.bold,
        ),
      ),
      isBill: isBill,
    );
  }
}
