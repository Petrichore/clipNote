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
          headline3: TextStyle(
            fontSize: 24,
            color: AppColor.appBarText,
            fontFamily: 'Exo',
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      home: Splashscreen(),
    );
  }
}
