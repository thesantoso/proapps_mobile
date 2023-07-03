import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:proapps_mobile/core/router/go_router.dart';

import '../../../../core/router/named_routes.dart';
import '../../models/menu.dart';
import '../layouts/home_layout.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;

    final engMenu = [
      Menu(
          title: "Electrict Meters",
          icon: "assets/icons/electricity-icon.png",
          route: NamedRoutes.ePeriod.name),
      Menu(
          title: "Water Meters",
          icon: "assets/icons/water-icon.png",
          route: NamedRoutes.bills.name),
      Menu(
          title: "Maintenance",
          icon: "assets/icons/water-icon.png",
          route: NamedRoutes.bills.name),
    ];

    final tenantMenu = [
      Menu(
          title: "Bills",
          icon: "assets/icons/bills-icon.png",
          route: NamedRoutes.bills.name),
      Menu(
          title: "Help Desk",
          icon: "assets/icons/hd-icon.png",
          route: NamedRoutes.helpDesk.name),
      Menu(
          title: "Track Pkg",
          icon: "assets/icons/pkg-icon.png",
          route: NamedRoutes.trackPkg.name),
    ];

    List<Widget> menus(List data) {
      return List.generate(
        data.length,
        (index) => Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () => context.pushNamed(data[index].route),
            child: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Container(
                margin: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(1, 5),
                      blurRadius: 10,
                      color: Colors.black.withOpacity(0.02),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      data[index].icon,
                      height: 40,
                      width: 40,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      data[index].title,
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }

    // Provider
    final goRouter = ref.watch(goRouterProvider);

    return HomeLayout(
      size: size,
      goRouter: goRouter,
      tenantMenus: menus(tenantMenu),
      engMenus: menus(engMenu),
    );
  }
}
