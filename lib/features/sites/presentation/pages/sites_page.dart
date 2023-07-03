// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../../../../core/router/go_router.dart';
// import '../controller/sites_controller.dart';
// import '../layouts/sites_layout.dart';

// class SitesPage extends HookConsumerWidget {
//   const SitesPage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     Size size = MediaQuery.of(context).size;

//     // Provider
//     final goRouter = ref.watch(goRouterProvider);
//     final siteConn = ref.watch(sitesControllerProvider);

//     return SitesLayout(
//       siteController: siteConn,
//       size: size,
//       goRouter: goRouter,
//       title: const Text(
//         'Apartments',
//         style: TextStyle(
//           color: Colors.teal,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//     );
//   }
// }
