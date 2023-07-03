import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:proapps_mobile/core/errors/snackbar.dart';
import '../../../../core/router/named_routes.dart';
import '../controller/form_controller.dart';
import '../widgets/login_form_widget.dart';

import '../widgets/button_widget.dart';

class LoginLayouts extends HookConsumerWidget {
  const LoginLayouts({
    super.key,
    required this.goRouter,
    required this.formKey,
    required this.formValues,
  });

  final GoRouter goRouter;
  final GlobalKey<FormState> formKey;
  final Map<String, dynamic> formValues;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final fromConn = ref.watch(formControllerProvider.notifier);

    final isLoading = useState(false);

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.center,
            child: Container(
              height: size.height,
              width: 500.0,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 250.0,
                      height: 150.0,
                      alignment: Alignment.center,
                      child: Image.asset('assets/logo/logo.png'),
                    ),
                    LoginFormWidget(formValues: formValues),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text('Forgot Password?'),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    ButtonWidget(
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          isLoading.value = true;
                          await Future.delayed(const Duration(seconds: 1));
                          formKey.currentState!.save();

                          await fromConn.login(formValues).then((data) {
                            if (data.isSuccess) {
                              if (data.success.isNotEmpty) {
                                context.goNamed(NamedRoutes.home.name);
                              } else {
                                context.showErrorSnackBar(
                                    message: data.failure);
                              }
                            } else {
                              context.showErrorSnackBar(message: data.failure);
                            }
                          }).then((_) => isLoading.value = false);
                        }
                      },
                      child: isLoading.value
                          ? LoadingAnimationWidget.halfTriangleDot(
                              color: Colors.white,
                              size: 24,
                            )
                          : const Text('Login'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
