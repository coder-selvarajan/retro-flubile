import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  final String icon;
  final Function onTap;

  Navigation({@required this.icon, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Image.asset('images/$icon.png'),
    );
  }
}
