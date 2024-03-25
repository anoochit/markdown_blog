import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app/data/models/mdcontent.dart';
import 'app/routes/app_pages.dart';
import 'const.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    MetaSEO().config();
  }
  setPathUrlStrategy();

  final json = await rootBundle.loadString('assets/data.json');

  listContent = mdContentFromJson(json).reversed.toList();

  runApp(
    GetMaterialApp(
      title: "Web",
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
