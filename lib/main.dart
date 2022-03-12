import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded createKey({int sound, Color color, String text}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(sound);
        },
        child: Text(text, style: TextStyle(color: Colors.black, fontSize: 22.0),),
        style: TextButton.styleFrom(backgroundColor: color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                createKey(sound: 1, color: Colors.red, text: 'DO'),
                createKey(sound: 2, color: Colors.orange, text: 'RE'),
                createKey(sound: 3, color: Colors.yellow, text: 'MI'),
                createKey(sound: 4, color: Colors.green, text: 'FA'),
                createKey(sound: 5, color: Colors.teal, text: 'SOL'),
                createKey(sound: 6, color: Colors.blue, text: 'LA'),
                createKey(sound: 7, color: Colors.purple, text: 'Sİ'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
