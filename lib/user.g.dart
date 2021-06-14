// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBadge _$UserBadgeFromJson(Map<String, dynamic> json) {
  return UserBadge(
    badgeName: json['badgeName'] as String,
    acquiredAt: DateTime.parse(json['acquiredAt'] as String),
    updatedAt: DateTime.parse(json['updatedAt'] as String),
    expiresAt: json['expiresAt'] == null
        ? null
        : DateTime.parse(json['expiresAt'] as String),
  );
}

Map<String, dynamic> _$UserBadgeToJson(UserBadge instance) => <String, dynamic>{
      'badgeName': instance.badgeName,
      'acquiredAt': instance.acquiredAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
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
