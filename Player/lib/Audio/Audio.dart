import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

var status = true;
AudioPlayer audioPlay = AudioPlayer();
AudioCache audio = AudioCache(fixedPlayer: audioPlay);

// ignore: camel_case_types

playAudio() {
  if (status == true) {
    audio.play("Audios/a.mp3");
    status = false;
  }
}

pauseAudio() {
  if (status == false) {
    audioPlay.pause();
    status = true;
  }
}

stopAudio() {
  if (status == false) {
    audioPlay.stop();
    status = true;
  }
}

class Audion extends StatefulWidget {
  Audion({Key key}) : super(key: key);

  @override
  _AudionState createState() => _AudionState();
}

class _AudionState extends State<Audion> {
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
            Text("Audio  from Assets"),
            Center(
              child: Container(
                margin: EdgeInsets.all(20),
                child: Card(
                  child: Image.asset(
                    "assets/Images/jeena.jpg",
                    width: 200,
                    height: 200,
                    
                  ),
                ),
                color: Colors.amber,
              ),
            ),
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
                        onPressed: () => playAudio(),
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

          ],
        ),
      ),
    );
  }
}
