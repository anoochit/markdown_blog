// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/page/bindings/page_binding.dart';
import '../modules/page/middleware/middleware.dart';
import '../modules/page/views/page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.PAGE,
      page: () => const PageView(),
      middlewares: [
        PageMiddleware(),
      ],
      binding: PageBinding(),
      transition: Transition.noTransition,
    ),
  ];
}
