import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../layouts/news_layout.dart';

class NewsPage extends HookConsumerWidget {
  const NewsPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const NewsLayout();
  }
}
