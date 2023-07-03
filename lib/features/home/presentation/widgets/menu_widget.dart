import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:proapps_mobile/core/router/named_routes.dart';

class MenuWidget extends ConsumerWidget {
  const MenuWidget({super.key, required this.goRouter});

  final GoRouter goRouter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () =>
                  goRouter.pushNamed(NamedRoutes.sites.name, extra: true),
              child: SizedBox(
                height: 170.0,
                width: 170.0,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.teal.withOpacity(0.2),
                              spreadRadius: 0.3,
                              blurRadius: 2,
                              offset: const Offset(2, 3),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 170.0,
                      width: 170.0,
                      child: Column(
                        children: [
                          Lottie.asset(
                            'assets/animations/wallet.json',
                            height: 123.0,
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'Bills',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 5.0,
        ),
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () =>
                  goRouter.pushNamed(NamedRoutes.sites.name, extra: false),
              child: SizedBox(
                height: 170.0,
                width: 170.0,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.teal.withOpacity(0.2),
                              spreadRadius: 0.3,
                              blurRadius: 2,
                              offset: const Offset(2, 3),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 170.0,
                      width: 170.0,
                      child: Column(
                        children: [
                          Lottie.asset(
                            'assets/animations/complaint.json',
                            height: 123.0,
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            'Complaints',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
