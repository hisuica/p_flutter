import 'dart:convert';
import 'package:http/http.dart' show Client;
import 'package:p_flutter/src/models/top_songs_model.dart';
import 'package:p_flutter/src/network/network_exceptions.dart';

class TopSongsApiProvider {
  Client client = Client();
  
  Future<TopSongsModel> fetchTopSongsList() async {
    print('entered');
    final response = await client.get('https://rss.itunes.apple.com/api/v1/jp/apple-music/top-songs/all/100/explicit.json');
    print(response.body.toString());
    if (response.statusCode == 200) {
      return TopSongsModel.fromJson(jsonDecode(response.body));
    } else {
      throw NetworkException(
          message: 'Failed to load post',
          statusCode: response.statusCode
      );
    }
  }
}