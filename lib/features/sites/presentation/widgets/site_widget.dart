import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/router/named_routes.dart';

class SiteWidget extends ConsumerWidget {
  const SiteWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.isBill,
    required this.goRouter,
  });

  final Widget? title;
  final Widget? subtitle;
  final bool isBill;
  final GoRouter goRouter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: ListTile(
        onTap: () => goRouter.pushNamed(NamedRoutes.units.name, extra: isBill),
        leading: const CircleAvatar(
          child: Icon(
            Icons.apartment,
            color: Colors.white,
          ),
        ),
        title: title,
        subtitle: subtitle,
      ),
    );
  }
}
