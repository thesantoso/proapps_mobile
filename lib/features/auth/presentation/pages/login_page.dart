import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:proapps_mobile/core/router/go_router.dart';

import '../layouts/login_layout.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    Map<String, dynamic> formValues = {};

    return LoginLayouts(
      formKey: formKey,
      goRouter: goRouter,
      formValues: formValues,
    );
  }
}
