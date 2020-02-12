import 'package:flutter/material.dart';

class PhotoScreen extends StatefulWidget {
  const PhotoScreen({Key key}) : super(key : key);

  @override
  _PhotoScreenState createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Photo Page')),
    );
  }
}
