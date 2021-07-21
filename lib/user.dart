import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class UserBadge {
  final String badgeName;
  DateTime? acquiredAt;
  DateTime? updatedAt;
  DateTime? expiresAt;

  UserBadge({
    required this.badgeName,
    this.acquiredAt,
    this.updatedAt,
    this.expiresAt,
  }) {
    acquiredAt = DateTime.fromMillisecondsSinceEpoch(0);
    updatedAt = DateTime.fromMillisecondsSinceEpoch(0);
    expiresAt = DateTime.fromMillisecondsSinceEpoch(0);
  }

  factory UserBadge.fromJson(Map<String, dynamic> json) => _$UserBadgeFromJson(json);
  Map<String, dynamic> toJson() => _$UserBadgeToJson(this);
}

@JsonSerializable()
class User {
  String id;
  String name;
  List<UserBadge> badges;

  User({
    required this.id,
    required this.name,
    required this.badges,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
