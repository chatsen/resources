import 'package:json_annotation/json_annotation.dart';

import 'badge.dart';
import 'user.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  final List<Badge> badges;
  final List<User> users;

  Data({
    required this.badges,
    required this.users,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}
