import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'get_profile_response.g.dart';


@JsonSerializable()
class GetProfileResponse {

    Profile? profile;

    GetProfileResponse();

    factory GetProfileResponse.fromJson(Map<String, dynamic> json) => _$GetProfileResponseFromJson(json);

    Map<String, dynamic> toJson() => _$GetProfileResponseToJson(this);

    @override
    String toString() {
        return jsonEncode(this);
    }
}


@JsonSerializable()
class Profile {

    String? username;
    String? bio;
    String? image;
    bool? following;

    Profile();

    factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);

    Map<String, dynamic> toJson() => _$ProfileToJson(this);

    @override
    String toString() {
        return jsonEncode(this);
    }
}