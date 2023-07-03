import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:proapps_mobile/core/models/unit_shorthand/unit_shorthand.dart';
import 'package:proapps_mobile/core/router/named_routes.dart';
import 'package:proapps_mobile/features/units/presentation/controller/unit_controller.dart';

import '../controller/home_controller.dart';

class HomeLayout extends HookConsumerWidget {
  const HomeLayout({
    super.key,
    required this.size,
    required this.goRouter,
    required this.tenantMenus,
    required this.engMenus,
  });

  final Size size;
  final GoRouter goRouter;
  final List<Widget> tenantMenus;
  final List<Widget> engMenus;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeConn = ref.watch(homeControllerNotifierProvider.notifier);
    final unitConn = ref.watch(unitControllerNotifierProvider.notifier);
    final units = unitConn.getUnitShorthand(userID: homeConn.getUser().data.id);
    final unitsState = useState<List<UnitShorthand>>([]);
    final unitState = useState<int>(0);

    useEffect(() {
      units.then((value) {
        unitState.value = value[0].unitID;
        return unitsState.value = value;
      });

      return null;
    });

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 120,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Image.asset(
            'assets/logo/logo.png',
            width: 100,
            height: 100,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.teal,
                child: IconButton(
                  onPressed: () => context.pushNamed(NamedRoutes.profile.name),
                  icon: const Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
        centerTitle: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        toolbarHeight: 50.0,
      ),
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: Container(
            height: size.height,
            width: 500.0,
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(
                  child: SizedBox(height: 20),
                ),
                const SliverToBoxAdapter(
                  child: Text(
                    'Unit',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 10),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 5.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(1, 5),
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.02),
                        ),
                      ],
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        items: unitsState.value
                            .map(
                              (data) => DropdownMenuItem(
                                value: data.unitID,
                                child: Text(data.unitNumber),
                              ),
                            )
                            .toList(),
                        onChanged: (value) => unitState.value = value!,
                        isExpanded: true,
                        value: unitState.value,
                        borderRadius: BorderRadius.circular(8.0),
                        elevation: 1,
                        alignment: AlignmentDirectional.topEnd,
                      ),
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 20),
                ),
                const SliverToBoxAdapter(
                  child: Text(
                    'Menu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 10),
                ),
                SliverToBoxAdapter(
                  child: Container(
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: homeConn.getUser().data.roleId == "05"
                          ? tenantMenus
                          : homeConn.getUser().data.roleId == "04"
                              ? engMenus
                              : [],
                    ),
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 10),
                ),
                const SliverToBoxAdapter(
                  child: Divider(),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(height: 10),
                ),
                const SliverToBoxAdapter(
                  child: Text(
                    'Indoland News',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SliverFillRemaining(
                  fillOverscroll: true,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Not Available Yet',
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
                // SliverList(
                //   delegate: SliverChildBuilderDelegate(
                //     childCount: 5,
                //     (context, index) => const Card(
                //       child: ListTile(
                //         leading: FlutterLogo(),
                //         title: Text(
                //           'Indoland Awards',
                //           style: TextStyle(
                //             fontWeight: FontWeight.bold,
                //           ),
                //         ),
                //         subtitle: Text(
                //           'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                //           overflow: TextOverflow.ellipsis,
                //           maxLines: 2,
                //         ),
                //         contentPadding: EdgeInsets.all(10.0),
                //       ),
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
