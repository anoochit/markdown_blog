import 'package:get/get.dart';

import '../../../../const.dart';
import '../../../data/models/mdcontent.dart';
import '../../../routes/app_pages.dart';
import '../views/page_view.dart';

class PageMiddleware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    String? id = page?.parameters?['id'];
    MdContent? content;

    if (id != null) {
      content = listContent.firstWhere((element) => element.id == id);
    }

    return GetPage(
      name: Routes.PAGE,
      page: () => PageView(content: content),
    );
  }
}
