import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@riverpod
Future<Map<String, dynamic>> images(ImagesRef ref) async {
  final url = Uri.parse('https://sorm.me/api/tv/items');

  final response = await http.get(url);

  return jsonDecode(utf8.decode(response.bodyBytes));
}
