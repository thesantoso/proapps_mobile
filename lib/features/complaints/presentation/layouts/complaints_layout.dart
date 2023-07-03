import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ComplaintsLayout extends ConsumerWidget {
  const ComplaintsLayout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Text(
        'Complaints',
        textAlign: TextAlign.center,
      ),
    );
  }
}
