import 'package:flutter/material.dart';

class BottomNavItemWidget extends BottomNavigationBarItem {
  const BottomNavItemWidget(
      {required this.initialLocation, required Widget icon, String? label})
      : super(icon: icon, label: label);

  final String initialLocation;
}
