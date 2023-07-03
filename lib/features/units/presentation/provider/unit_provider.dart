import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../controller/unit_controller.dart';

final unitShorthandProvider = FutureProvider(
  (ref) async => await ref
      .watch(unitControllerNotifierProvider.notifier)
      .getUnitShorthand(
          userID: ref
              .watch(unitControllerNotifierProvider.notifier)
              .getUser()
              .data!
              .id!),
);
