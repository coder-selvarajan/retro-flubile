import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:retroflubile/screens/recent_apps.dart';
import 'package:retroflubile/screens/retro_smartphone.dart';
import 'package:retroflubile/widgets/navigation.dart';
import 'package:retroflubile/widgets/recent_apps_data.dart';

class OpenApp extends StatelessWidget {
  final String appName;
  final String appIcon;

  OpenApp({@required this.appName, @required this.appIcon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: Image.asset('images/$appIcon.png', height: 45.0, width: 45.0),
        title: Text(appName, style: GoogleFonts.roboto(color: Colors.white)),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0.0,
            right: 0.0,
            left: 0.0,
            child: Container(
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Navigation(
                    icon: 'back_button',
                    onTap: () => Navigator.pop(context),
                  ),
                  Navigation(
                    icon: 'home_button',
                    onTap: () => Navigator.popUntil(
                        context, ModalRoute.withName(RetroSmartphone.id)),
                  ),
                  Navigation(
                    icon: 'recent_button',
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                            opaque: false,
                            barrierColor: Colors.transparent
                                .withOpacity(0.7), // set to false
                            pageBuilder: (_, __, ___) {
                              return ChangeNotifierProvider<
                                  RecentAppsData>.value(
                                value: RecentAppsData(),
                                child: RecentApps(),
                              );
                            }),
                      );
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
