import 'package:flutter/material.dart';

class Nokia extends StatelessWidget {
  Function buttonPress = (String key) {
    // all screen display login can go here..
    //every button click comes here..

    print(key);
  };

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 0.0,
          bottom: 0.0,
          child: Container(
            child: Image.asset('images/nokia4.png'),
          ),
        ),
        NokiaButton(
          imageName: 'buttonclear.png',
          topPos: 450,
          leftPos: 85,
          width: 49,
          height: 40,
          onPress: () {
            buttonPress('clear');
          },
        ),
        NokiaButton(
          imageName: 'buttonmenu.png',
          topPos: 443,
          leftPos: 168,
          width: 87,
          height: 32,
          onPress: () {
            buttonPress('menu');
          },
        ),
        NokiaButton(
          imageName: 'buttonleftarrow.png',
          topPos: 483,
          leftPos: 257,
          width: 42,
          height: 47,
          onPress: () {
            buttonPress('left');
          },
        ),
        NokiaButton(
          imageName: 'buttonrightarrow.png',
          topPos: 463,
          leftPos: 282,
          width: 40,
          height: 36,
          onPress: () {
            buttonPress('right');
          },
        ),
        NokiaButton(
          imageName: 'button1.png',
          topPos: 555,
          leftPos: 100,
          width: 55,
          height: 35,
          onPress: () {
            buttonPress('1');
          },
        ),
        NokiaButton(
          imageName: 'button2.png',
          topPos: 560,
          leftPos: 180,
          width: 57,
          height: 32,
          onPress: () {
            buttonPress('2');
          },
        ),
        NokiaButton(
          imageName: 'button3.png',
          topPos: 555,
          leftPos: 270,
          width: 51,
          height: 32,
          onPress: () {
            buttonPress('3');
          },
        ),
        NokiaButton(
          imageName: 'button4.png',
          topPos: 610,
          leftPos: 97,
          width: 69,
          height: 39,
          onPress: () {
            buttonPress('4');
          },
        ),
        NokiaButton(
          imageName: 'button5.png',
          topPos: 620,
          leftPos: 180,
          width: 61,
          height: 33,
          onPress: () {
            buttonPress('5');
          },
        ),
        NokiaButton(
          imageName: 'button6.png',
          topPos: 617,
          leftPos: 265,
          width: 59,
          height: 34,
          onPress: () {
            buttonPress('6');
          },
        ),
        NokiaButton(
          imageName: 'button7.png',
          topPos: 673,
          leftPos: 97,
          width: 62,
          height: 35,
          onPress: () {
            buttonPress('7');
          },
        ),
        NokiaButton(
          imageName: 'button8.png',
          topPos: 680,
          leftPos: 180,
          width: 60,
          height: 32,
          onPress: () {
            buttonPress('8');
          },
        ),
        NokiaButton(
          imageName: 'button9.png',
          topPos: 675,
          leftPos: 265,
          width: 65,
          height: 35,
          onPress: () {
            buttonPress('9');
          },
        ),
        NokiaButton(
          imageName: 'buttonstar.png',
          topPos: 732,
          leftPos: 100,
          width: 56,
          height: 33,
          onPress: () {
            buttonPress('*');
          },
        ),
        NokiaButton(
          imageName: 'button0.png',
          topPos: 742,
          leftPos: 180,
          width: 63,
          height: 31,
          onPress: () {
            buttonPress('0');
          },
        ),
        NokiaButton(
          imageName: 'buttonhash.png',
          topPos: 733,
          leftPos: 268,
          width: 52,
          height: 34,
          onPress: () {
            buttonPress('#');
          },
        ),
      ],
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
        clipBehavior: Clip.hardEdge,
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
