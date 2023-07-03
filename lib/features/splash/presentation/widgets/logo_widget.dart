import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LogoWidget extends ConsumerWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Styles
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      alignment: Alignment.center,
      child: Image.asset(
        'assets/logo/logo.png',
        width: 250.0,
        height: 250.0,
      ),
    );
  }
}
