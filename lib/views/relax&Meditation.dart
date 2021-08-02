import 'package:flutter/material.dart';
import 'package:sleep_app/constants/constants.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:sleep_app/services/audioPlayer.dart';
import 'package:sleep_app/widgets/widgets.dart';

class Rain_Meditation extends StatefulWidget {
  @override
  _Rain_MeditationState createState() => _Rain_MeditationState();
}

class _Rain_MeditationState extends State<Rain_Meditation> {
  double _sliderValue = 0.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height * 0.60,
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        //print("$isPlaying  i m here");
                        if (!isPlaying1) {
                          isPlaying1 = true;
                          player1.loop(audioNames[0]);
                          audNames.add(audioPlayer1);
                          volumeTracker.putIfAbsent(
                              WeatherIcons.wi_sprinkle, () => audioPlayer1);
                          print("1 added");
                          setState(() {
                            tab1 = isPlayingColor;
                          });
                        } else {
                          isPlaying1 = false;
                          print("$isPlaying1  i m here");
                          audioPlayer1.stop();
                          audioPlayer1.release();
                          audNames.remove(audioPlayer1);
                          volumeTracker.remove(WeatherIcons.wi_sprinkle);
                          print("1 removed");
                          setState(() {
                            tab1 = transparent;
                          });
                        }
                      },
                      child: Container(
                        height: 80,
                        width: 100,
                        child: Stack(
                          children: [
                            Container(
                              padding: EdgeInsets.all(2),
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: tab1,
                              ),
                            ),
                            Positioned(
                              top: 2.5,
                              left: 2.5,
                              child: mainColumn(
                                WeatherIcons.wi_sprinkle,
                                "Rain Light",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      child: Slider(
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
                    ),
                  ],
                ),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    //print("$isPlaying  i m here");
                    if (!isPlaying2) {
                      isPlaying2 = true;
                      player2.loop(audioNames[1]);
                      audNames.add(audioPlayer2);
                      volumeTracker.putIfAbsent(
                          WeatherIcons.wi_alien, () => audioPlayer2);
                      print("2 added");
                      setState(() {
                        tab2 = isPlayingColor;
                      });
                    } else {
                      isPlaying2 = false;
                      print("$isPlaying2  i m here");
                      audioPlayer2.stop();
                      audioPlayer2.release();
                      audNames.remove(audioPlayer2);
                      volumeTracker.remove(WeatherIcons.wi_alien);
                      print("2 removed");
                      setState(() {
                        tab2 = transparent;
                      });
                    }
                  },
                  child: Container(
                    //alignment: Alignment.topCenter,
                    height: 80,
                    width: 100,
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: tab2,
                          ),
                        ),
                        Positioned(
                          top: 2.5,
                          left: -3.0,
                          child: mainColumn(
                            WeatherIcons.wi_sprinkle,
                            " Rain & Thunder",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    //print("$isPlaying  i m here");
                    if (!isPlaying3) {
                      isPlaying3 = true;
                      player3.loop(audioNames[2]);
                      audNames.add(audioPlayer3);
                      print("3 added");
                      setState(() {
                        tab3 = isPlayingColor;
                        isPlaying = true;
                        play = Icons.pause_outlined;
                      });
                    } else {
                      isPlaying3 = false;
                      print("$isPlaying3  i m here");
                      audioPlayer3.stop();
                      audioPlayer3.release();
                      audNames.remove(audioPlayer3);
                      print("3 removed");
                      print(audNames.length);
                      setState(() {
                        tab3 = transparent;
                      });
                    }
                  },
                  child: Container(
                    height: 80,
                    width: 100,
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: tab3,
                          ),
                        ),
                        Positioned(
                          top: 2.5,
                          left: -.5,
                          child: mainColumn(
                            WeatherIcons.wi_sprinkle,
                            "Birds & Branch",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    //print("$isPlaying  i m here");
                    if (!isPlaying4) {
                      isPlaying4 = true;
                      player4.loop(audioNames[3]);
                      audNames.add(audioPlayer4);
                      setState(() {
                        tab4 = isPlayingColor;
                      });
                    } else {
                      isPlaying4 = false;
                      print("$isPlaying4  i m here");
                      audioPlayer4.stop();
                      audioPlayer4.release();
                      audNames.remove(audioPlayer4);
                      setState(() {
                        tab4 = transparent;
                      });
                    }
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: tab4,
                          ),
                        ),
                        Positioned(
                          top: 2.5,
                          left: -1.0,
                          child: mainColumn(
                            WeatherIcons.wi_sprinkle,
                            "Singing Cricket",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    //print("$isPlaying  i m here");
                    if (!isPlaying5) {
                      isPlaying5 = true;
                      player5.loop(audioNames[4]);
                      audNames.add(audioPlayer5);
                      setState(() {
                        tab5 = isPlayingColor;
                      });
                    } else {
                      isPlaying5 = false;
                      print("$isPlaying5  i m here");
                      audioPlayer5.stop();
                      audioPlayer5.release();
                      audNames.remove(audioPlayer5);
                      setState(() {
                        tab5 = transparent;
                      });
                    }
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: tab5,
                          ),
                        ),
                        Positioned(
                          top: 2.5,
                          left: 2.5,
                          child: mainColumn(
                            WeatherIcons.wi_sprinkle,
                            "Heavy Rain\n Drops",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    //print("$isPlaying  i m here");
                    if (!isPlaying6) {
                      isPlaying6 = true;
                      player6.loop(audioNames[5]);
                      audNames.add(audioPlayer6);
                      setState(() {
                        tab6 = isPlayingColor;
                      });
                    } else {
                      isPlaying6 = false;
                      print("$isPlaying6  i m here");
                      audioPlayer6.stop();
                      audioPlayer6.release();
                      audNames.remove(audioPlayer6);
                      setState(() {
                        tab6 = transparent;
                      });
                    }
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: tab6,
                          ),
                        ),
                        Positioned(
                          top: 2.5,
                          left: 2.5,
                          child: mainColumn(
                            WeatherIcons.wi_sprinkle,
                            "Night Forest \nwith Insect",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    //print("$isPlaying  i m here");
                    if (!isPlaying7) {
                      isPlaying7 = true;
                      player7.loop(audioNames[8]);
                      audNames.add(audioPlayer7);
                      setState(() {
                        tab7 = isPlayingColor;
                      });
                    } else {
                      isPlaying7 = false;
                      print("$isPlaying7  i m here");
                      audioPlayer7.stop();
                      audioPlayer7.release();
                      audNames.remove(audioPlayer7);
                      setState(() {
                        tab7 = transparent;
                      });
                    }
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: tab7,
                          ),
                        ),
                        Positioned(
                          top: 2.5,
                          left: -.5,
                          child: mainColumn(
                            WeatherIcons.wi_sprinkle,
                            "Birds in Jungle",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    //print("$isPlaying  i m here");
                    if (!isPlaying8) {
                      isPlaying8 = true;
                      player8.loop(audioNames[7]);
                      audNames.add(audioPlayer8);
                      setState(() {
                        tab8 = isPlayingColor;
                      });
                    } else {
                      isPlaying8 = false;
                      print("$isPlaying8  i m here");
                      audioPlayer8.stop();
                      audioPlayer8.release();
                      audNames.remove(audioPlayer8);
                      setState(() {
                        tab8 = transparent;
                      });
                    }
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: tab8,
                          ),
                        ),
                        Positioned(
                          top: 2.5,
                          left: 2.5,
                          child: mainColumn(
                            WeatherIcons.wi_sprinkle,
                            "Dry Leaves \nRustling",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    //print("$isPlaying  i m here");
                    if (!isPlaying9) {
                      isPlaying9 = true;
                      player9.loop(audioNames[8]);
                      print(audNames.length);
                      audNames.add(audioPlayer9);
                      print(audNames.length);
                      setState(() {
                        tab9 = isPlayingColor;
                      });
                    } else {
                      isPlaying9 = false;
                      print("$isPlaying9  i m here");
                      audioPlayer9.stop();
                      audioPlayer9.release();
                      audNames.remove(audioPlayer9);
                      print(audNames.length);
                      setState(() {
                        tab9 = transparent;
                      });
                    }
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(2),
                          width: 65,
                          height: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: tab9,
                          ),
                        ),
                        Positioned(
                          top: 2.5,
                          left: 1.0,
                          child: mainColumn(
                            WeatherIcons.wi_sprinkle,
                            "Rain In Jungle\n Birds",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
