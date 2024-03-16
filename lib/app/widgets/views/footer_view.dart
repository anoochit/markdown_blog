import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

class FooterView extends GetView {
  const FooterView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Gap(64.0),
        Text("Made with ❤️ by Dart & Flutter"),
        Gap(32.0),
      ],
    );
  }
}
