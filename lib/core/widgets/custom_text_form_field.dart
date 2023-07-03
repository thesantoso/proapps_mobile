import 'package:flutter/material.dart';

class CustomTextFormField<T> extends FormField<T> {
  CustomTextFormField({
    super.key,
    T? initialValue,
    TextEditingController? controller,
    FormFieldValidator<T>? validator,
    FormFieldSetter<T>? onSaved,
    String? label,
    FocusNode? focusNode,
    bool? enabled,
    Widget? suffixIcon,
    bool obscureText = false,
    TextInputType? keyboardType,
    EdgeInsetsGeometry padding = const EdgeInsets.symmetric(
      vertical: 10,
    ),
  }) : super(
          initialValue: initialValue,
          validator: validator,
          onSaved: onSaved,
          builder: (FormFieldState<T> state) {
            if (state.hasError) {
              Text(state.errorText!);
            }

            return Padding(
              padding: padding,
              child: TextFormField(
                controller: controller,
                focusNode: focusNode,
                enabled: enabled,
                keyboardType: keyboardType,
                obscureText: obscureText,
                initialValue: initialValue as String?,
                validator: validator as String? Function(String?)?,
                decoration: InputDecoration(
                  labelText: label,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  suffixIcon: suffixIcon,
                ),
                onChanged: (value) {
                  state.didChange(value as T?);
                },
              ),
            );
          },
        );
}
