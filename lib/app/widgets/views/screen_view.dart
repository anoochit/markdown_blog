import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'footer_view.dart';
import 'header_view.dart';

class ScreenView extends GetView {
  const ScreenView({super.key, required this.content});

  final Widget content;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 768,
        child: Column(
          children: [
            // header
            const HeaderView(),

            // content
            content,

            // footer
            const FooterView(),
          ],
        ),
      ),
    );
  }
}
