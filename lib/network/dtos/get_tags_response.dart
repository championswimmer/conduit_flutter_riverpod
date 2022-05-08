import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'get_tags_response.g.dart';


@JsonSerializable()
class GetTagsResponse {

	List<String>? tags;
  
  GetTagsResponse();

  factory GetTagsResponse.fromJson(Map<String, dynamic> json) => _$GetTagsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetTagsResponseToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}