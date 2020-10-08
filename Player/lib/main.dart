import 'package:Player/Audio/Audio.dart';
import 'package:Player/Audio/AudioNet.dart';
import 'package:Player/Video/Video.dart';
import 'package:Player/Video/VideoNet.dart';
import 'package:flutter/material.dart';

import 'Home.dart';


void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/" : (context) => Home(),
        "/videoasset" : (context) => Video(),
        "/videonet" : (context) => VideoApp(),
        "/audioaaset" : (context) => Audion(),
        "/audioNet": (context) => Audio2(),
      },
    );
  }
}