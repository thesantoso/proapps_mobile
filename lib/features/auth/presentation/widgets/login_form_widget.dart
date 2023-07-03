import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/form_values/auth/login_values.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class LoginFormWidget extends HookConsumerWidget {
  const LoginFormWidget({super.key, required this.formValues});

  final Map<String, dynamic> formValues;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isVisibled = useState(false);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomTextFormField<String>(
          label: "Email",
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please fill the email field!";
            }

            return null;
          },
          onSaved: (newValue) => formValues[LoginValues.email.key] = newValue,
        ),
        CustomTextFormField<String>(
          label: "Password",
          obscureText: isVisibled.value ? false : true,
          suffixIcon: IconButton(
            onPressed: () {
              isVisibled.value = !isVisibled.value;
            },
            icon: isVisibled.value
                ? const Icon(Icons.visibility_off)
                : const Icon(Icons.visibility),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please fill the password field!";
            }

            return null;
          },
          onSaved: (newValue) =>
              formValues[LoginValues.password.key] = newValue,
        ),
      ],
    );
  }
}
