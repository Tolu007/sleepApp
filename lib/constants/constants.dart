import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void pushNavigator(BuildContext context, Widget route) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => route));
}

Color containerBG = Colors.grey.shade200;
Color transparent = Colors.transparent;
Color isPlayingColor = HexColor('#ACFFAD');
Color mainPurpleColor = HexColor('#54436B');
Color mainIconColor = HexColor('#50CB93');
Color fontColor = HexColor('#54436B');
Color modalColor = HexColor('#71EFA3');

//button active/not active state
Color tab1 = transparent;
Color tab2 = transparent;
Color tab3 = transparent;
Color tab4 = transparent;
Color tab5 = transparent;
Color tab6 = transparent;
Color tab7 = transparent;
Color tab8 = transparent;
Color tab9 = transparent;
Color tab10 = transparent;

//pause and play button state
bool isPlaying = false;
//pause and play button icon data state
IconData play = Icons.play_arrow_outlined;

//first screen icon states from the first row
bool isPlaying1 = false;
bool isPlaying2 = false;
bool isPlaying3 = false;
bool isPlaying4 = false;
bool isPlaying5 = false;
bool isPlaying6 = false;
bool isPlaying7 = false;
bool isPlaying8 = false;
bool isPlaying9 = false;

//second screen icon state from the first row
bool isPlaying10 = false;

//list to track items in volume list
Map<IconData, dynamic> volumeTracker = {};
