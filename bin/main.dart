import 'dart:io';

import 'package:chatsen_resources/Badge.dart';

Future<List<Badge>> getBadges() async {
  var badgeId = 0;
  var badges = <Badge>[];

  for (var badgeLine in await File('assets/badges').readAsLines()) {}

  return badges;
}

void main(List<String> arguments) async {
  print(getBadges());
}
