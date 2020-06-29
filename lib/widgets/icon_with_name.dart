import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IconWithName extends StatelessWidget {
  final String icon;
  final String iconName;
  final Function onTap;

  IconWithName({@required this.icon, @required this.iconName, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: <Widget>[
          Image.asset('images/$icon.png', height: 50.0, width: 50.0),
          SizedBox(height: 10.0),
          Text(
            iconName,
            style: GoogleFonts.roboto(color: Colors.white, fontSize: 13.0),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
