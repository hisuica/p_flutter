import 'package:flutter/material.dart';
import 'package:p_flutter/src/widget/app_icon_widget.dart';

class MusicListScreen extends StatefulWidget {
  const MusicListScreen({Key key}) : super(key: key);

  @override
  _MusicListScreenState createState() => _MusicListScreenState();
}

class _MusicListScreenState extends State<MusicListScreen> {
  @override
  Widget build(BuildContext context) {
    return _buildTop100List();
  }

  Widget _buildTop100List() => ListView.separated(
    padding: EdgeInsets.only(left: 0, top: 10, right: 0, bottom: 0),
    itemCount: 100,
    itemBuilder: (BuildContext context, int index) => _tile(index + 1),
    separatorBuilder: (context, index) => Divider(),
  );

  ListTile _tile(int rank) => ListTile(
    title: Text('Title'),
    subtitle: Text('Subtitle'),
    leading: Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          width: 40.0,
          child: Text(rank.toString(), style: TextStyle(fontSize: 17.0), textAlign: TextAlign.center,),
        ),
        AppIconWidget(image: 'assets/icons/ic_appicon.png',)
      ],
    ),
    trailing: Icon(Icons.favorite_border),
  );
}
