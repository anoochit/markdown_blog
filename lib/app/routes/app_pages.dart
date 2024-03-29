
import 'package:get/get.dart';
import 'package:mdsite/app/utils/meta_seo.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/page/bindings/page_binding.dart';
import '../modules/page/middleware/middleware.dart';
import '../modules/page/views/page_view.dart';
import '../modules/page_not_found/bindings/page_not_found_binding.dart';
import '../modules/page_not_found/views/page_not_found_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () {
        setPageMeta(null);
        return const HomeView();
      },
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
    GetPage(
      name: _Paths.PAGE_NOT_FOUND,
      page: () => const PageNotFoundView(),
      binding: PageNotFoundBinding(),
    ),
  ];
}
