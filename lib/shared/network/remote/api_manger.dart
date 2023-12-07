import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/models/NewsDataModel.dart';
import 'package:news_app/models/SourcesResponse.dart';
import 'package:news_app/shared/companents/constants.dart';

class ApiManager {
  static Future<SourcesResponse> getSources() async {
    Uri url = Uri.https("newsapi.org", "/v2/top-headlines/sources",
        {"apiKey": "9d842979318f47a09a0b58ef1aa4b602"});
    var response = await http.get(url);

    print(response.body);
    var jsonData = jsonDecode(response.body);
    SourcesResponse sourcesResponse = SourcesResponse.fromJson(jsonData);

    return sourcesResponse;
  }

  static Future<NewsDataModel> getNewsData(String SourceId) async {
    Uri url = Uri.https(Constants.BASE_URL, "/v2/everything",
        {"apiKey": Constants.API_KEY, "sources": SourceId});

    var response = await http.get(url);
    var jsonData = jsonDecode(response.body);

    NewsDataModel newsDataModel = NewsDataModel.fromJson(jsonData);
    return newsDataModel;
  }
}
