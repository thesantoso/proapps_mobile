import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../layouts/track_pkg_layout.dart';

class TrackPkgPage extends ConsumerWidget {
  const TrackPkgPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const TrackPkgLayout();
  }
}
