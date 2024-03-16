// To parse this JSON data, do
//
//     final markdownDoc = markdownDocFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'markdown_doc.freezed.dart';
part 'markdown_doc.g.dart';

MarkdownDoc markdownDocFromJson(String str) =>
    MarkdownDoc.fromJson(json.decode(str));

String markdownDocToJson(MarkdownDoc data) => json.encode(data.toJson());

@freezed
class MarkdownDoc with _$MarkdownDoc {
  const factory MarkdownDoc({
    String? title,
    String? author,
    String? excerpt,
    String? category,
    DateTime? date,
  }) = _MarkdownDoc;

  factory MarkdownDoc.fromJson(Map<String, dynamic> json) =>
      _$MarkdownDocFromJson(json);
}
