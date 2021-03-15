import 'dart:async';

import 'package:clip_note/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            children: [
              Spacer(flex: 1),
              Image(
                image: AssetImage("assets/images/logo.png"),
                width: 100,
                height: 100,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 24, 0, 0),
                child: Text("clipNote",
                    style: Theme.of(context).textTheme.headline1),
              ),
              Spacer(flex: 1),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 24),
                child: CircularProgressIndicator(),
              ),
            ],
          ),
        ),
      ),
    );
    _setNavigationDelay(context);
    return scaffold;
  }

  void _setNavigationDelay(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return HomeScreen();
            },
          ),
        );
      },
    );
  }
}
