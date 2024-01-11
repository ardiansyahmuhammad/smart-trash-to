// ignore_for_file: unused_local_variable, avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:trashbin/models/news_api_model.dart';

class RepoNews {
  final _baseUrl = 'https://659e9cc247ae28b0bd364b74.mockapi.io/trash/news';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        List<NewsApi> newsApi = it.map((e) => NewsApi.fromJson(e)).toList();
        return newsApi;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
