import 'dart:convert';

import 'package:flutter/services.dart';

Future<List<Map<String, dynamic>>> loadLyrics() async {
  final String jsonString = await rootBundle.loadString('assets/lyrics.json');
  final List<dynamic> jsonData = json.decode(jsonString);
  return jsonData.cast<Map<String, dynamic>>();
}

Future<Map<String, dynamic>> getLyricsById(String id) async {
  final List<Map<String, dynamic>> lyricsList = await loadLyrics();
  final lirycs = (lyricsList.firstWhere((item) => item['id'].toString() == id));
  return lirycs;
}
