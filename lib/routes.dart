import 'package:flutter/material.dart';
import 'package:p_flutter/ui/home/home.dart';
import 'package:p_flutter/ui/splash/splash.dart';

class Routes {
  Routes._();

  static const String splash = '/splash';
  static const String home = '/home';

  static final routes = <String, WidgetBuilder> {
    splash: (BuildContext context) => SplashScreen(),
    home: (BuildContext context) => HomeScreen()
  };
}