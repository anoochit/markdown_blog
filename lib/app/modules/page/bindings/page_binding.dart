import 'package:get/get.dart';

import '../controllers/page_controller.dart';

class PageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PageController>(
      () => PageController(),
    );
  }
}
