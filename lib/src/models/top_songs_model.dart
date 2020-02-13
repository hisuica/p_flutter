class TopSongsModel {
  _Feed _feed;

  TopSongsModel.fromJson(Map<String, dynamic> parsedJson) {
    _feed = parsedJson['feed'];
  }

  _Feed get feed => _feed;
}

class _Feed {
  String _title;
  String _id;
  String _copyright;
  String _country;
  String _icon;
  String _updated;
  List<_Result> _results = [];

  _Feed(feed) {
    _title = feed['title'];
    _id = feed['id'];
    _copyright = feed['copyright'];
    _country = feed['country'];
    _icon = feed['icon'];
    _updated = feed['updated'];
    List<_Result> temp = [];
    for (int i = 0; i < feed['results'].length; i++) {
      _Result result = _Result(feed['results'][i]);
      temp.add(result);
    }
    _results = temp;
  }

  List<_Result> get results => _results;

  String get updated => _updated;

  String get icon => _icon;

  String get country => _country;

  String get copyright => _copyright;

  String get id => _id;

  String get title => _title;
}

class _Result {
  String _artistName;
  String _id;
  String _releaseDate;
  String _name;
  String _collectionName;
  String _kind;
  String _copyright;
  String _artistId;
  String _artistUrl;
  String _artworkUrl100;
  String _url;

  _Result(result) {
    _artistName = result['artistName'];
    _id = result['id'];
    _releaseDate = result['releaseDate'];
    _name = result['name'];
    _collectionName = result['collectionName'];
    _kind = result['kind'];
    _copyright = result['copyright'];
    _artistId = result['artistId'];
    _artistUrl = result['artistUrl'];
    _artworkUrl100 = result['artworkUrl100'];
    _url = result['url'];
  }

  String get url => _url;

  String get artworkUrl100 => _artworkUrl100;

  String get artistUrl => _artistUrl;

  String get artistId => _artistId;

  String get copyright => _copyright;

  String get kind => _kind;

  String get collectionName => _collectionName;

  String get name => _name;

  String get releaseDate => _releaseDate;

  String get id => _id;

  String get artistName => _artistName;
}
