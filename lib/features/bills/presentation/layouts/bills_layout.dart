import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:proapps_mobile/core/models/items/items.dart';

class BillsLayout extends ConsumerWidget {
  const BillsLayout({super.key, required this.items});

  final List<Item> items;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          'Bills',
          style: TextStyle(
            color: Colors.teal,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: List.generate(
            items.length,
            (index) => GestureDetector(
              onTap: () => context.pushNamed(items[index].url),
              child: Card(
                child: ListTile(
                  contentPadding: const EdgeInsets.all(10),
                  leading: Image.asset(
                    items[index].image,
                    height: 40,
                    width: 40,
                  ),
                  title: Text(items[index].title),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class BillsLayout extends ConsumerWidget {
//   const BillsLayout({
//     super.key,
//     required this.goRouter,
//     required this.title,
//     required this.size,
//   });

//   final GoRouter goRouter;
//   final Widget title;
//   final Size size;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () => goRouter.pop(),
//           icon: const Icon(
//             Icons.arrow_back_ios_new,
//             color: Colors.teal,
//           ),
//         ),
//         centerTitle: false,
//         title: title,
//         backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//         elevation: 0,
//       ),
//       body: Align(
//         alignment: Alignment.center,
//         child: Container(
//           height: size.height,
//           width: 500.0,
//           alignment: Alignment.center,
//           padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
//           child: ListView(
//             children: List.generate(
//               3,
//               (index) => const BillWidget(
//                 month: 'November 2023',
//                 totalBill: '20.000',
//                 isUtility: true,
//                 isPaid: true,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
