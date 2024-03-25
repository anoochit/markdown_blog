import 'package:get/get.dart';

import '../../../../const.dart';
import '../../../data/models/mdcontent.dart';
import '../../../routes/app_pages.dart';
import '../../../utils/meta_seo.dart';
import '../../page_not_found/views/page_not_found_view.dart';
import '../views/page_view.dart';

class PageMiddleware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    String? id = page?.parameters?['id'];
    MdContent? content;
    if (id != null) {
      try {
        content = listContent.firstWhere((element) => element.id == id);
        // has content goto page content
        return GetPage(
          name: Routes.PAGE,
          page: () {
            setPageMeta(content);
            return PageView(content: content);
          },
          transition: Transition.noTransition,
        );
      } catch (e) {
        // throw with no content goto page not found
        return GetPage(
          name: Routes.PAGE_NOT_FOUND,
          page: () {
            setPageMeta(null);
            return const PageNotFoundView();
          },
          transition: Transition.noTransition,
        );
      }
    } else {
      // no id define goto page not found
      return GetPage(
        name: Routes.PAGE_NOT_FOUND,
        page: () {
          setPageMeta(null);
          return const PageNotFoundView();
        },
        transition: Transition.noTransition,
      );
    }
  }
}
