import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/views/screen_view.dart';
import '../controllers/page_not_found_controller.dart';

class PageNotFoundView extends GetView<PageNotFoundController> {
  const PageNotFoundView({super.key});
  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: ScreenView(
            content: Center(
              child: Column(
                children: [
                  Text(
                    "404",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const Text(
                    "We're sorry, but the page you're looking for isn't here. Would you like to try searching for it?",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
