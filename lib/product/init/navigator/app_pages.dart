import 'package:get/get.dart';

import '../../../feature/detail/view/detail_view.dart';
import '../../../feature/home/bindings/home_binding.dart';
import '../../../feature/home/view/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => const UserDetailView(),
    ),
  ];
}
