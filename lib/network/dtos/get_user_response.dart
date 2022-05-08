import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'get_user_response.g.dart';


@JsonSerializable()
class GetUserResponse {

  User? user;

  GetUserResponse();

  factory GetUserResponse.fromJson(Map<String, dynamic> json) => _$GetUserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetUserResponseToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}


@JsonSerializable()
class User {

  String? email;
  String? token;
  String? username;
  String? bio;
  String? image;

  User();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}