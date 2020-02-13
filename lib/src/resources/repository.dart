import 'package:p_flutter/src/models/top_songs_model.dart';
import 'package:p_flutter/src/resources/top_songs_api_provider.dart';

class Repository {
  final topSongsApiProvider = TopSongsApiProvider();

  Future<TopSongsModel> fetchTopSongs() => topSongsApiProvider.fetchTopSongsList();
}