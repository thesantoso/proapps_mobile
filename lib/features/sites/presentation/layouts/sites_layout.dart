import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets/site_widget.dart';

class SitesLayout extends ConsumerWidget {
  const SitesLayout({
    super.key,
    required this.siteController,
    required this.size,
    required this.goRouter,
    required this.title,
  });

  final Object? siteController;
  final Size size;
  final GoRouter goRouter;
  final Widget title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => goRouter.pop(),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.teal,
          ),
        ),
        centerTitle: false,
        title: title,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: size.height,
          width: 500.0,
          alignment: Alignment.center,
          child: ListView(
            children: List.generate(
              3,
              (index) => SiteWidget(
                goRouter: goRouter,
                title: const Text('Park Royale'),
                subtitle: const Text('Total Unit : 3'),
                isBill: true,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
