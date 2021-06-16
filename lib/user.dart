import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class UserBadge {
  final String badgeName;
  final DateTime acquiredAt;
  final DateTime updatedAt;
  final DateTime? expiresAt;

  UserBadge({
    required this.badgeName,
    required this.acquiredAt,
    required this.updatedAt,
    this.expiresAt,
  });

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
