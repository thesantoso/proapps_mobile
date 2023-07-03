import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:proapps_mobile/core/models/items/items.dart';
import 'package:proapps_mobile/core/router/named_routes.dart';

import '../layouts/help_desk_layout.dart';

class HelpDeskPage extends ConsumerWidget {
  const HelpDeskPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Item> items = [
      Item(
        title: "Work Request",
        image: "assets/icons/hd-icon.png",
        url: NamedRoutes.workRequest.name,
      ),
      Item(
        title: "Work Order",
        image: "assets/icons/wo-icon.png",
        url: NamedRoutes.workOrder.name,
      ),
      // Item(
      //   title: "GIGO",
      //   image: "",
      //   url: NamedRoutes.gigo.name,
      // ),
    ];
    return HelpDeskLayout(items: items);
  }
}
