import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/models/mdcontent.dart';
import '../../../widgets/views/content_view.dart';
import '../../../widgets/views/screen_view.dart';

class PageView extends GetView<PageController> {
  const PageView({super.key, this.content});
  final MdContent? content;
  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: ScreenView(
            content: ContentView(content: content),
          ),
        ),
      ),
    );
  }
}
