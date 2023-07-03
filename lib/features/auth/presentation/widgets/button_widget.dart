import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ButtonWidget extends ConsumerWidget {
  const ButtonWidget({
    super.key,
    required this.child,
    required this.onPressed,
  });

  final Widget? child;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.teal,
        fixedSize: Size(size.width, 56.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      child: child,
    );
  }
}
