import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:retroflubile/screens/main_menu.dart';
import 'package:retroflubile/widgets/icon_with_name.dart';

class RetroSmartphone extends StatelessWidget {
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
                        IconWithName(icon: 'camera', iconName: 'Camera'),
                        IconWithName(icon: 'gallery', iconName: 'Gallery'),
                        IconWithName(icon: 'settings', iconName: 'Settings'),
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
                        Image.asset('images/phone.png'),
                        Image.asset('images/people.png'),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return MainMenu();
                            }));
                          },
                          child: Image.asset('images/main_menu.png'),
                        ),
                        Image.asset('images/messaging.png'),
                        Image.asset('images/browser.png'),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      color: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          InkWell(
                            onTap: () => Navigator.pop(context),
                            child: Image.asset('images/back_button.png'),
                          ),
                          Image.asset('images/home_button.png'),
                          Image.asset('images/recent_button.png')
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
