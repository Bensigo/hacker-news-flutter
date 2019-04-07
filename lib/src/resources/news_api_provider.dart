import 'package:http/http.dart' show Client;
import '../models/item_model.dart';
import 'dart:convert';

class NewsApiProvider {
  final _topStoriesIdUrl =
      "https://hacker-news.firebaseio.com/v0/topstories.json";
  final _topStoriesItemUrl = "https://hacker-news.firebaseio.com/v0/item";

  Client client = Client();
  fetchTopIds() async {
    try {
      final response = await client.get(_topStoriesIdUrl);
      final ids = json.decode(response.body);
      return ids;
    } catch (err) {
      print(err);
    }
  }

  fetchItem(int id) async {
    try {
      final response = await client.get('$_topStoriesItemUrl/$id.json');
      final parsedJson = json.decode(response.body);
      return ItemModel.fromJson(parsedJson);
    } catch (err) {
      print(err);
    }
  }
}
