import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../core/models/wr_category.dart/wr_category.dart';
import '../controller/wr_controller.dart';

final wrCategoriesProvider = FutureProvider<List<WRCategory>>((ref) async {
  return await ref.watch(wrControllerProvider.notifier).getWRCategory();
});
