import 'dart:convert';
import 'dart:io';

import 'package:chatsen_resources/badge.dart';
import 'package:chatsen_resources/data.dart';
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

const baseUrl = 'https://raw.githubusercontent.com/chatsen/resources/master/assets'; //'https://cdn.jsdelivr.net/gh/chatsen/resources/assets';

var badges = <Badge>[
  Badge(
    name: 'developer',
    title: 'Chatsen Developer',
    description: 'That one code guy or something',
    image: '$baseUrl/nagato.gif',
    color: '777777',
  ),
  Badge(
    name: 'early_supporter',
    title: 'Chatsen Early Supporter',
    description: 'Legends that supported the project during it\'s early development',
    image: '$baseUrl/early_supporter.png',
    color: '777777',
  ),
  Badge(
    name: 'early_bird',
    title: 'Chatsen Early Bird',
    description: 'They are the believers and they don\'t care',
    image: '$baseUrl/old_advice.png',
    color: '777777',
  ),
  Badge(
    name: 'performance_artist',
    title: 'Chatsen Artist',
    description: 'Contributed assets to Chatsen',
    image: '$baseUrl/CrayonTime.gif',
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
    name: 'patreon_tier1s',
    title: 'Chatsen Early Patreon Tier 1',
    description: 'Chatsen Badge for Early Supporters',
    image: '$baseUrl/tier1s.png',
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
    name: 'patreon_tier2s',
    title: 'Chatsen Early Patreon Tier 2',
    description: 'Chatsen Badge for Early Supporters',
    image: '$baseUrl/tier2s.png',
    color: '777777',
  ),
  Badge(
    name: 'patreon_tier3',
    title: 'Chatsen Patreon Tier 3',
    description: 'Chatsen Supporter Badge',
    image: '$baseUrl/tier3.png',
    color: '777777',
  ),
  Badge(
    name: 'patreon_tier3s',
    title: 'Chatsen Early Patreon Tier 3',
    description: 'Chatsen Badge for Early Supporters',
    image: '$baseUrl/tier3s.png',
    color: '777777',
  ),
  Badge(
    name: 'patreon_tier4',
    title: 'Chatsen Patreon Tier 4',
    description: 'Chatsen Supporter Badge',
    image: '$baseUrl/tier4.png',
    color: '777777',
  ),
  Badge(
    name: 'test_animated',
    title: 'Chatsen Animated Badge Test',
    description: '?',
    image: '$baseUrl/tier3a.gif',
    color: '777777',
  ),
  Badge(
    name: 'relaxo',
    title: 'Money Waster Relaxo',
    description: 'He got too much money, I think lol.',
    image: '$baseUrl/relaxo.png',
    color: '777777',
  ),
  Badge(
    name: 'chill',
    title: 'Chatsen Patreon Tier 3 Custom Badge',
    description: 'Custom Chatsen Supporter Badge',
    image: '$baseUrl/chill_badge.png',
    color: '777777',
  ),
];

var users = <User>[
  // Developers
  User(name: 'chatsen', id: '693065895', badges: [
    UserBadge(badgeName: 'developer'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    UserBadge(badgeName: 'early_supporter'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'chatsenapp', id: '693066124', badges: [
    for (var badge in badges)
      UserBadge(
        badgeName: badge.name,
        // acquiredAt: DateTime.now(),
        // updatedAt: DateTime.now(),
      ),
    // UserBadge(badgeName: 'developer'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    // UserBadge(badgeName: 'early_supporter'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    // UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    // UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    // UserBadge(badgeName: 'patreon_tier2'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    // UserBadge(badgeName: 'patreon_tier3'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    // UserBadge(badgeName: 'patreon_tier4'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    // UserBadge(badgeName: 'test_animated'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'yamadaaoi', id: '100221397', badges: [
    UserBadge(badgeName: 'developer'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    // UserBadge(badgeName: 'early_supporter'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    // UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'williambulin', id: '695874918', badges: [
    UserBadge(badgeName: 'developer'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    UserBadge(badgeName: 'early_supporter'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),

  // Early users
  User(name: 'thedangerousbros', id: '49739598', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    UserBadge(badgeName: 'performance_artist'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'snowstormcs', id: '57459239', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'canelex_', id: '179016826', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'hawichii', id: '271640656', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'jamz_96', id: '29196772', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'sparler', id: '151119581', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'saan1ty', id: '219784780', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'feelsdankman_trumpet', id: '136778668', badges: [
    // UserBadge(badgeName: 'test_animated'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    UserBadge(badgeName: 'performance_artist'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'bradleyym', id: '171427962', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'spaghettisauce', id: '105791537', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'og_knocc_out', id: '445640182', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'killertofus', id: '598013908', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'killeroftofus', id: '51664191', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'ali2465', id: '194267009', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'johhmar', id: '29931084', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'tastiic', id: '104645456', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'justusshg', id: '480792226', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'shiftyvo', id: '182438081', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'smthy__', id: '653736667', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'cycionetm', id: '103964833', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'i_love_all_the_trihards', id: '104613084', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: '21mtd', id: '235611601', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'uruhayeno', id: '433969340', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'tripl____', id: '169244081', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'paruna', id: '139425133', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'wadm8', id: '92160119', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'havroy_', id: '476448932', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'scran', id: '248613314', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'marcfryd', id: '44710465', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'blackwolf9009', id: '170015429', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'heytherejudee', id: '517869424', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'turtoise', id: '80805824', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'andban92', id: '103228025', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'boraflame', id: '142585756', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'smuuuuuuuuurf', id: '131006574', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'solidwilson', id: '28219837', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'stephanbruh', id: '108112395', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'mamdoh123', id: '32404474', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'mastertichus', id: '482897959', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  // getair_condtioned
  User(name: 'ecko_biggestfan', id: '246437104', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    UserBadge(badgeName: 'performance_artist'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'gryyyfin', id: '92065767', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: '8supa', id: '675052240', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'sneeeze_', id: '124070285', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'college_boi', id: '216958596', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),

  // Alpha supporters
  User(name: 'ayyybubu', id: '157054245', badges: [
    // UserBadge(badgeName: 'early_supporter'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    UserBadge(badgeName: 'performance_artist'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    UserBadge(badgeName: 'patreon_tier1s'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'backous', id: '72052104', badges: [
    // UserBadge(badgeName: 'early_supporter'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    UserBadge(badgeName: 'patreon_tier1s'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'lexible', id: '62789824', badges: [
    // UserBadge(badgeName: 'early_supporter'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    UserBadge(badgeName: 'patreon_tier1s'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'hotbear1110', id: '135186096', badges: [
    // UserBadge(badgeName: 'early_supporter'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    UserBadge(badgeName: 'patreon_tier3s'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'yosefsa8', id: '688717128', badges: [
    // UserBadge(badgeName: 'early_supporter'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    UserBadge(badgeName: 'patreon_tier1s'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'dagaugl', id: '133619135', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'herohyrule', id: '172885562', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'symphonystars', id: '155226913', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    UserBadge(badgeName: 'performance_artist'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'nouryqt', id: '31437432', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'kian', id: '414653932', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'juansucks', id: '39289357', badges: [
    UserBadge(badgeName: 'early_bird'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'davekorbiger', id: '51822497', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: '7wzyy', id: '234778162', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'katimoms', id: '86446200', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'okck', id: '107766833', badges: [
    UserBadge(badgeName: 'patreon_tier3'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'Ascension', id: '487806424', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'im_cmac', id: '142364610', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'tepidp', id: '426396338', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'bathtubtv', id: '97120011', badges: [
    UserBadge(badgeName: 'patreon_tier3'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'niisgo', id: '189274527', badges: [
    UserBadge(badgeName: 'patreon_tier2'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'nichtdanger', id: '132105919', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'hugeblank', id: '120568035', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'bandy_j', id: '120665594', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'atoxiv', id: '129089038', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'dennitzo2', id: '118273408', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'thebluewagon', id: '246092135', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'korrectionz', id: '236435474', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'uvclay', id: '20811458', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'Deoster_', id: '60138178', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'fullwineo', id: '85719250', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'itsgamerjovi69', id: '449062652', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'xoosd', id: '424993941', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'firegeek22', id: '106145858', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'darthnosam', id: '459526763', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'spicyville', id: '722745496', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'merscever', id: '71127686', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'halalkosher', id: '48200594', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'meiiodaas', id: '162760707', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'JBickz', id: '86814466', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  // User(name: 'Lauriin', id: '256980074', badges: [
  //   UserBadge(badgeName: 'patreon_tier3'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  // ]),
  User(name: 'severide', id: '38267723', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'dootslayer', id: '74233711', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'fluxerlive', id: '701732581', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'forsensmug_teatime', id: '552925173', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'omrii__', id: '125745065', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'xneman', id: '74591140', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'ajspyman', id: '93949130', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'cupppcakes', id: '148050043', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'zomballr', id: '86173302', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'sadgesynth_', id: '543336701', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'fukversace', id: '568796519', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'mallairr', id: '236605657', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'yohlu', id: '456476158', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'boletodosub', id: '167830509', badges: [
    UserBadge(badgeName: 'patreon_tier2'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'deboratestefierro_megaugu', id: '729692388', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'sogeking22', id: '76597986', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'uhvene', id: '510573180', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'hrfarmer_', id: '183357828', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'pyjamamole', id: '31148613', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'baja26', id: '79144710', badges: [
    UserBadge(badgeName: 'patreon_tier1'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'teknik_', id: '534490040', badges: [
    UserBadge(badgeName: 'performance_artist'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'retrorelaxo', id: '265557682', badges: [
    UserBadge(badgeName: 'relaxo'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
  User(name: 'chill', id: '25858284', badges: [
    UserBadge(badgeName: 'chill'), // , acquiredAt: DateTime.now(), updatedAt: DateTime.now()),
  ]),
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
  for (var user in users.where((user) => user.id == '0')) {
    var data = await GQL.request('''
      query {
        user(login: "${user.name.toLowerCase()}") {
          id
          login
        }
      }
    ''');
    user.id = data['data']['user']['id'];
    print('User(name: \'${user.name.toLowerCase()}\', id: \'${user.id}\', badges: []),');
  }

  await File('assets/data.json').writeAsString(
    JsonEncoder.withIndent('  ').convert(
      Data(
        users: users,
        badges: badges,
      ),
    ),
  );
}
