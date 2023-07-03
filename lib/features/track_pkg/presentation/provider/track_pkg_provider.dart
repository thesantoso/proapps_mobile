import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../core/models/pkg_shorthand/pkg_shorthand.dart';
import '../controller/track_pkg_controller.dart';

final trackPkgProvider =
    FutureProvider.family<List<PkgShorthand>, int>((ref, assignUnitID) async {
  return await ref
      .watch(trackPackageControllerProvider.notifier)
      .getPkgShorthand(
        assignUnitID: assignUnitID,
      );
});
