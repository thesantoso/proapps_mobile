class Routes {
  const Routes({required this.path, required this.name});

  final String path;
  final String name;
}

class NamedRoutes {
  static const Routes splash = Routes(path: '/splash', name: 'splash');
  static const Routes login = Routes(path: '/login', name: 'login');
  static const Routes forgetPassword =
      Routes(path: '/forget-password', name: 'forget-password');
  static const Routes home = Routes(path: '/home', name: 'home');
  static const Routes sites = Routes(path: '/sites', name: 'sites');
  static const Routes units = Routes(path: '/units', name: 'units');
  static const Routes bills = Routes(path: '/bills', name: 'bills');
  static const Routes complaints =
      Routes(path: '/complaints', name: 'complaints');
  static const Routes profile = Routes(path: '/profile', name: 'profile');
  static const Routes notifications =
      Routes(path: '/notifications', name: 'notifications');
  static const Routes paymentVoucher =
      Routes(path: '/payment-voucher', name: 'paymentVoucher');
  static const Routes electrictMeter =
      Routes(path: '/electrict-meter', name: 'electrictMeter');
  static const Routes waterMeter =
      Routes(path: '/water-meter', name: 'waterMeter');
  static const Routes helpDesk = Routes(path: '/help-desk', name: 'helpDesk');
  static const Routes workRequest =
      Routes(path: '/work-request', name: 'workRequest');
  static const Routes workRequestAdd =
      Routes(path: '/work-request-add', name: 'workRequestAdd');
  static const Routes workOrder =
      Routes(path: '/work-order', name: 'workOrder');
  static const Routes trackPkg =
      Routes(path: '/track-packages', name: 'trackPkg');
  static const Routes trackPkgDetail =
      Routes(path: '/track-packages-detail', name: 'trackPkgDetail');
  static const Routes camera = Routes(path: '/camera', name: 'camera');
  static const Routes maintenance =
      Routes(path: '/maintenance-eng', name: 'maintenanceEng');
  static const Routes ePeriod =
      Routes(path: '/electrict-period', name: 'electrictPeriod');
  static const Routes wPeriod =
      Routes(path: '/water-period', name: 'waterPeriod');
}
