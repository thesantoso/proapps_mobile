// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../../../../models/site/site.dart';
// import '../../services/impl/sites_service_impl.dart';
// import '../provider/sites_provider.dart';

// final sitesControllerProvider = StateNotifierProvider((ref) {
//   return SitesControllerNotifier(ref);
// });

// class SitesControllerNotifier extends StateNotifier {
//   final Ref ref;
//   late SitesService _sitesService;

//   SitesControllerNotifier(this.ref) : super(null) {
//     _sitesService = ref.read(sitesProvider);
//   }

//   Future<List<Site>> fetchSites() async => await _sitesService.fetchSites();
// }
