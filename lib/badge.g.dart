// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'badge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Badge _$BadgeFromJson(Map<String, dynamic> json) {
  return Badge(
    name: json['name'] as String,
    title: json['title'] as String,
    description: json['description'] as String,
    image: json['image'] as String,
    color: json['color'] as String,
  );
}

Map<String, dynamic> _$BadgeToJson(Badge instance) => <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'color': instance.color,
    };
