// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_function_literals_in_foreach_calls

import 'dart:convert';
import 'dart:io';

import 'package:cosmic_frontmatter/cosmic_frontmatter.dart';

import 'package:mdsite/app/data/models/markdown_doc.dart';
import 'package:mdsite/app/data/models/mdcontent.dart';

Future<void> main(List<String> args) async {
  // generate content
  _generate();
}

_generate() async {
  // load posts
  final dir = Directory.fromUri(Uri.parse('assets/contents/'));
  final List<FileSystemEntity> files = await dir.list().toList();

  String jsonDataString = '[VVV]';
  String jsonDocString = '';

  // loop to create json content
  for (var file in files) {
    // load file
    final markdown = File(file.path);

    // create markdown content
    final markdownString = await markdown.readAsString();

    // parse
    final mdFormatter = parseFrontmatter(
      content: markdownString,
      frontmatterBuilder: (content) {
        return MarkdownDoc.fromJson(content);
      },
    );

    // extract data
    final title = mdFormatter.frontmatter.title;
    final author = mdFormatter.frontmatter.author;
    final excerpt = mdFormatter.frontmatter.excerpt;
    final category = mdFormatter.frontmatter.category;
    final datetime = mdFormatter.frontmatter.date;
    final body = mdFormatter.body;

    final jsonString = MdContent(
        id: file.path
            .replaceAll('assets\\contents\\', '')
            .replaceAll('.md', ''),
        title: title!,
        author: author!,
        excerpt: excerpt!,
        category: category!,
        datetime: datetime,
        body: body);

    // add doc json string
    jsonDocString = '$jsonDocString${jsonEncode(jsonString.toJson())},';
  }

  // FIXME : should has better solution
  // json data string
  jsonDataString = jsonDataString.replaceAll(
    'VVV',
    jsonDocString.substring(0, jsonDocString.length - 1),
  );

  // write json file
  final jsonFile = File('assets/data.json');
  jsonFile.writeAsString(jsonDataString);

  // TODO: add sitemap and feed generator
}
