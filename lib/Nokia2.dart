import 'package:flutter/material.dart';
import 'NokiaScreens/Homescreen.dart';
import 'dart:math';

class Nokia2 extends StatelessWidget {
  Function buttonPress = (String key) {
    // all screen display login can go here..
    //every button click comes here..

    print(key);
  };

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    print('Screen screenWidth : $screenWidth');
    print('Screen height : $screenHeight');

    double imageWidth = screenHeight * (463 / 981);

    double buttonGridTop = screenHeight * 0.605;
    double buttonGridWidth = imageWidth * 0.595;
    double buttonGridLeft = (screenWidth - buttonGridWidth) / 2;
    double buttonGridHeight = screenHeight * 0.267;

    double nokiaScreenLeftOffset = screenHeight * 0.005;
    double nokiaScreenTop = screenHeight * 0.266;
    double nokiaScreenWidth = imageWidth * 0.60;
    double nokiaScreenLeft =
        ((screenWidth - nokiaScreenWidth) / 2) + nokiaScreenLeftOffset;
    double nokiaScreenHeight = screenHeight * 0.195;

    double menuTopOffset = screenHeight * 0.008;
    double clearLeftOffset = screenWidth * 0.039;

    double lArrowTopOffset = screenHeight * 0.04;
    double lArrowLeftOffset = imageWidth * 0.11;
    double rArrowLeftOffset = imageWidth * 0.18;
    double rArrowTopOffset = screenHeight * 0.001;

    double arrowSize = imageWidth * 0.10;

    return Container(
      color: Colors.black,
      child: Stack(
        children: <Widget>[
          Center(
            child: Container(
              child: Image.asset('images/nokia5.png'),
            ),
          ),
          Positioned(
            top: screenHeight / 2 + menuTopOffset,
            left: screenWidth / 2 - 10,
            height: 10,
            child: Material(
              color: Colors.transparent,
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () {
                  buttonPress('menu');
                },
//                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                splashColor: Colors.black12,
                highlightColor: Colors.transparent,
                child: Container(
                  child: Icon(
                    Icons.maximize,
                    size: 30.0,
                    color: Colors.cyan,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight / 2 + menuTopOffset,
            left: buttonGridLeft + clearLeftOffset,
//            height: 10,
            child: Material(
              color: Colors.transparent,
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () {
                  buttonPress('clear');
                },
//                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                splashColor: Colors.black12,
                highlightColor: Colors.transparent,
                child: Container(
                  child: Text(
                    'C',
                    style: TextStyle(
                      fontFamily: 'ArialNarrow',
                      fontSize: screenHeight * 0.025,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight / 2 + lArrowTopOffset,
            left: screenWidth / 2 + lArrowLeftOffset,
            child: Material(
              color: Colors.transparent,
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () {
                  buttonPress('left');
                },
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                splashColor: Colors.black12,
                highlightColor: Colors.transparent,
                child: Container(
                  child: Transform.rotate(
                    angle: 310 * pi / 180,
                    child: Icon(
                      Icons.arrow_left,
                      size: arrowSize,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight / 2 + rArrowTopOffset,
            left: screenWidth / 2 + rArrowLeftOffset,
            child: Material(
              color: Colors.transparent,
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () {
                  buttonPress('right');
                },
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                splashColor: Colors.black12,
                highlightColor: Colors.transparent,
                child: Container(
                  child: Transform.rotate(
                    angle: 120 * pi / 180,
                    child: Icon(
                      Icons.arrow_left,
                      size: arrowSize,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: nokiaScreenTop,
            left: nokiaScreenLeft,
            child: Homescreen()
                .homeScreen(context, nokiaScreenHeight, nokiaScreenWidth),
          ),
          Positioned(
            top: buttonGridTop,
            left: buttonGridLeft,
            width: buttonGridWidth,
            height: buttonGridHeight,
            child: Container(
//                color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: NokiaButton2(
                            textOne: '1',
                            textTwo: '➿',
                            onPress: () {
                              buttonPress('1');
                            },
                            srnHeight: screenHeight,
                          ),
                        ),
                        Expanded(
                          child: NokiaButton2(
                            textOne: '2',
                            textTwo: 'abc',
                            onPress: () {
                              buttonPress('2');
                            },
                            srnHeight: screenHeight,
                          ),
                        ),
                        Expanded(
                          child: NokiaButton2(
                            textOne: '3',
                            textTwo: 'def',
                            onPress: () {
                              buttonPress('3');
                            },
                            srnHeight: screenHeight,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: NokiaButton2(
                            textOne: '4',
                            textTwo: 'ghi',
                            onPress: () {
                              buttonPress('4');
                            },
                            srnHeight: screenHeight,
                          ),
                        ),
                        Expanded(
                          child: NokiaButton2(
                            textOne: '5',
                            textTwo: 'jkl',
                            onPress: () {
                              buttonPress('5');
                            },
                            srnHeight: screenHeight,
                          ),
                        ),
                        Expanded(
                          child: NokiaButton2(
                            textOne: '6',
                            textTwo: 'mno',
                            onPress: () {
                              buttonPress('6');
                            },
                            srnHeight: screenHeight,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: NokiaButton2(
                            textOne: '7',
                            textTwo: 'pqrs',
                            onPress: () {
                              buttonPress('7');
                            },
                            srnHeight: screenHeight,
                          ),
                        ),
                        Expanded(
                          child: NokiaButton2(
                            textOne: '8',
                            textTwo: 'tuv',
                            onPress: () {
                              buttonPress('8');
                            },
                            srnHeight: screenHeight,
                          ),
                        ),
                        Expanded(
                          child: NokiaButton2(
                            textOne: '9',
                            textTwo: 'wxyz',
                            onPress: () {
                              buttonPress('9');
                            },
                            srnHeight: screenHeight,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: NokiaButton2(
                            textOne: '*',
                            textTwo: '+',
                            onPress: () {
                              buttonPress('*');
                            },
                            srnHeight: screenHeight,
                          ),
                        ),
                        Expanded(
                          child: NokiaButton2(
                            textOne: '0',
                            textTwo: '-',
                            onPress: () {
                              buttonPress('0');
                            },
                            srnHeight: screenHeight,
                          ),
                        ),
                        Expanded(
                          child: NokiaButton2(
                            textOne: '#',
                            textTwo: '⇧',
                            onPress: () {
                              buttonPress('#');
                            },
                            srnHeight: screenHeight,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: SafeArea(
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    child: Icon(
                  Icons.close,
                  size: 30.0,
                  color: Colors.white,
                )),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NokiaButton2 extends StatefulWidget {
//  final String serverIP;
  final Function onPress;
  String textOne;
  String textTwo;

  double srnHeight;

  NokiaButton2(
      {Key key, this.onPress, this.textOne, this.textTwo, this.srnHeight})
      : super(key: key);

  @override
  _NokiaButton2State createState() => _NokiaButton2State();
}

class _NokiaButton2State extends State<NokiaButton2> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: widget.onPress,
//        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        splashColor: Colors.black12,
        highlightColor: Colors.transparent,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                widget.textOne,
                style: TextStyle(
                  fontFamily: 'ArialNarrow',
                  fontSize: widget.srnHeight * 0.025,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              Text(
                widget.textTwo,
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: widget.srnHeight * 0.0185,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
