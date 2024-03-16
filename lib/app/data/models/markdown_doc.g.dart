// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'markdown_doc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarkdownDocImpl _$$MarkdownDocImplFromJson(Map<String, dynamic> json) =>
    _$MarkdownDocImpl(
      title: json['title'] as String?,
      author: json['author'] as String?,
      excerpt: json['excerpt'] as String?,
      category: json['category'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$MarkdownDocImplToJson(_$MarkdownDocImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'author': instance.author,
      'excerpt': instance.excerpt,
      'category': instance.category,
      'date': instance.date?.toIso8601String(),
    };
