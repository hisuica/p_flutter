import 'package:flutter/material.dart';

class MusicListScreen extends StatefulWidget {
  const MusicListScreen({Key key}) : super(key: key);

  @override
  _MusicListScreenState createState() => _MusicListScreenState();
}

class _MusicListScreenState extends State<MusicListScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Music Page')),
    );
  }
}
