import 'dart:convert';

import 'package:conduit_flutter_riverpod/network/dtos/get_profile_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_articles_response.g.dart';

@JsonSerializable()
class GetArticlesResponse {

	List<Article>? articles;
	int? articlesCount;
  
  GetArticlesResponse();

  factory GetArticlesResponse.fromJson(Map<String, dynamic> json) => _$GetArticlesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetArticlesResponseToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetArticleResponse {

  Article? article;

  GetArticleResponse();

  factory GetArticleResponse.fromJson(Map<String, dynamic> json) => _$GetArticleResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetArticleResponseToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}


@JsonSerializable()
class Article {

	String? slug;
	String? title;
	String? description;
	String? body;
	List<String>? tagList;
	String? createdAt;
	String? updatedAt;
	bool? favorited;
	int? favoritesCount;
	Profile? author;
  
  Article();

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
