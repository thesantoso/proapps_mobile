import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../layouts/bottom_nav_layout.dart';

class BottomNavPage extends ConsumerWidget {
  const BottomNavPage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomNavLayout(child: child);
  }
}
