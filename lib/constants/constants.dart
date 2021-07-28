import 'package:flutter/material.dart';

void pushNavigator(BuildContext context, Widget route) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => route));
}

Color containerBG = Colors.grey.shade200;
Color fontColor = Colors.lightBlue;
Color transparent = Colors.transparent;
Color isPlayingColor = Colors.deepPurple;

Color tab1 = transparent;

Widget mainColumn(IconData icon, String name) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        padding: EdgeInsets.only(bottom: 4),
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: containerBG,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Icon(
          icon,
          color: fontColor,
          size: 25,
        ),
      ),
      SizedBox(height: 2.0),
      Text(
        name,
        style: TextStyle(fontSize: 10, color: fontColor),
      ),
    ],
  );
}
