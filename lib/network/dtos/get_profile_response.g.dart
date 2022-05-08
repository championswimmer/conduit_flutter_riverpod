// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProfileResponse _$GetProfileResponseFromJson(Map<String, dynamic> json) =>
    GetProfileResponse()
      ..profile = json['profile'] == null
          ? null
          : Profile.fromJson(json['profile'] as Map<String, dynamic>);

Map<String, dynamic> _$GetProfileResponseToJson(GetProfileResponse instance) =>
    <String, dynamic>{
      'profile': instance.profile,
    };

Profile _$ProfileFromJson(Map<String, dynamic> json) => Profile()
  ..username = json['username'] as String?
  ..bio = json['bio'] as String?
  ..image = json['image'] as String?
  ..following = json['following'] as bool?;

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'username': instance.username,
      'bio': instance.bio,
      'image': instance.image,
      'following': instance.following,
    };
