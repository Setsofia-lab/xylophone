import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('assets_note$soundNumber.wav');
  }

  Widget buildKey(Color color, int soundNumber) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          child: Text(''),
          onPressed: () {
            playSound(soundNumber);
          },
        ),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            buildKey(Colors.red, 1),
            buildKey(Colors.yellow, 2),
            buildKey(Colors.blueAccent, 3),
            buildKey(Colors.greenAccent, 4),
            buildKey(Colors.grey, 5),
            buildKey(Colors.pink, 6),
            buildKey(Colors.purple, 7),
          ]),
        ),
      ),
    );
  }
}
