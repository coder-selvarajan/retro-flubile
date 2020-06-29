import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:retroflubile/models/recent_apps_item.dart';
import 'package:retroflubile/screens/open_app.dart';
import 'package:retroflubile/screens/recent_apps.dart';
import 'package:retroflubile/screens/retro_smartphone.dart';
import 'package:retroflubile/widgets/icon_with_name.dart';
import 'package:retroflubile/widgets/navigation.dart';
import 'package:retroflubile/widgets/recent_apps_data.dart';

class MainMenu extends StatelessWidget {
  final List<IconWithName> _iconWithNameList = [
    IconWithName(
      icon: 'browser',
      iconName: 'Browser',
    ),
    IconWithName(
      icon: 'calculator',
      iconName: 'Calculator',
    ),
    IconWithName(
      icon: 'calendar',
      iconName: 'Calendar',
    ),
    IconWithName(
      icon: 'camera',
      iconName: 'Camera',
    ),
    IconWithName(
      icon: 'clock',
      iconName: 'Clock',
    ),
    IconWithName(
      icon: 'downloads',
      iconName: 'Downloads',
    ),
    IconWithName(
      icon: 'email',
      iconName: 'Email',
    ),
    IconWithName(
      icon: 'gallery',
      iconName: 'Gallery',
    ),
    IconWithName(
      icon: 'gmail',
      iconName: 'Gmail',
    ),
    IconWithName(
      icon: 'clock',
      iconName: 'Clock',
    ),
    IconWithName(
      icon: 'market',
      iconName: 'Market',
    ),
    IconWithName(
      icon: 'messaging',
      iconName: 'Messaging',
    ),
    IconWithName(
      icon: 'music',
      iconName: 'Music',
    ),
    IconWithName(
      icon: 'news_weather',
      iconName: 'News & Weather',
    ),
    IconWithName(
      icon: 'people',
      iconName: 'People',
    ),
    IconWithName(
      icon: 'phone',
      iconName: 'Phone',
    ),
    IconWithName(
      icon: 'facebook',
      iconName: 'Facebook',
    ),
    IconWithName(
      icon: 'google_talk',
      iconName: 'Google Talk',
    ),
    IconWithName(
      icon: 'radio',
      iconName: 'FM radio',
    ),
    IconWithName(
      icon: 'sim_toolkit',
      iconName: 'Sim Toolkit',
    ),
    IconWithName(
      icon: 'twitter',
      iconName: 'Twitter',
    ),
    IconWithName(
      icon: 'voice_recorder',
      iconName: 'Voice Recorder',
    ),
    IconWithName(
      icon: 'yahoo',
      iconName: 'Yahoo',
    ),
    IconWithName(
      icon: 'youtube',
      iconName: 'Youtube',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            leading: Container(),
            flexibleSpace: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.lightBlueAccent)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: 190.0,
                    child: TabBar(
                      labelColor: Colors.white,
                      labelStyle: GoogleFonts.roboto(fontSize: 17.0),
                      indicatorColor: Colors.lightBlueAccent,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 5.0,
                      tabs: [
                        Tab(text: 'Apps'),
                        Tab(text: 'Widgets'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OpenApp(
                                    appName: 'Market',
                                    appIcon: 'market',
                                  )),
                        );

                        if (!Provider.of<RecentAppsData>(context, listen: false)
                            .isRecentAppPresent(RecentAppsItem(
                          appName: 'Market',
                          appIcon: 'market',
                        ))) {
                          Provider.of<RecentAppsData>(context, listen: false)
                              .addToRecentList(RecentAppsItem(
                            appName: 'Market',
                            appIcon: 'market',
                          ));
                        }
                      },
                      child: Image.asset(
                        'images/market.png',
                        height: 38.0,
                      ),
                    ),
                  )
                ],
              ),
            ),
            backgroundColor: Colors.black,
          ),
          body: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 40.0),
                child: TabBarView(
                  children: [
                    GridView.builder(
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      itemCount: _iconWithNameList.length,
                      itemBuilder: (context, index) {
                        return IconWithName(
                            icon: _iconWithNameList[index].icon,
                            iconName: _iconWithNameList[index].iconName,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OpenApp(
                                          appName:
                                              _iconWithNameList[index].iconName,
                                          appIcon:
                                              _iconWithNameList[index].icon,
                                        )),
                              );

                              if (!Provider.of<RecentAppsData>(context,
                                      listen: false)
                                  .isRecentAppPresent(RecentAppsItem(
                                appName: _iconWithNameList[index].iconName,
                                appIcon: _iconWithNameList[index].icon,
                              ))) {
                                Provider.of<RecentAppsData>(context,
                                        listen: false)
                                    .addToRecentList(RecentAppsItem(
                                  appName: _iconWithNameList[index].iconName,
                                  appIcon: _iconWithNameList[index].icon,
                                ));
                              }
                            });
                      },
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 10 / 13,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          crossAxisCount: 4),
                    ),
                    Center(
                      child: Text(
                        'No Widget',
                        style: GoogleFonts.roboto(
                            color: Colors.white, fontSize: 15.0),
                      ),
                    ),
                  ],
                ),
              ),
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
        ),
      ),
    );
  }
}
