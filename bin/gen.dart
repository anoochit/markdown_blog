// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_function_literals_in_foreach_calls, depend_on_referenced_packages

import 'dart:convert';
import 'dart:io';

import 'package:cosmic_frontmatter/cosmic_frontmatter.dart';

import 'package:mdsite/app/data/models/markdown_doc.dart';
import 'package:mdsite/app/data/models/mdcontent.dart';
import 'package:mdsite/const.dart';
import 'package:rss_generator/rss_generator.dart';
import 'package:sitemap/sitemap.dart';

Future<void> main(List<String> args) async {
  // generate content
  _generate();
}

// FIXME : make this easy configure
_generate() async {
  // load posts
  final dir = Directory.fromUri(Uri.parse('assets/contents/'));
  final List<FileSystemEntity> files = await dir.list().toList();

  // json data string
  String jsonDataString = '[VVV]';
  String jsonDocString = '';

  // TODO : base url

  // site map
  final sitemap = Sitemap();
  sitemap.entries.add(
    SitemapEntry()
      ..location = baseURL
      ..lastModified = DateTime.now()
      ..changeFrequency = 'weekly',
  );

  // TODO : rss builder
  RssBuilder builder = RssBuilder(
    channelName: SEO_TITLE,
    channelDescription: SEO_DESCRIPTION,
    channelLink: baseURL,
    channelAtomLink: '$baseURL/rss.xml',
  )
      .copyright('Copyright ${DateTime.now().year}')
      .pubDate(DateTime.now())
      .ttl(60);

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
    final id =
        file.path.replaceAll('assets\\contents\\', '').replaceAll('.md', '');
    final link = '$baseURL/page?id=$id';

    final jsonString = MdContent(
        id: id,
        title: title!,
        author: author!,
        excerpt: excerpt!,
        category: category!,
        datetime: datetime,
        body: body);

    // add doc json string
    jsonDocString = '$jsonDocString${jsonEncode(jsonString.toJson())},';

    // add sitemap
    sitemap.entries.add(SitemapEntry()
      ..location = link
      ..lastModified = DateTime.now()
      ..changeFrequency = 'weekly');

    // add rss
    builder.addItem(
      RssItemBuilder(
        title: title,
        description: excerpt,
        link: link,
      ),
    );
  }

  // FIXME : should has better solution
  // json data string
  jsonDataString = jsonDataString.replaceAll(
    'VVV',
    jsonDocString.substring(0, jsonDocString.length - 1),
  );

  // write data json file
  final jsonFile = File('assets/data.json');
  jsonFile.writeAsString(jsonDataString);

  final siteMapData = File('web/sitemap.xml');
  siteMapData.writeAsString(sitemap.generate());

  final rssFeedData = File('web/rss.xml');
  rssFeedData.writeAsString(builder.build().toString());
}
