import 'package:flutter/material.dart';
import 'package:flutterappp/Home/admin_homescreen.dart';
import 'package:flutterappp/Home/graph.dart';
import 'Authentication/admin_login.dart';
import 'Home/splashscreen.dart';
import 'Theme/userTheme.dart';
import 'Home/logo.dart';

void main() => runApp(Swatcha());

class Swatcha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Swatcha',
        theme: userTheme(),
        home: Splash(),
        routes: {
          '/Logo': (context) => Logo(),
          '/HomeAdmin': (context) => HomeAdmin(),
          '/LogIn': (context) => LogIn(),
          '/GraphScreen': (context) => GraphScreen(),
        });
  }
}
