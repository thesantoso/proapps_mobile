import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/router/named_routes.dart';

import '../../../../core/models/items/items.dart';
import '../layouts/bills_layout.dart';

class BillsPage extends HookConsumerWidget {
  const BillsPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = [
      Item(
        title: "Electric Checker",
        image: "assets/icons/electricity-icon.png",
        url: NamedRoutes.electrictMeter.name,
      ),
      Item(
        title: "Water Checker",
        image: "assets/icons/water-icon.png",
        url: NamedRoutes.waterMeter.name,
      ),
    ];

    return BillsLayout(items: items);
  }
}
