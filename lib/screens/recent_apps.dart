import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 40.0),
              child: ListView(
                padding: EdgeInsets.only(top: 15.0, right: 15.0, left: 15.0),
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(bottom: 15.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Market',
                                style: GoogleFonts.roboto(
                                    color: Colors.white, fontSize: 16.0)),
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
                        Stack(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              width: 180.0,
                              height: 180.0,
                            ),
                            Positioned(
                              top: 15.0,
                              left: 15.0,
                              child: Image.asset('images/market.png',
                                  height: 50.0, width: 50.0),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 15.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Browser',
                                style: GoogleFonts.roboto(
                                    color: Colors.white, fontSize: 16.0)),
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
                        Stack(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              width: 180.0,
                              height: 180.0,
                            ),
                            Positioned(
                              top: 15.0,
                              left: 15.0,
                              child: Image.asset('images/browser.png',
                                  height: 50.0, width: 50.0),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 15.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Gallery',
                                style: GoogleFonts.roboto(
                                    color: Colors.white, fontSize: 16.0)),
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
                        Stack(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              width: 180.0,
                              height: 180.0,
                            ),
                            Positioned(
                              top: 15.0,
                              left: 15.0,
                              child: Image.asset('images/gallery.png',
                                  height: 50.0, width: 50.0),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 15.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Gmail',
                                style: GoogleFonts.roboto(
                                    color: Colors.white, fontSize: 16.0)),
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
                        Stack(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              width: 180.0,
                              height: 180.0,
                            ),
                            Positioned(
                              top: 15.0,
                              left: 15.0,
                              child: Image.asset('images/gmail.png',
                                  height: 50.0, width: 50.0),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 15.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Clock',
                                style: GoogleFonts.roboto(
                                    color: Colors.white, fontSize: 16.0)),
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
                        Stack(
                          children: <Widget>[
                            Container(
                              color: Colors.white,
                              width: 180.0,
                              height: 180.0,
                            ),
                            Positioned(
                              top: 15.0,
                              left: 15.0,
                              child: Image.asset('images/clock.png',
                                  height: 50.0, width: 50.0),
                            )
                          ],
                        )
                      ],
                    ),
                  )
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
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Image.asset('images/back_button.png'),
                    ),
                    Image.asset('images/home_button.png'),
                    InkWell(
                      onTap: () {},
                      child: Image.asset('images/recent_button.png'),
                    )
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
