import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:markdown_widget/markdown_widget.dart';
import 'package:mdsite/app/data/models/mdcontent.dart';

import '../../routes/app_pages.dart';

class ContentView extends GetView {
  const ContentView({super.key, this.content});
  final MdContent? content;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => Get.offNamed(
              Routes.PAGE,
              parameters: {"id": "${content!.id}"},
            ),
            child: Text(
              '${content?.title}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Text(
            'Author: ${content?.author} , ${DateFormat.yMMMd().format(content!.datetime!)}',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'Category: ${content?.category}',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const Gap(16),
          MarkdownWidget(
            shrinkWrap: true,
            data: '${content?.body}',
          ),
          const Gap(48),
        ],
      ),
    );
  }
}
