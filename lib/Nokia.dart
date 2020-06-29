import 'package:flutter/material.dart';
import 'NokiaScreens/Homescreen.dart';

class Nokia extends StatelessWidget {
  Function buttonPress = (String key) {
    print(key);
  };

  @override
  Widget build(BuildContext context) {
    print(
        '${MediaQuery.of(context).size.width}, ${MediaQuery.of(context).size.height}');
    return AspectRatio(
      aspectRatio: 463 / 981,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: AspectRatio(
          aspectRatio: 360 / 760,
          child: Container(
            height: 760,
            width: 360,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Positioned(
                  top: 0.0,
                  bottom: 0.0,
                  child: Container(
                    height: 720,
                    width: 360,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/nokia4.png'),
                      ),
                    ),
                  ),
                ),
                NokiaButton(
                  imageName: 'buttonclear.png',
                  topPos: 379,
                  leftPos: 75,
                  width: 49,
                  height: 40,
                  onPress: () {
                    buttonPress('clear');
                  },
                ),
                NokiaButton(
                  imageName: 'buttonmenu.png',
                  topPos: 377,
                  leftPos: 136,
                  width: 87,
                  height: 32,
                  onPress: () {
                    buttonPress('menu');
                  },
                ),
                NokiaButton(
                  imageName: 'buttonleftarrow.png',
                  topPos: 405,
                  leftPos: 218,
                  width: 42,
                  height: 47,
                  onPress: () {
                    buttonPress('left');
                  },
                ),
                NokiaButton(
                  imageName: 'buttonrightarrow.png',
                  topPos: 385,
                  leftPos: 247,
                  width: 40,
                  height: 36,
                  onPress: () {
                    buttonPress('right');
                  },
                ),
                NokiaButton(
                  imageName: 'button1.png',
                  topPos: 466,
                  leftPos: 84,
                  width: 55,
                  height: 35,
                  onPress: () {
                    buttonPress('1');
                  },
                ),
                NokiaButton(
                  imageName: 'button2.png',
                  topPos: 472,
                  leftPos: 152,
                  width: 57,
                  height: 32,
                  onPress: () {
                    buttonPress('2');
                  },
                ),
                NokiaButton(
                  imageName: 'button3.png',
                  topPos: 469,
                  leftPos: 230,
                  width: 51,
                  height: 32,
                  onPress: () {
                    buttonPress('3');
                  },
                ),
                NokiaButton(
                  imageName: 'button4.png',
                  topPos: 515,
                  leftPos: 80,
                  width: 69,
                  height: 39,
                  onPress: () {
                    buttonPress('4');
                  },
                ),
                NokiaButton(
                  imageName: 'button5.png',
                  topPos: 524,
                  leftPos: 152,
                  width: 61,
                  height: 33,
                  onPress: () {
                    buttonPress('5');
                  },
                ),
                NokiaButton(
                  imageName: 'button6.png',
                  topPos: 518,
                  leftPos: 226,
                  width: 59,
                  height: 34,
                  onPress: () {
                    buttonPress('6');
                  },
                ),
                NokiaButton(
                  imageName: 'button7.png',
                  topPos: 570,
                  leftPos: 80,
                  width: 62,
                  height: 35,
                  onPress: () {
                    buttonPress('7');
                  },
                ),
                NokiaButton(
                  imageName: 'button8.png',
                  topPos: 575,
                  leftPos: 152,
                  width: 60,
                  height: 32,
                  onPress: () {
                    buttonPress('8');
                  },
                ),
                NokiaButton(
                  imageName: 'button9.png',
                  topPos: 570,
                  leftPos: 217,
                  width: 65,
                  height: 35,
                  onPress: () {
                    buttonPress('9');
                  },
                ),
                NokiaButton(
                  imageName: 'buttonstar.png',
                  topPos: 621,
                  leftPos: 82,
                  width: 56,
                  height: 33,
                  onPress: () {
                    buttonPress('*');
                  },
                ),
                NokiaButton(
                  imageName: 'button0.png',
                  topPos: 626,
                  leftPos: 150,
                  width: 63,
                  height: 31,
                  onPress: () {
                    buttonPress('0');
                  },
                ),
                NokiaButton(
                  imageName: 'buttonhash.png',
                  topPos: 619,
                  leftPos: 224,
                  width: 52,
                  height: 34,
                  onPress: () {
                    buttonPress('#');
                  },
                ),
                Positioned(
                  top: 200,
                  left: 85,
                  child: Screen(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//class NokiaButtons extends StatelessWidget {
//  NokiaButtons(
//      {this.imageName,
//      this.topPos,
//      this.leftPos,
//      this.width,
//      this.height,
//      this.onPress});
//
//  final String imageName;
//  final Function onPress;
//  double topPos;
//  double leftPos;
//  double width;
//  double height;
//
//  @override
//  Widget build(BuildContext context) {
//    return Positioned(
//      top: topPos,
//      left: leftPos,
//      width: width,
//      height: height,
//      child: GestureDetector(
//        onTapDown: (tap) {
//          setState(() {
//            // when it is pressed
//            this.width = width - 10;
//          });
//        },
//        onTap: onPress,
//        child: Container(
//          child: Image.asset('images/$imageName'),
//        ),
//      ),
//    );
//  }
//}

class NokiaButton extends StatefulWidget {
//  final String serverIP;
  final String imageName;
  final Function onPress;
  double topPos;
  double leftPos;
  double width;
  double height;

  NokiaButton({
    Key key,
    this.imageName,
    this.topPos,
    this.leftPos,
    this.width,
    this.height,
    this.onPress,
  }) : super(key: key);

  @override
  _NokiaButtonState createState() => _NokiaButtonState();
}

class _NokiaButtonState extends State<NokiaButton> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.topPos,
      left: widget.leftPos,
      width: widget.width,
      height: widget.height,
      child: Material(
//        elevation: 50.0,
        color: Colors.transparent,
        clipBehavior: Clip.antiAlias,
        child: Ink.image(
          image: AssetImage('images/${widget.imageName}'),
          fit: BoxFit.cover,
          child: InkWell(
            onTap: widget.onPress,
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            splashColor: Colors.black12,
            highlightColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
