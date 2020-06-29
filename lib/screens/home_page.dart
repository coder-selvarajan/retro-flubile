import 'package:flutter/material.dart';
import 'package:retroflubile/Nokia2.dart';
import 'package:retroflubile/screens/retro_smartphone.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Nokia2()),
            );
          },
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'images/nokia.png',
                    height: 320.0,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  child: Text('RETRO - Nokia Phone',
                      style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, RetroSmartphone.id);
          },
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'images/galaxy-ppc.png',
                    height: 320.0,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  child: Text('RETRO - Smart Phone',
                      style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
