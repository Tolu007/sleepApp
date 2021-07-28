import 'package:audioplayers/audioplayers.dart';
import 'package:sleep_app/Model/model.dart';

AudioPlayer audioPlayer = AudioPlayer();
AudioCache player =
    AudioCache(prefix: 'assets/audios/', fixedPlayer: audioPlayer);
List<String> audioNames = [];
//int $i = 0;

pause() async {
  int result = await audioPlayer.pause();
}

stop() async {
  int result = await audioPlayer.stop();
  audioPlayer.release();
  //int result = await player.fixedPlayer.stop();
  print(result);
}

resume() async {
  int result = await audioPlayer.resume();
}

loadMusic() {
  print(audioData.length);
  for (int $i = 0; $i < audioData.length; $i++) {
    print($i);
    print(audioData[$i].audioPath);
    audioNames.add(audioData[$i].audioPath);
  }
  player.loadAll(audioNames);
}

loop(int audioNumber) {
  print(audioData[audioNumber].audioPath);
  player.play(audioData[audioNumber].audioPath);
}
