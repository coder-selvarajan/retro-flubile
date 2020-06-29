import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:retroflubile/screens/retro_smartphone.dart';
import 'package:retroflubile/widgets/navigation.dart';
import 'package:retroflubile/widgets/recent_apps_data.dart';

class RecentApps extends StatefulWidget {
  @override
  _RecentAppsState createState() => _RecentAppsState();
}

class _RecentAppsState extends State<RecentApps> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            Provider.of<RecentAppsData>(context).recentApps.length > 0
                ? Container(
                    margin: EdgeInsets.only(bottom: 40.0),
                    child: ListView.builder(
                      padding:
                          EdgeInsets.only(top: 15.0, right: 15.0, left: 15.0),
                      itemCount: Provider.of<RecentAppsData>(context)
                          .recentApps
                          .length,
                      reverse: true,
                      itemBuilder: (context, index) {
                        return RecentAppCard(
                            appIcon: Provider.of<RecentAppsData>(context)
                                .recentApps[index]
                                .appIcon,
                            appName: Provider.of<RecentAppsData>(context)
                                .recentApps[index]
                                .appName,
                            key: Key(Provider.of<RecentAppsData>(context)
                                .recentApps[index]
                                .appName),
                            onDismissed: (direction) {
                              setState(() {
                                Provider.of<RecentAppsData>(context,
                                        listen: false)
                                    .removeFromRecentList(index);
                              });
                            });
                      },
                    ),
                  )
                : Center(
                    child: Text(
                      'No Recent Apps',
                      style: GoogleFonts.roboto(
                          color: Colors.white, fontSize: 15.0),
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
                      onTap: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RecentAppCard extends StatelessWidget {
  final String appName;
  final String appIcon;
  final Key key;
  final Function onDismissed;

  RecentAppCard(
      {@required this.appName,
      @required this.appIcon,
      @required this.key,
      @required this.onDismissed});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: key,
      onDismissed: onDismissed,
      child: Container(
        padding: EdgeInsets.only(bottom: 15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 90.0,
                  child: Text(
                    appName,
                    style:
                        GoogleFonts.roboto(color: Colors.white, fontSize: 16.0),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  width: 90.0,
                  child: Divider(
                    color: Colors.blueGrey,
                    thickness: 1.5,
                  ),
                )
              ],
            ),
            SizedBox(width: 10.0),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.only(right: 50.0),
                    height: 180.0,
                  ),
                  Positioned(
                    top: 15.0,
                    left: 15.0,
                    child: Image.asset('images/$appIcon.png',
                        height: 50.0, width: 50.0),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
