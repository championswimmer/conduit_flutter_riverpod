// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_tags_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTagsResponse _$GetTagsResponseFromJson(Map<String, dynamic> json) =>
    GetTagsResponse()
      ..tags =
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList();

Map<String, dynamic> _$GetTagsResponseToJson(GetTagsResponse instance) =>
    <String, dynamic>{
      'tags': instance.tags,
    };
