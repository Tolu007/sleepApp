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
  new AudioModel(
    audioNumber: "4",
    audioPath: "heavy-rain-drops.wav",
  ),
  new AudioModel(
    audioNumber: "5",
    audioPath: "night-forest-with-insects.wav",
  ),
  new AudioModel(
    audioNumber: "6",
    audioPath: "birds-in-the-jungle.wav",
  ),
  new AudioModel(
    audioNumber: "7",
    audioPath: "dry-leaves-rustling.wav",
  ),
  new AudioModel(
    audioNumber: "8",
    audioPath: "rain-in-the-jungle-and-birds.wav",
  ),
  new AudioModel(
    audioNumber: "9",
    audioPath: "knocking-on-wood-with-jungle-ambience.wav",
  ),
];
