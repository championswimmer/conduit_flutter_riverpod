// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_comments_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCommentsResponse _$GetCommentsResponseFromJson(Map<String, dynamic> json) =>
    GetCommentsResponse()
      ..comments = (json['comments'] as List<dynamic>?)
          ?.map((e) =>
              GetCommentsResponseComments.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetCommentsResponseToJson(
        GetCommentsResponse instance) =>
    <String, dynamic>{
      'comments': instance.comments,
    };

GetCommentsResponseComments _$GetCommentsResponseCommentsFromJson(
        Map<String, dynamic> json) =>
    GetCommentsResponseComments()
      ..id = json['id'] as int?
      ..createdAt = json['createdAt'] as String?
      ..updatedAt = json['updatedAt'] as String?
      ..body = json['body'] as String?
      ..author = json['author'] == null
          ? null
          : Profile.fromJson(json['author'] as Map<String, dynamic>);

Map<String, dynamic> _$GetCommentsResponseCommentsToJson(
        GetCommentsResponseComments instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'body': instance.body,
      'author': instance.author,
    };
