import 'package:flutter/material.dart';
import 'package:p_flutter/src/models/top_songs_model.dart';
import 'package:p_flutter/src/blocs/top_songs_bloc.dart';

class MusicListScreen extends StatelessWidget {
  const MusicListScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bloc.fetchTopSongs();
    return _buildTop100List();
  }

  Widget _buildTop100List() => new Scaffold(
      body: StreamBuilder(
          stream: bloc.topSongs,
          builder: (context, AsyncSnapshot<TopSongsModel> snapshot){
            if (snapshot.hasData){
              return ListView.separated(
                padding: EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 0),
                itemCount: snapshot.data.results.length,
                itemBuilder: (BuildContext context, int index) => _tile(snapshot, index),
                separatorBuilder: (context, index) => Divider(),
              );
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }
            return Center(child: CircularProgressIndicator());
          }
      )
  );

  ListTile _tile(AsyncSnapshot<TopSongsModel> snapshot, int index) => ListTile(
    title: Text(snapshot.data.results[index].name),
    subtitle: Text(snapshot.data.results[index].artistName),
    leading: Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          width: 40.0,
          child: Text((index + 1).toString(), style: TextStyle(fontSize: 17.0), textAlign: TextAlign.center,),
        ),
        CircleAvatar(
          radius: 25.0,
          backgroundImage: NetworkImage(snapshot.data.results[index].artworkUrl100),
        )
      ],
    ),
    trailing: Icon(Icons.favorite_border),
  );
}
