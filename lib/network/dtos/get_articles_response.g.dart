// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_articles_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetArticlesResponse _$GetArticlesResponseFromJson(Map<String, dynamic> json) =>
    GetArticlesResponse()
      ..articles = (json['articles'] as List<dynamic>?)
          ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList()
      ..articlesCount = json['articlesCount'] as int?;

Map<String, dynamic> _$GetArticlesResponseToJson(
        GetArticlesResponse instance) =>
    <String, dynamic>{
      'articles': instance.articles,
      'articlesCount': instance.articlesCount,
    };

GetArticleResponse _$GetArticleResponseFromJson(Map<String, dynamic> json) =>
    GetArticleResponse()
      ..article = json['article'] == null
          ? null
          : Article.fromJson(json['article'] as Map<String, dynamic>);

Map<String, dynamic> _$GetArticleResponseToJson(GetArticleResponse instance) =>
    <String, dynamic>{
      'article': instance.article,
    };

Article _$ArticleFromJson(Map<String, dynamic> json) => Article()
  ..slug = json['slug'] as String?
  ..title = json['title'] as String?
  ..description = json['description'] as String?
  ..body = json['body'] as String?
  ..tagList =
      (json['tagList'] as List<dynamic>?)?.map((e) => e as String).toList()
  ..createdAt = json['createdAt'] as String?
  ..updatedAt = json['updatedAt'] as String?
  ..favorited = json['favorited'] as bool?
  ..favoritesCount = json['favoritesCount'] as int?
  ..author = json['author'] == null
      ? null
      : Profile.fromJson(json['author'] as Map<String, dynamic>);

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'slug': instance.slug,
      'title': instance.title,
      'description': instance.description,
      'body': instance.body,
      'tagList': instance.tagList,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'favorited': instance.favorited,
      'favoritesCount': instance.favoritesCount,
      'author': instance.author,
    };
