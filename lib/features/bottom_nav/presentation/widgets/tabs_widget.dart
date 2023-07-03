import 'package:flutter/material.dart';

import '../../../../core/router/named_routes.dart';
import 'items_widget.dart';

final tabsWidget = <BottomNavItemWidget>[
  BottomNavItemWidget(
    initialLocation: NamedRoutes.home.path,
    icon: const Icon(Icons.home),
    label: 'Home',
  ),
  BottomNavItemWidget(
    initialLocation: NamedRoutes.notifications.path,
    icon: const Icon(Icons.notifications),
    label: 'Notifications',
  ),
  BottomNavItemWidget(
    initialLocation: NamedRoutes.profile.path,
    icon: const Icon(Icons.person),
    label: 'Profile',
  ),
];
