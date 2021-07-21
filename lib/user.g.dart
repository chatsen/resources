// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBadge _$UserBadgeFromJson(Map<String, dynamic> json) {
  return UserBadge(
    badgeName: json['badgeName'] as String,
  );
}

Map<String, dynamic> _$UserBadgeToJson(UserBadge instance) => <String, dynamic>{
      'badgeName': instance.badgeName,
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'] as String,
    name: json['name'] as String,
    badges: (json['badges'] as List<dynamic>)
        .map((e) => UserBadge.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'badges': instance.badges,
    };
