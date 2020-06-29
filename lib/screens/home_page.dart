import 'package:flutter/material.dart';
import 'package:retroflubile/Nokia.dart';
import 'package:retroflubile/screens/retro_smartphone.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        children: <Widget>[
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Nokia()),
              );
            },
            leading: Image.asset('images/nokia.png'),
            title: Text('Nokia 3210'),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return RetroSmartphone();
                  },
                ),
              );
            },
            leading: Image.asset('images/galaxy-ppc.png'),
            title: Text('Samsung'),
          ),
        ],
      ),
    );
  }
}
