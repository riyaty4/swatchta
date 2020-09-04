import 'package:flutter/material.dart';
import 'package:flutterappp/Home/admin_homescreen.dart';
import 'package:flutterappp/Home/area_list.dart';
import 'package:flutterappp/Home/graph.dart';
import 'package:flutterappp/Home/logo.dart';
import 'package:flutterappp/Home/splashscreen.dart';
import 'package:flutterappp/Home/user_area_list.dart';
import 'package:flutterappp/Home/user_faq.dart';
import 'package:flutterappp/Home/user_homeScreen.dart';
import 'Authentication/admin_login.dart';
import 'Theme/userTheme.dart';


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
        '/Splash' : (context) => Splash(),
        '/Logo' : (context) => Logo(),
        '/HomeAdmin' : (context) => HomeAdmin(),
        '/LogIn' : (context) => LogIn(),
        '/GraphScreen' : (context) => GraphScreen(),
        //'/MapScreen' : (context) => MapScreen(),
        //'/HomeUser' : (context) => HomeUser(),
        '/Map_list' : (context) => Map_list(),
        '/UserMapList' : (context) => UserMapList(),
        '/FAQ' : (context) => FAQ(),
      }
    );
  }
}

