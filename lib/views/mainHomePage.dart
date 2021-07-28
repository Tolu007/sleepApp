import 'package:flutter/material.dart';
import 'package:sleep_app/constants/constants.dart';
import 'package:sleep_app/services/audioPlayer.dart';
import 'package:sleep_app/views/nature&Forest.dart';
import 'package:sleep_app/views/rain&Water.dart';
import 'package:sleep_app/views/relax&Meditation.dart';

import 'city&Household.dart';

class mainHomePage extends StatefulWidget {
  @override
  _mainHomePageState createState() => _mainHomePageState();
}

class _mainHomePageState extends State<mainHomePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int _currentIndex = 0;

  List<Widget> list = [
    Tab(
      text: "Rain & Water",
    ),
    Tab(
      text: "Nature & Forest",
    ),
    Tab(
      text: "City & Household",
    ),
    Tab(
      text: "Relax & Meditation",
    )
  ];

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: list.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 60,
        bottom: TabBar(
          isScrollable: true,
          onTap: (index) {},
          controller: _controller,
          tabs: list,
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.70,
            child: TabBarView(
              controller: _controller,
              children: <Widget>[
                Rain_Meditation(),
                Nature_Forest(),
                City_Household(),
                Rain_Water(),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.20,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 5,
                        blurRadius: 3,
                        offset: Offset(3, 3),
                        color: Colors.grey.withOpacity(.5))
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  color: containerBG),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.6),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          )),
                      child: IconButton(
                        onPressed: () {
                          print("stop!!!");
                          stop();
                        },
                        icon: Icon(
                          Icons.pause_outlined,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
