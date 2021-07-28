import 'package:flutter/material.dart';
import 'package:sleep_app/constants/constants.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:sleep_app/services/audioPlayer.dart';

class Rain_Meditation extends StatefulWidget {
  @override
  _Rain_MeditationState createState() => _Rain_MeditationState();
}

class _Rain_MeditationState extends State<Rain_Meditation> {
  bool isPlaying = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  //print("$isPlaying  i m here");
                  if (!isPlaying) {
                    isPlaying = true;
                    loopCall(0);
                    setState(() {
                      tab1 = isPlayingColor;
                    });
                  } else {
                    isPlaying = false;
                    print("$isPlaying  i m here");
                    stop();
                    setState(() {
                      tab1 = transparent;
                    });
                  }
                },
                child: Container(
                  padding: EdgeInsets.all(2),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: tab1,
                  ),
                  child: mainColumn(
                    WeatherIcons.wi_sprinkle,
                    "Rain Light",
                  ),
                ),
              ),
              GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () => loopCall(1),
                  child: mainColumn(WeatherIcons.wi_showers, "Rain medium")),
              GestureDetector(
                  onTap: () => loopCall(3),
                  behavior: HitTestBehavior.translucent,
                  child: mainColumn(
                      WeatherIcons.wi_storm_showers, "Rain thunder")),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              mainColumn(WeatherIcons.wi_umbrella, "Rain under\numbrella"),
              mainColumn(Icons.cloud_circle, "Rain on roof"),
              mainColumn(Icons.cloud_circle, "Rain on window"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              mainColumn(Icons.cloud_circle, "Rain on leaves"),
              mainColumn(Icons.cloud_circle, "Rain water"),
              mainColumn(Icons.cloud_circle, "Rain ocean"),
            ],
          )
        ],
      ),
    );
  }

  loopCall(int call) {
    print(call);
    loop(call);
  }
}
