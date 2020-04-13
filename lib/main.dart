import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(soundNumber);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              SizedBox(
                height: 2,
              ),
              buildKey(color: Colors.orange, soundNumber: 2),
              SizedBox(
                height: 2,
              ),
              buildKey(color: Colors.yellow, soundNumber: 3),
              SizedBox(
                height: 2,
              ),
              buildKey(color: Colors.green, soundNumber: 4),
              SizedBox(
                height: 2,
              ),
              buildKey(color: Colors.teal, soundNumber: 5),
              SizedBox(
                height: 2,
              ),
              buildKey(color: Colors.blue, soundNumber: 6),
              SizedBox(
                height: 2,
              ),
              buildKey(color: Colors.purple, soundNumber: 7),
              SizedBox(
                height: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
