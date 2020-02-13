import 'package:flutter/material.dart';
import 'package:p_flutter/src/ui/music/music_list.dart';
import 'package:p_flutter/src/ui/my_page/my_page.dart';
import 'package:p_flutter/src/ui/photo/photo.dart';
import 'package:p_flutter/src/ui/search/search.dart';

class HomeScreen extends StatefulWidget {
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageStorageBucket bucket = PageStorageBucket();
  int _selectedIndex = 0;

  final List<Widget> pages = [
    MusicListScreen(
      key: PageStorageKey('Music')
    ),
    SearchScreen(
      key: PageStorageKey('Search')
    ),
    PhotoScreen(
      key: PageStorageKey('Photo')
    ),
    MyPageScreen(
      key: PageStorageKey('MyPage')
    )
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Practice'),
      ),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildBody() => PageStorage(
    child: pages[_selectedIndex], 
    bucket: bucket,
    );

  Widget _buildBottomNavigationBar(context) => BottomNavigationBar(
    showUnselectedLabels: true,
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.audiotrack),
        title: Text('Music'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        title: Text('Search'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.photo),
        title: Text('Photo'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.face),
        title: Text('My Page'),
      ),
    ],
    currentIndex: _selectedIndex,
    unselectedItemColor: Colors.black54,
    selectedItemColor: Colors.blue,
    onTap: _onItemTapped,
  );
}