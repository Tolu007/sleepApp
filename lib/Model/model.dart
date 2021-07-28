import 'package:flutter/material.dart';

class AudioModel {
  final String audioNumber;
  final String audioPath;

  AudioModel({@required this.audioNumber, @required this.audioPath});
}

List<AudioModel> audioData = [
  new AudioModel(
    audioNumber: "0",
    audioPath: "rain-long-loop.wav",
  ),
  new AudioModel(
    audioNumber: "1",
    audioPath: "rain-and-thunder-storm.wav",
  ),
  new AudioModel(
    audioNumber: "2",
    audioPath: "birds-and-snapping-branch.wav",
  ),
  new AudioModel(
    audioNumber: "3",
    audioPath: "crickets-singing-in-a-jungle-at-night.wav",
  ),
];
