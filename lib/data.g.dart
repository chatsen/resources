// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    badges: (json['badges'] as List<dynamic>)
        .map((e) => Badge.fromJson(e as Map<String, dynamic>))
        .toList(),
    users: (json['users'] as List<dynamic>)
        .map((e) => User.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'badges': instance.badges,
      'users': instance.users,
    };
