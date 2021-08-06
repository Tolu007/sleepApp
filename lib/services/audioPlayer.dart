import 'package:audioplayers/audioplayers.dart';
import 'package:sleep_app/Model/model.dart';

AudioPlayer audioPlayer1 = AudioPlayer();
AudioCache player1 =
    AudioCache(prefix: 'assets/audios/', fixedPlayer: audioPlayer1);
AudioPlayer audioPlayer2 = AudioPlayer();
AudioCache player2 =
    AudioCache(prefix: 'assets/audios/', fixedPlayer: audioPlayer2);
AudioPlayer audioPlayer3 = AudioPlayer();
AudioCache player3 =
    AudioCache(prefix: 'assets/audios/', fixedPlayer: audioPlayer3);
AudioPlayer audioPlayer4 = AudioPlayer();
AudioCache player4 =
    AudioCache(prefix: 'assets/audios/', fixedPlayer: audioPlayer4);
AudioPlayer audioPlayer5 = AudioPlayer();
AudioCache player5 =
    AudioCache(prefix: 'assets/audios/', fixedPlayer: audioPlayer5);
AudioPlayer audioPlayer6 = AudioPlayer();
AudioCache player6 =
    AudioCache(prefix: 'assets/audios/', fixedPlayer: audioPlayer6);
AudioPlayer audioPlayer7 = AudioPlayer();
AudioCache player7 =
    AudioCache(prefix: 'assets/audios/', fixedPlayer: audioPlayer7);
AudioPlayer audioPlayer8 = AudioPlayer();
AudioCache player8 =
    AudioCache(prefix: 'assets/audios/', fixedPlayer: audioPlayer8);
AudioPlayer audioPlayer9 = AudioPlayer();
AudioCache player9 =
    AudioCache(prefix: 'assets/audios/', fixedPlayer: audioPlayer9);

List<String> audioNames = [];
List<AudioPlayer> audNames = [];
//int $i = 0;

pause(AudioPlayer audName) async {
  int result = await audName.pause();
}

stop() async {
  int result = await audioPlayer1.stop();
  audioPlayer1.release();
  //int result = await player.fixedPlayer.stop();
  print(result);
}

loadMusic() {
  print(audioData.length);
  for (int $i = 0; $i < audioData.length; $i++) {
    print($i);
    print(audioData[$i].audioPath);
    audioNames.add(audioData[$i].audioPath);
  }
  player1.loadAll(audioNames);
}

resume(AudioPlayer _audName) {
  //AudioPlayer audioPlayer[audioNumber] = AudioPlayer();
  _audName.resume();
}
