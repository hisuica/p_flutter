
import 'package:flutter/material.dart';
import 'package:p_flutter/src/routes.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Practice',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        initialRoute: Routes.splash,
        routes: Routes.routes
    );
  }
}
