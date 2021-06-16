import 'package:json_annotation/json_annotation.dart';

part 'badge.g.dart';

@JsonSerializable()
class Badge {
  final String name;
  final String title;
  final String description;
  final String image;
  final String color;

  Badge({
    required this.name,
    required this.title,
    required this.description,
    required this.image,
    required this.color,
  });

  factory Badge.fromJson(Map<String, dynamic> json) => _$BadgeFromJson(json);
  Map<String, dynamic> toJson() => _$BadgeToJson(this);
}
