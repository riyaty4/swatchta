import 'package:flutter/material.dart';

ThemeData userTheme() {
  TextTheme _basicTextTheme(TextTheme base) {
    return base.copyWith(
        headline: base.headline.copyWith(
          //  fontFamily: 'Roboto',
          fontSize: 22.0,
          color: Colors.black,
        ),
        title: base.title.copyWith(
           // fontFamily: 'Merriweather',
            fontSize: 22.0,
            color: Colors.black,
            fontWeight: FontWeight.w500,
        ),
        display1: base.headline.copyWith(
          fontSize: 18.0,
          color: Colors.black,
        ),
        display2: base.headline.copyWith(
          fontSize: 14.0,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        )
    );
  }
  ButtonBarThemeData buttontheme(){

  }

  final ThemeData base = ThemeData.light();

  return base.copyWith(
    textTheme: _basicTextTheme(base.textTheme),
    primaryColor: Colors.lightBlueAccent,
    buttonColor: Colors.lightBlueAccent,
    iconTheme: IconThemeData(
      color: Colors.black,
      size: 22.0,
    ),

    backgroundColor: Colors.white,
  );
}