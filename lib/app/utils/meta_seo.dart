import 'package:flutter/foundation.dart';
import 'package:meta_seo/meta_seo.dart';

import '../../const.dart';
import '../data/models/mdcontent.dart';

setPageMeta(MdContent? content) {
  if (kIsWeb) {
    MetaSEO meta = MetaSEO();
    meta.author(author: content?.author ?? SEO_AUTHOR);
    meta.description(description: content?.excerpt ?? SEO_DESCRIPTION);
  }
}
