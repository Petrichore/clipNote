import 'dart:async';

import 'package:clip_note/auth/auth_main.dart';
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("clipNote",
                    style: Theme.of(context).textTheme.headline1),
              ),
              Spacer(flex: 2),
              CircularProgressIndicator(),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
    _setNavigationDelay(context);
    return scaffold;
  }

  void _setNavigationDelay(BuildContext context) async {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              debugPrint("navigation performed");
              return AuthScreen();
            },
          ),
        );
      },
    );
  }
}
