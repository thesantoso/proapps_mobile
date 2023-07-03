import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/router/named_routes.dart';
import '../provider/track_pkg_provider.dart';

class TrackPkgLayout extends HookConsumerWidget {
  const TrackPkgLayout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pkgShorthand = ref.watch(trackPkgProvider(1));

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.teal,
          ),
        ),
        centerTitle: false,
        title: const Text(
          'Track Packages',
          style: TextStyle(
            color: Colors.teal,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: pkgShorthand.when(
        data: (data) {
          return ListView(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            children: List.generate(
              data.length,
              (index) {
                return GestureDetector(
                  onTap: () => context.pushNamed(
                    NamedRoutes.trackPkgDetail.name,
                    extra: data[index],
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      title: Text(
                        DateFormat('dd-MM-yyyy HH:mm').format(
                          DateTime.parse(
                            data[index].pickedUpAt != null
                                ? data[index].pickedUpAt!
                                : data[index].receivedAt!,
                          ).toLocal(),
                        ),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      trailing: Text(
                        data[index].status,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: data[index].status.toString() == 'PICKED UP'
                              ? Colors.teal
                              : data[index].status.toString() == 'RECEIVED'
                                  ? Colors.orange
                                  : Colors.grey,
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
