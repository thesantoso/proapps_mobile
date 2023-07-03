import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/models/items/items.dart';

class HelpDeskLayout extends ConsumerWidget {
  const HelpDeskLayout({super.key, required this.items});

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
          'Help Desk',
          style: TextStyle(
            color: Colors.teal,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
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
