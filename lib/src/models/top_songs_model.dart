class TopSongsModel {
  String _title;
  String _id;
  String _copyright;
  String _country;
  String _icon;
  String _updated;
  List<_Result> _results = [];
  TopSongsModel.fromJson(Map<String, dynamic> parsedJson) {
    _title = parsedJson['feed']['title'];
    _id = parsedJson['feed']['id'];
    _copyright = parsedJson['feed']['copyright'];
    _country = parsedJson['feed']['country'];
    _icon = parsedJson['feed']['icon'];
    _updated = parsedJson['feed']['updated'];
    List<_Result> temp = [];
    for (int i = 0; i < parsedJson['feed']['results'].length; i++) {
      _Result result = _Result(parsedJson['feed']['results'][i]);
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
