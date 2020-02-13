import 'package:p_flutter/src/models/top_songs_model.dart';
import 'package:p_flutter/src/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class TopSongsBloc {
  final _repository = Repository();
  final _topSongsFetcher = PublishSubject<TopSongsModel>();

  Stream<TopSongsModel> get topSongs => _topSongsFetcher.stream;

  fetchTopSongs() async {
    TopSongsModel topSongsModel = await _repository.fetchTopSongs();
    _topSongsFetcher.sink.add(topSongsModel);
  }

  dispose() {
    _topSongsFetcher.close();
  }
}

final bloc = TopSongsBloc();