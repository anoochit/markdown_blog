// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'markdown_doc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarkdownDoc _$MarkdownDocFromJson(Map<String, dynamic> json) {
  return _MarkdownDoc.fromJson(json);
}

/// @nodoc
mixin _$MarkdownDoc {
  String? get title => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String? get excerpt => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MarkdownDocCopyWith<MarkdownDoc> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkdownDocCopyWith<$Res> {
  factory $MarkdownDocCopyWith(
          MarkdownDoc value, $Res Function(MarkdownDoc) then) =
      _$MarkdownDocCopyWithImpl<$Res, MarkdownDoc>;
  @useResult
  $Res call(
      {String? title,
      String? author,
      String? excerpt,
      String? category,
      DateTime? date});
}

/// @nodoc
class _$MarkdownDocCopyWithImpl<$Res, $Val extends MarkdownDoc>
    implements $MarkdownDocCopyWith<$Res> {
  _$MarkdownDocCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? author = freezed,
    Object? excerpt = freezed,
    Object? category = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      excerpt: freezed == excerpt
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarkdownDocImplCopyWith<$Res>
    implements $MarkdownDocCopyWith<$Res> {
  factory _$$MarkdownDocImplCopyWith(
          _$MarkdownDocImpl value, $Res Function(_$MarkdownDocImpl) then) =
      __$$MarkdownDocImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? author,
      String? excerpt,
      String? category,
      DateTime? date});
}

/// @nodoc
class __$$MarkdownDocImplCopyWithImpl<$Res>
    extends _$MarkdownDocCopyWithImpl<$Res, _$MarkdownDocImpl>
    implements _$$MarkdownDocImplCopyWith<$Res> {
  __$$MarkdownDocImplCopyWithImpl(
      _$MarkdownDocImpl _value, $Res Function(_$MarkdownDocImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? author = freezed,
    Object? excerpt = freezed,
    Object? category = freezed,
    Object? date = freezed,
  }) {
    return _then(_$MarkdownDocImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      excerpt: freezed == excerpt
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarkdownDocImpl implements _MarkdownDoc {
  const _$MarkdownDocImpl(
      {this.title, this.author, this.excerpt, this.category, this.date});

  factory _$MarkdownDocImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarkdownDocImplFromJson(json);

  @override
  final String? title;
  @override
  final String? author;
  @override
  final String? excerpt;
  @override
  final String? category;
  @override
  final DateTime? date;

  @override
  String toString() {
    return 'MarkdownDoc(title: $title, author: $author, excerpt: $excerpt, category: $category, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkdownDocImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.excerpt, excerpt) || other.excerpt == excerpt) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, author, excerpt, category, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkdownDocImplCopyWith<_$MarkdownDocImpl> get copyWith =>
      __$$MarkdownDocImplCopyWithImpl<_$MarkdownDocImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarkdownDocImplToJson(
      this,
    );
  }
}

abstract class _MarkdownDoc implements MarkdownDoc {
  const factory _MarkdownDoc(
      {final String? title,
      final String? author,
      final String? excerpt,
      final String? category,
      final DateTime? date}) = _$MarkdownDocImpl;

  factory _MarkdownDoc.fromJson(Map<String, dynamic> json) =
      _$MarkdownDocImpl.fromJson;

  @override
  String? get title;
  @override
  String? get author;
  @override
  String? get excerpt;
  @override
  String? get category;
  @override
  DateTime? get date;
  @override
  @JsonKey(ignore: true)
  _$$MarkdownDocImplCopyWith<_$MarkdownDocImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
