import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mdsite/app/widgets/views/content_view.dart';
import 'package:mdsite/app/widgets/views/screen_view.dart';
import 'package:mdsite/const.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: ScreenView(
            content: Column(
              children: List.generate(
                listContent.length,
                (index) => ContentView(
                  content: listContent[index],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
