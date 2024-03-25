import 'package:get/get.dart';

import '../controllers/page_not_found_controller.dart';

class PageNotFoundBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PageNotFoundController>(
      () => PageNotFoundController(),
    );
  }
}
