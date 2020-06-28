import 'package:flutter/material.dart';
import 'Homescreen.dart';

void main() {
  runApp(FlubileApp());
}

class FlubileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.white,
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

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return 
    // return Row(
    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   children: <Widget>[
    //     Expanded(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: <Widget>[
    //           Container(
    //             child: Image.asset(
    //               'images/nokia.png',
    //               height: 320.0,
    //               fit: BoxFit.cover,
    //             ),
    //           ),
    //           SizedBox(
    //             height: 20.0,
    //           ),
    //           Container(
    //             child: Text('RETRO - Nokia Phone'),
    //           ),
    //         ],
    //       ),
    //     ),
    //     Expanded(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: <Widget>[
    //           Container(
    //             child: Image.asset(
    //               'images/galaxy-ppc.png',
    //               height: 320.0,
    //               fit: BoxFit.cover,
    //             ),
    //           ),
    //           SizedBox(
    //             height: 20.0,
    //           ),
    //           Container(
    //             child: Text('RETRO - Smart Phone'),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ],
    // );
  }
}
