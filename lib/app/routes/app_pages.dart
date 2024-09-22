import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/bottom_bar.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BOTTOM_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.BOTTOM_PAGE,
      page: () => const bottom_page(),
      binding: HomeBinding(),
    ),
  ];
}
