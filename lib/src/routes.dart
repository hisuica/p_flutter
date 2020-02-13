import 'package:flutter/material.dart';
import 'package:p_flutter/src/ui/home/home.dart';
import 'package:p_flutter/src/ui/music/music_list.dart';
import 'package:p_flutter/src/ui/my_page/my_page.dart';
import 'package:p_flutter/src/ui/photo/photo.dart';
import 'package:p_flutter/src/ui/search/search.dart';
import 'package:p_flutter/src/ui/splash/splash.dart';

class Routes {
  Routes._();

  static const String splash = '/splash';
  static const String home = '/home';
  static const String music = '/music';
  static const String search = '/search';
  static const String photo = '/photo';
  static const String myPage = '/mypage';

  static final routes = <String, WidgetBuilder> {
    splash: (BuildContext context) => SplashScreen(),
    home: (BuildContext context) => HomeScreen(),
    music: (BuildContext context) => MusicListScreen(),
    search: (BuildContext context) => SearchScreen(),
    photo: (BuildContext context) => PhotoScreen(),
    myPage: (BuildContext context) => MyPageScreen()
  };
}