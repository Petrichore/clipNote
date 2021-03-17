import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "clipNote",
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
