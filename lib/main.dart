import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

Expanded buildKey({Color color, int key, String txt}) {
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        playSound(key);
      },
      child: null,
    ),
  );
}

void playSound(int number) {
  final player = AudioCache();
  player.play('note$number.wav');
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, key: 1),
              buildKey(color: Colors.orange, key: 2),
              buildKey(color: Colors.yellow, key: 3),
              buildKey(color: Colors.green, key: 4),
              buildKey(color: Colors.blue, key: 5),
              buildKey(color: Colors.blue[800], key: 6),
              buildKey(color: Colors.deepPurple, key: 7),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'RANE',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'GILLIAN',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
