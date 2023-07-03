import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets/tabs_widget.dart';

class BottomNavLayout extends ConsumerStatefulWidget {
  const BottomNavLayout({super.key, required this.child});

  final Widget child;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BottomNavLayoutState();
}

class _BottomNavLayoutState extends ConsumerState<BottomNavLayout> {
  int _locationToTabIndex(String location) {
    final index =
        tabsWidget.indexWhere((t) => location.startsWith(t.initialLocation));

    return index < 0 ? 0 : index;
  }

  int get _currentIndex => _locationToTabIndex(GoRouter.of(context).location);

  void _onItemTapped(BuildContext context, int tabIndex) {
    if (tabIndex != _currentIndex) {
      context.go(tabsWidget[tabIndex].initialLocation);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          selectedIconTheme: const IconThemeData(
            color: Colors.teal,
          ),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          items: tabsWidget,
          onTap: (index) => _onItemTapped(context, index),
        ),
      ),
    );
  }
}
