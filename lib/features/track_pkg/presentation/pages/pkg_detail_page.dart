import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:proapps_mobile/core/models/pkg_shorthand/pkg_shorthand.dart';
import '../layouts/pkg_detail_layout.dart';

class PkgDetailPage extends ConsumerWidget {
  const PkgDetailPage({super.key, required this.item});

  final PkgShorthand item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PkgDetailLayout(item: item);
  }
}
