import 'package:flutter/foundation.dart';
import 'package:mdsite/app/data/models/mdcontent.dart';
import 'package:mdsite/const.dart';
import 'package:meta_seo/meta_seo.dart';

setPageMeta(MdContent? content) {
  if (kIsWeb) {
    MetaSEO meta = MetaSEO();
    meta.author(author: content?.author ?? SEO_AUTHOR);
    meta.description(description: content?.excerpt ?? SEO_DESCRIPTION);
  }
}
