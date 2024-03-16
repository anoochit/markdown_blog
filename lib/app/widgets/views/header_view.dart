import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:mdsite/app/routes/app_pages.dart';

class HeaderView extends GetView {
  const HeaderView({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Gap(32.0),
        const CircleAvatar(
          radius: 60.0,
        ),
        const Gap(16.0),
        Text(
          'My Blog',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const Gap(16.0),
        Text(
          'My Personal Technology Blog',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const Gap(16.0),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () => Get.offNamed(Routes.HOME),
              child: const Text('Home'),
            ),
            TextButton(
              onPressed: () => Get.offNamed(
                Routes.PAGE,
                parameters: {"id": "202403140600"},
              ),
              child: const Text('Blog'),
            ),
            TextButton(
              onPressed: () => Get.offNamed(
                Routes.PAGE,
                parameters: {"id": "202403160653"},
              ),
              child: const Text('Contact'),
            ),
          ],
        ),
        const Gap(48.0),
      ],
    );
  }
}
