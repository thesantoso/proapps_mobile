import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'core/models/unit_shorthand/unit_shorthand.dart';
import 'core/models/user/user.dart';
import 'package:url_strategy/url_strategy.dart';

import 'core/models/login/login.dart';
import 'core/router/go_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setPathUrlStrategy();

  // Hive
  await Hive.initFlutter();

  Hive.registerAdapter(LoginAdapter());
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(UnitShorthandAdapter());

  await Hive.openBox<Login>("auth");
  await Hive.openBox<User>("users");
  await Hive.openBox<UnitShorthand>("unit");

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: GoogleFonts.roboto().fontFamily,
      ),
      routerConfig: goRouter,
    );
  }
}
