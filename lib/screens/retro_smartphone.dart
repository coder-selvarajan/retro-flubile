import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:retroflubile/models/recent_apps_item.dart';
import 'package:retroflubile/screens/main_menu.dart';
import 'package:retroflubile/screens/open_app.dart';
import 'package:retroflubile/screens/recent_apps.dart';
import 'package:retroflubile/widgets/icon_with_name.dart';
import 'package:retroflubile/widgets/navigation.dart';
import 'package:retroflubile/widgets/recent_apps_data.dart';

class RetroSmartphone extends StatelessWidget {
  static String id = 'Retro Smartphone';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 10.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Google',
                          style: GoogleFonts.gentiumBasic(
                              color: Colors.white, fontSize: 25.0)),
                      Image.asset(
                        'images/speak_now.png',
                        height: 25.0,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0.0,
                right: 0.0,
                left: 0.0,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        RetroHomeIconWithName(
                            appIcon: 'camera', appName: 'Camera'),
                        RetroHomeIconWithName(
                            appIcon: 'gallery', appName: 'Gallery'),
                        RetroHomeIconWithName(
                            appIcon: 'settings', appName: 'Settings'),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      child: Divider(color: Colors.grey, thickness: 1.3),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        RetroHomeIcon(appName: 'Phone', appIcon: 'phone'),
                        RetroHomeIcon(appName: 'People', appIcon: 'people'),
                        Navigation(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ChangeNotifierProvider.value(
                                value: RecentAppsData(),
                                child: MainMenu(),
                              );
                            }));
                          },
                          icon: 'main_menu',
                        ),
                        RetroHomeIcon(
                            appName: 'Messaging', appIcon: 'messaging'),
                        RetroHomeIcon(appName: 'Browser', appIcon: 'browser'),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      color: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Navigation(
                              icon: 'back_button',
                              onTap: () => Navigator.pop(context)),
                          Navigation(icon: 'home_button', onTap: () => {}),
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
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RetroHomeIcon extends StatelessWidget {
  final String appName;
  final String appIcon;

  RetroHomeIcon({@required this.appName, @required this.appIcon});

  @override
  Widget build(BuildContext context) {
    return Navigation(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => OpenApp(
                    appName: appName,
                    appIcon: appIcon,
                  )),
        );

        if (!Provider.of<RecentAppsData>(context, listen: false)
            .isRecentAppPresent(RecentAppsItem(
          appName: appName,
          appIcon: appIcon,
        ))) {
          Provider.of<RecentAppsData>(context, listen: false)
              .addToRecentList(RecentAppsItem(
            appName: appName,
            appIcon: appIcon,
          ));
        }
      },
      icon: appIcon,
    );
  }
}

class RetroHomeIconWithName extends StatelessWidget {
  final String appName;
  final String appIcon;

  RetroHomeIconWithName({@required this.appName, @required this.appIcon});

  @override
  Widget build(BuildContext context) {
    return IconWithName(
      icon: appIcon,
      iconName: appName,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => OpenApp(
                    appName: appName,
                    appIcon: appIcon,
                  )),
        );

        if (!Provider.of<RecentAppsData>(context, listen: false)
            .isRecentAppPresent(RecentAppsItem(
          appName: appName,
          appIcon: appIcon,
        ))) {
          Provider.of<RecentAppsData>(context, listen: false)
              .addToRecentList(RecentAppsItem(
            appName: appName,
            appIcon: appIcon,
          ));
        }
      },
    );
  }
}
