import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:retroflubile/screens/home_page.dart';
import 'package:retroflubile/screens/retro_smartphone.dart';
import 'package:retroflubile/widgets/recent_apps_data.dart';

void main() {
  runApp(FlubileApp());
}

class FlubileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RecentAppsData>(
      create: (context) => RecentAppsData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: Colors.white,
          textTheme: TextTheme(
            headline1: TextStyle(
              color: Color.fromRGBO(5, 5, 5, 100),
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: 'Nokia',
            ),
            bodyText1: TextStyle(
              fontSize: 13,
              color: Color.fromRGBO(5, 5, 5, 100),
              fontWeight: FontWeight.bold,
              fontFamily: 'Nokia',
            ),
          ),
        ),
        routes: {
          RetroSmartphone.id: (_) => RetroSmartphone(),
        },
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
      ),
    );
  }
}
