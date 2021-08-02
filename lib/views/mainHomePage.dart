import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sleep_app/constants/constants.dart';
import 'package:sleep_app/services/audioPlayer.dart';
import 'package:sleep_app/views/nature&Forest.dart';
import 'package:sleep_app/views/rain&Water.dart';
import 'package:sleep_app/views/relax&Meditation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleep_app/widgets/widgets.dart';

import 'city&Household.dart';

class mainHomePage extends StatefulWidget {
  @override
  _mainHomePageState createState() => _mainHomePageState();
}

List audioPlayerStore = [];

class _mainHomePageState extends State<mainHomePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  double _sliderValue = 0.5;
  List<Widget> list = [
    Tab(
      text: "Rain & Water",
    ),
    Tab(
      text: "Nature & Forest",
    ),
    // Tab(
    //   text: "City & Household",
    // ),
    // Tab(
    //   text: "Relax & Meditation",
    // )
  ];

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: list.length, vsync: this);
  }

//use key to retrieve data from map
  // void deleteVolumeListItem(AudioPlayer plays) {
  //   setState(() {
  //     volumeTracker.remove(plays);
  //     //print("Index: $index");
  //     // AudioPlayer plays = volumeTracker.values.elementAt(index);
  //     plays.stop();
  //   });
  // }

  Widget _buildListView(BuildContext context, int index) {
    return Container(
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Icon(
              volumeTracker.keys.elementAt(index),
            ),
            Slider(
              value: _sliderValue.toDouble(),
              min: 0.0,
              max: 1.0,
              onChanged: (newValue) {
                setState(() {
                  _sliderValue = newValue;
                  print("Slider $_sliderValue");
                });
              },
            ),
            // IconButton(
            //   onPressed: () {
            //     // volumeTracker.remove(WeatherIcons.wi_alien);
            //     // print("deleting $index");
            //     deleteVolumeListItem(audioPlayerStore[index]);
            //     print(volumeTracker.length);
            //   },
            //   icon: Icon(
            //     Icons.shopping_basket_outlined,
            //     size: 20,
            //     color: mainPurpleColor,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainIconColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        toolbarHeight: 60,
        bottom: TabBar(
          indicatorColor: mainPurpleColor,
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
            height: MediaQuery.of(context).size.height * 0.60,
            child: TabBarView(
              controller: _controller,
              children: <Widget>[
                Rain_Meditation(),
                Nature_Forest(),
                // City_Household(),
                // Rain_Water(),
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
                  color: modalColor),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.6),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          )),
                      child: IconButton(
                        onPressed: () {
                          print("i am pressed");
                          if (isPlaying) {
                            print("pause!!!");
                            for (int $i = 0; $i < audNames.length; $i++) {
                              print(audNames[$i]);
                              pause(audNames[$i]);
                              isPlaying = false;
                              setState(() {
                                play = Icons.play_arrow_outlined;
                              });
                            }
                          } else if (!isPlaying && audNames.isNotEmpty) {
                            for (int $i = 0; $i < audNames.length; $i++) {
                              print(audNames[$i]);
                              resume(audNames[$i]);
                              isPlaying = true;
                              setState(() {
                                play = Icons.pause_outlined;
                              });
                            }
                          }
                        },
                        icon: Icon(
                          play,
                          color: Colors.deepPurple,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        audioPlayerStore = volumeTracker.values.toList();
                        if (volumeTracker.isNotEmpty) {
                          // modalSheet(context);
                          int length = volumeTracker.length;
                          print("Length is $length");
                          return showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  ListView.builder(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemCount: volumeTracker.length,
                                    itemBuilder: _buildListView,
                                  ),
                                ],
                              );
                            },
                          );
                        } else {
                          //nothing happens
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(200, 20),
                        elevation: 5,
                        padding: EdgeInsets.all(4.0),
                        primary: Colors.deepPurple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      child: Text(
                        "Control Volumes",
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
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
