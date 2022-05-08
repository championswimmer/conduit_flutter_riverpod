import 'dart:convert';
import 'package:conduit_flutter_riverpod/network/dtos/get_profile_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'get_comments_response.g.dart';

@JsonSerializable()
class GetCommentsResponse {
  List<GetCommentsResponseComments>? comments;

  GetCommentsResponse();

  factory GetCommentsResponse.fromJson(Map<String, dynamic> json) => _$GetCommentsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetCommentsResponseToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class GetCommentsResponseComments {
  int? id;
  String? createdAt;
  String? updatedAt;
  String? body;
  Profile? author;

  GetCommentsResponseComments();

  factory GetCommentsResponseComments.fromJson(Map<String, dynamic> json) => _$GetCommentsResponseCommentsFromJson(json);

  Map<String, dynamic> toJson() => _$GetCommentsResponseCommentsToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}
