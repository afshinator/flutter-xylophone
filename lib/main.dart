import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final myPlayer = AudioCache();

  void playSound(int soundNumber) {
    myPlayer.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {

    myPlayer.loadAll([
      'note1.wav', 'note2.wav', 'note3.wav','note4.wav', 'note5.wav', 'note6.wav', 'note7.wav'
    ]);


    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              FlatButton(
                color: Colors.red,
                onPressed: () {
                  playSound(1);
                },
              ),
              FlatButton(
                color: Colors.orange,
                onPressed: () {
                  playSound(2);
                },
              ),
              FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  playSound(3);
                },
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () {
                  playSound(4);
                },
              ),
              FlatButton(
                color: Colors.teal,
                onPressed: () {
                  playSound(5);
                },
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  playSound(6);
                },
              ),
              FlatButton(
                color: Colors.purple,
                onPressed: () {
                  playSound(7);
                },
              ),
            ],

          ),
        ),
      ),
    );
  }
}
