// import 'dart:convert';

// import 'package:flutter/services.dart';
// import '../repo/local_json_repo.dart';
// import '../../../../models/site/site.dart';

// class LocalJson implements LocalJsonRepo {
//   List<Site> parseSites(String response) {
//     final parsed = jsonDecode(response).cast<Map<String, dynamic>>();

//     return parsed.map<Site>((json) => Site.fromJson(json)).toList();
//   }

//   @override
//   Future<List<Site>> fetchSites() async {
//     final response = await rootBundle.loadString('assets/json/sites.json');

//     return parseSites(response);
//   }

//   @override
//   Future<Site> fetchSitesById() async {
//     final response = await rootBundle.loadString('assets/json/sites.json');
//     final parsed = jsonDecode(response).cast<Map<String, dynamic>>();

//     return Site.fromJson(parsed);
//   }
// }
