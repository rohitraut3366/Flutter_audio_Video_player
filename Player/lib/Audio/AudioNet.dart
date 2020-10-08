import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

var status = true;
AudioPlayer audioPlay = AudioPlayer();
AudioCache audio = AudioCache(fixedPlayer: audioPlay);
AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

const kUrl1 = 'https://luan.xyz/files/audio/ambient_c_motion.mp3';
final assetsAudioPlayer = AssetsAudioPlayer();

// ignore: camel_case_types
play() async {
  if (status == true) {
  await assetsAudioPlayer.open(
  Audio.network(
      "https://luan.xyz/files/audio/ambient_c_motion.mp3",
      metas: Metas(
          id: "Online",
          title: "Online",
          artist: "Florent Champigny",
          album: "OnlineAlbum",
          // image: MetasImage.network("https://www.google.com")
          image: MetasImage.network(
              "https://image.shutterstock.com/image-vector/pop-music-text-art-colorful-600w-515538502.jpg"),
          ),
    ));
    assetsAudioPlayer.play();
    status = false;
  }

    
}



pauseAudio() {
  if (status == false) {
    assetsAudioPlayer.pause();

    status = true;
  }
}

stopAudio() {
  if (status == false) {
    assetsAudioPlayer.stop();
    status = true;
  }
}

class Audio2 extends StatefulWidget {
  Audio2({Key key}) : super(key: key);

  @override
  _AudioState createState() => _AudioState();
}

class _AudioState extends State<Audio2> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade900,
        leading: Icon(Icons.audiotrack),
        title: Text("Audio Player"),
      ),
      body: Container(
        color: Colors.amber,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                //pausePlay(),
                Card(
                  color: Colors.black,
                  elevation: 20,
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.play_arrow),
                        onPressed: () => play(),
                        iconSize: 40,
                        color: Colors.white,
                      ),
                      IconButton(
                        icon: Icon(Icons.pause),
                        onPressed: () => pauseAudio(),
                        iconSize: 40,
                        color: Colors.white,
                      ),
                      IconButton(
                        icon: Icon(Icons.stop),
                        onPressed: () => stopAudio(),
                        iconSize: 40,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text("Audio  from Network,"),
          ],
        ),
      ),
    );
  }
}
