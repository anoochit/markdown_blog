import 'package:flutter/foundation.dart';
import 'package:meta_seo/meta_seo.dart';

import '../../const.dart';
import '../data/models/mdcontent.dart';

// FIXME : make this easy configure

setPageMeta(MdContent? content) {
  if (kIsWeb) {
    // add meta seo as you want
    MetaSEO meta = MetaSEO();
    meta.author(author: content?.author ?? SEO_AUTHOR);
    meta.description(description: content?.excerpt ?? SEO_DESCRIPTION);

    // add meta seo open graph tags as you want
    // meta.facebookAppID(facebookAppID: 'your_app_id');
    meta.ogTitle(ogTitle: content?.title ?? SEO_TITLE);
    meta.ogDescription(ogDescription: content?.excerpt ?? SEO_DESCRIPTION);
    meta.ogImage(ogImage: SEO_OG_IMAGE);

    // here you can add any tags does not exist in the package as this
    meta.propertyContent(property: 'og:site_name', content: SEO_TITLE);

    // or if you want to add twitter card meta tags just as the following
    meta.twitterCard(twitterCard: TwitterCard.summaryLargeImage);
    meta.twitterTitle(twitterTitle: content?.title ?? SEO_TITLE);
    meta.twitterDescription(
        twitterDescription: content?.excerpt ?? SEO_DESCRIPTION);
    meta.twitterImage(twitterImage: SEO_TWITTER_IMAGE);

    // here you can add any tags does not exist in the package as this
    meta.nameContent(name: 'twitter:site', content: SEO_TITLE);
  }
}
