// To parse this JSON data, do
//
//     final mdContent = mdContentFromJson(jsonString);

import 'dart:convert';

List<MdContent> mdContentFromJson(String str) =>
    List<MdContent>.from(json.decode(str).map((x) => MdContent.fromJson(x)));

String mdContentToJson(List<MdContent> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MdContent {
  String? id;
  String? title;
  String? author;
  String? excerpt;
  String? category;
  DateTime? datetime;
  String? body;

  MdContent({
    this.id,
    this.title,
    this.author,
    this.excerpt,
    this.category,
    this.datetime,
    this.body,
  });

  factory MdContent.fromJson(Map<String, dynamic> json) => MdContent(
        id: json["id"],
        title: json["title"],
        author: json["author"],
        excerpt: json["excerpt"],
        category: json["category"],
        datetime:
            json["datetime"] == null ? null : DateTime.parse(json["datetime"]),
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "author": author,
        "excerpt": excerpt,
        "category": category,
        "datetime": datetime?.toIso8601String(),
        "body": body,
      };
}
