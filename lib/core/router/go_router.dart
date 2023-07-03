import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../models/pkg_shorthand/pkg_shorthand.dart';
import '../../features/electrict_meter/presentation/pages/electrict_period_page.dart';
import '../../features/track_pkg/presentation/pages/pkg_detail_page.dart';
import '../../features/work_order/presentation/pages/work_orrder_page.dart';
import '../../features/work_request/presentation/pages/camera_page.dart';
import '../../features/work_request/presentation/pages/work_request_page.dart';
import '../../features/work_request/presentation/pages/wr_add_page.dart';
import '../../features/electrict_meter/presentation/pages/electrict_meter_page.dart';
import '../../features/help_desk/presentation/pages/help_desk_page.dart';
import '../../features/paymentVoucher/presentation/pages/paymentVoucher_page.dart';
import '../../features/track_pkg/presentation/pages/track_pkg_page.dart';
import '../../features/water_meter/presentation/pages/water_meter_page.dart';
import '../../features/bills/presentation/pages/bills_page.dart';
import '../../features/complaints/presentation/pages/complaints_page.dart';
import '../../features/notifications/presentation/pages/notifications_page.dart';
import '../../features/units/presentation/pages/units_page.dart';

import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/bottom_nav/presentation/page/bottom_nav_page.dart';
import '../../features/forget_password/presentation/pages/forget_password.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/profile/presentation/pages/profile_page.dart';
import '../../features/splash/presentation/pages/splash_page.dart';
import 'named_routes.dart';

final GlobalKey<NavigatorState> _rootKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _navKey = GlobalKey<NavigatorState>();

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: _rootKey,
    debugLogDiagnostics: true,
    initialLocation: NamedRoutes.splash.path,
    routes: [
      GoRoute(
        path: NamedRoutes.splash.path,
        name: NamedRoutes.splash.name,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: NamedRoutes.login.path,
        name: NamedRoutes.login.name,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: NamedRoutes.forgetPassword.path,
        name: NamedRoutes.forgetPassword.name,
        builder: (context, state) => const ForgetPasswordPage(),
      ),
      // GoRoute(
      //   parentNavigatorKey: _rootKey,
      //   path: NamedRoutes.sites.path,
      //   name: NamedRoutes.sites.name,
      //   builder: (context, state) => const SitesPage(),
      // ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: NamedRoutes.units.path,
        name: NamedRoutes.units.name,
        builder: (context, state) => UnitsPage(isBill: state.extra as bool),
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: NamedRoutes.bills.path,
        name: NamedRoutes.bills.name,
        builder: (context, state) => const BillsPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: NamedRoutes.complaints.path,
        name: NamedRoutes.complaints.name,
        builder: (context, state) => const ComplaintsPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: NamedRoutes.paymentVoucher.path,
        name: NamedRoutes.paymentVoucher.name,
        builder: (context, state) => const PaymentVoucherPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: NamedRoutes.electrictMeter.path,
        name: NamedRoutes.electrictMeter.name,
        builder: (context, state) => const ElectrictMeterPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: NamedRoutes.waterMeter.path,
        name: NamedRoutes.waterMeter.name,
        builder: (context, state) => const WaterMeterPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: NamedRoutes.helpDesk.path,
        name: NamedRoutes.helpDesk.name,
        builder: (context, state) => const HelpDeskPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: NamedRoutes.workRequest.path,
        name: NamedRoutes.workRequest.name,
        builder: (context, state) => const WorkRequestPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: NamedRoutes.workRequestAdd.path,
        name: NamedRoutes.workRequestAdd.name,
        builder: (context, state) => const WorkRequestAddPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: NamedRoutes.workOrder.path,
        name: NamedRoutes.workOrder.name,
        builder: (context, state) => const WorkOrderPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: NamedRoutes.trackPkg.path,
        name: NamedRoutes.trackPkg.name,
        builder: (context, state) => const TrackPkgPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: NamedRoutes.trackPkgDetail.path,
        name: NamedRoutes.trackPkgDetail.name,
        builder: (context, state) =>
            PkgDetailPage(item: state.extra as PkgShorthand),
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: NamedRoutes.camera.path,
        name: NamedRoutes.camera.name,
        builder: (context, state) => CameraPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootKey,
        path: NamedRoutes.ePeriod.path,
        name: NamedRoutes.ePeriod.name,
        builder: (context, state) => ElectrictPeriodPage(),
      ),
      ShellRoute(
        navigatorKey: _navKey,
        builder: (context, state, child) => BottomNavPage(child: child),
        routes: [
          GoRoute(
            path: NamedRoutes.home.path,
            name: NamedRoutes.home.name,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const HomePage(),
            ),
          ),
          GoRoute(
            path: NamedRoutes.notifications.path,
            name: NamedRoutes.notifications.name,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const NotificationsPage(),
            ),
          ),
          GoRoute(
            path: NamedRoutes.profile.path,
            name: NamedRoutes.profile.name,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const ProfilePage(),
            ),
          ),
        ],
      )
    ],
  );
});
