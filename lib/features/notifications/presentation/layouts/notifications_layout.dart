import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotificationsLayout extends ConsumerWidget {
  const NotificationsLayout({
    super.key,
    required this.size,
    required this.title,
  });

  final Size size;
  final Widget title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: title,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        toolbarHeight: 50.0,
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: size.height,
          width: 500.0,
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: ListView(
            children: List.generate(
              3,
              (index) => const Card(
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text(
                    'New Regulation',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  contentPadding: EdgeInsets.all(10.0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
