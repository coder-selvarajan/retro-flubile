import 'package:flutter/material.dart';
import 'Nokia.dart';
import 'package:retroflubile/screens/home_page.dart';

void main() {
  runApp(FlubileApp());
}

class FlubileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
            fontFamily: 'Nokia',
          ),
          bodyText1: TextStyle(
            fontSize: 13,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: 'Nokia',
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'RETRO FLUBILE',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
            ),
          ),
        ),
        body: HomePage(),
      ),
    );
  }
}
