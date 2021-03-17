import 'package:clip_note/splashscreen/splashscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'res/colors.dart';

void main() => runApp(ClipNoteApp());

class ClipNoteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColor.primary,
        primaryColorDark: AppColor.primaryDark,
        accentColor: AppColor.accent,
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.all(0),
            primary: AppColor.accent,
            side: BorderSide(color: AppColor.primary, width: 1.5),
            textStyle: TextStyle(
              fontSize: 14,
              fontFamily: 'Exo',
              fontWeight: FontWeight.w400,
            ),
            minimumSize: Size(130, 32),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(0),
            primary: AppColor.accent,
            onPrimary: AppColor.onAccent,
            minimumSize: Size(130, 32),
            textStyle: TextStyle(
              fontSize: 14,
              fontFamily: 'Exo',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 48,
            color: AppColor.primaryDark,
            fontFamily: 'Exo',
            fontWeight: FontWeight.w400,
          ),
          headline2: TextStyle(
            fontSize: 48,
            color: AppColor.primaryDark,
            fontFamily: 'Exo',
            fontWeight: FontWeight.w500,
          ),
          headline4: TextStyle(
            fontSize: 34,
            color: AppColor.onAccent,
            fontFamily: 'Exo',
            fontWeight: FontWeight.w500,
          ),
          headline5: TextStyle(
            fontSize: 24,
            color: AppColor.primaryDark,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w300,
          ),
          headline6: TextStyle(
            fontSize: 20,
            color: AppColor.onPrimary,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      home: Splashscreen(),
    );
  }
}
