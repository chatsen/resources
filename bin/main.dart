import 'dart:convert';
import 'dart:io';

import 'package:chatsen_resources/badge.dart';
import 'package:chatsen_resources/user.dart';
import 'package:http/http.dart' as http;

class GQL {
  static String endpoint = 'https://gql.twitch.tv/gql';

  static Future<dynamic> request(String gql) async {
    var request = await http.post(
      Uri.parse(endpoint),
      body: jsonEncode({'query': gql}),
      headers: {
        'Client-Id': 'kimne78kx3ncx6brgo4mv6wki5h1ko',
        'Content-Type': 'application/json',
      },
    );
    return jsonDecode(utf8.decode(request.bodyBytes));
  }
}

const baseUrl = 'https://cdn.jsdelivr.net/gh/chatsen/resources/assets';

var badges = <Badge>[
  Badge(
    name: 'closed_alpha',
    title: 'Chatsen Closed Alpha',
    description: 'Chatsen Badge',
    image: '$baseUrl/donator.gif',
    color: '777777',
  ),
  Badge(
    name: 'patreon_tier1',
    title: 'Chatsen Patreon Tier 1',
    description: 'Chatsen Supporter Badge',
    image: '$baseUrl/tier1.png',
    color: '777777',
  ),
  Badge(
    name: 'patreon_tier2',
    title: 'Chatsen Patreon Tier 2',
    description: 'Chatsen Supporter Badge',
    image: '$baseUrl/tier2.png',
    color: '777777',
  ),
  Badge(
    name: 'patreon_tier3',
    title: 'Chatsen Patreon Tier 3',
    description: 'Chatsen Supporter Badge',
    image: '$baseUrl/tier3a.gif',
    color: '777777',
  ),
];

var users = <User>[
  User(name: 'chatsen', id: "0", badges: [UserBadge(badgeName: 'patreon_tier3', acquiredAt: DateTime.now(), updatedAt: DateTime.now())]),
  User(name: 'chatsenapp', id: "0", badges: [UserBadge(badgeName: 'patreon_tier3', acquiredAt: DateTime.now(), updatedAt: DateTime.now())]),
];

// // Future<List<Badge>> getBadges() async {
// //   var badgeId = 0;
// //   var badges = <Badge>[];

// //   for (var badgeLine in await File('assets/badges').readAsLines()) {
// //     var badgeLineSplits = badgeLine.split(';');
// //     badges.add(
// //       Badge(
// //         id: badgeId++,
// //         name: badgeLineSplits[0],
// //         title: badgeLineSplits[1],
// //         description: badgeLineSplits[2],
// //         image: badgeLineSplits[4],
// //         color: badgeLineSplits[3],
// //       ),
// //     );
// //   }

// //   return badges;
// // }

void main(List<String> arguments) async {
  for (var user in users) {
    var data = await GQL.request('''
      query {
        user(login: "${user.name.toLowerCase()}") {
          id
          login
        }
      }
    ''');
    user.id = data['data']['user']['id'];
  }

  await File('assets/data.json').writeAsString(JsonEncoder.withIndent('  ').convert({
    "badges": badges,
    "users": users,
  }));
}
