// To parse this JSON data, do
//
//     final siteContent = siteContentFromJson(jsonString);

import 'dart:convert';

List<SiteContent> siteContentFromJson(String str) => List<SiteContent>.from(
    json.decode(str).map((x) => SiteContent.fromJson(x)));

String siteContentToJson(List<SiteContent> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SiteContent {
  String? title;
  String? slug;
  String? file;
  String? author;
  String? excerpt;
  String? category;
  DateTime? date;

  SiteContent({
    this.title,
    this.slug,
    this.file,
    this.author,
    this.excerpt,
    this.category,
    this.date,
  });

  factory SiteContent.fromJson(Map<String, dynamic> json) => SiteContent(
        title: json["title"],
        slug: json["slug"],
        file: json["file"],
        author: json["author"],
        excerpt: json["excerpt"],
        category: json["category"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "slug": slug,
        "file": file,
        "author": author,
        "excerpt": excerpt,
        "category": category,
        "date": date?.toIso8601String(),
      };
}
