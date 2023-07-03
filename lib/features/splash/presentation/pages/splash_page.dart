import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:proapps_mobile/core/models/login/login.dart';

import '../../../../core/router/go_router.dart';
import '../../../../core/router/named_routes.dart';
import '../widgets/logo_widget.dart';

class SplashPage extends HookConsumerWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      Timer(const Duration(seconds: 2), () {
        // Provider
        final routes = ref.watch(goRouterProvider);
        final box = Hive.box<Login>("auth");

        final user = box.get("currentUser");

        if (user != null) {
          routes.goNamed(NamedRoutes.home.name);
          return;
        }

        routes.goNamed(NamedRoutes.login.name);
      });

      return null;
    });

    return const Scaffold(
      body: LogoWidget(),
    );
  }
}
