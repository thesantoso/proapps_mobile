import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/models/user/user.dart';
import '../../../../core/router/named_routes.dart';
import '../controller/profile_controller.dart';

class ProfileLayout extends ConsumerWidget {
  const ProfileLayout({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Container(
            height: size.height,
            width: 500.0,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            alignment: Alignment.center,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: size.width,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    child: Row(
                      children: [
                        const Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: CircleAvatar(
                              child: Icon(Icons.person),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Text(
                                    user.name!,
                                    style: const TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                                Text(
                                  user.email!,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    height: size.height,
                    width: size.width,
                    alignment: Alignment.centerLeft,
                    child: ListView(
                      children: ListTile.divideTiles(
                        context: context,
                        tiles: [
                          const ListTile(
                            title: Text('Profile User'),
                            trailing: Icon(
                              Icons.person,
                              color: Colors.teal,
                            ),
                          ),
                          ListTile(
                            onTap: () {
                              print('Change Password');
                            },
                            title: const Text('Change Password'),
                            trailing: const Icon(
                              Icons.privacy_tip_rounded,
                              color: Colors.teal,
                            ),
                          ),
                          ListTile(
                            onTap: () {},
                            title: const Text('Terms & Service'),
                            trailing: const Icon(
                              Icons.policy_rounded,
                              color: Colors.teal,
                            ),
                          ),
                          ListTile(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: const Text(
                                    "Are you sure wan't to logout?",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () => context.pop(),
                                      child: const Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        ref
                                            .watch(profileControllerProvider
                                                .notifier)
                                            .logOut();
                                        context.goNamed(NamedRoutes.login.name);
                                      },
                                      child: const Text(
                                        'Logout',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            tileColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            title: const Text(
                              'Logout',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
