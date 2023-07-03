import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/router/named_routes.dart';
import '../provider/unit_provider.dart';

class UnitsLayout extends ConsumerWidget {
  const UnitsLayout({
    super.key,
    required this.size,
    required this.goRouter,
    required this.title,
    required this.isBill,
  });

  final Size size;
  final GoRouter goRouter;
  final Widget title;
  final bool isBill;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unitShorthand = ref.watch(unitShorthandProvider);
    
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
      body: unitShorthand.when(
        data: (data) {
          return ListView(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            children: List.generate(
              data.length,
              (index) {
                return GestureDetector(
                  onTap: () =>
                      context.pushNamed(NamedRoutes.trackPkgDetail.name),
                  child: Card(
                    child: ListTile(
                      title: Text(
                        "Unit ${data[index].unitNumber}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
        error: (error, stack) {
          return Center(
            child: Text(error.toString()),
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
