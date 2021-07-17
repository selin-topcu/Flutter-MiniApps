import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: DrumPage(),
      ),
    );
  }
}
class DrumPage extends StatelessWidget {
  final player = AudioCache();
  void musicplayer(String music){
    player.play('$music.wav');
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: buildDrumPad("bip",Colors.blue[400]),
                    ),
                    Expanded(
                      child: buildDrumPad("bongo",Colors.blue[300]),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: buildDrumPad("clap1",Colors.blue[200]),
                    ),
                    Expanded(
                      child: buildDrumPad("clap2",Colors.blue[100]),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: buildDrumPad("clap3",Colors.green[400]),
                    ),
                    Expanded(
                      child: buildDrumPad("crash",Colors.green[300]),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: buildDrumPad("woo",Colors.green[200]),
                    ),
                    Expanded(
                      child: buildDrumPad("ridebel",Colors.green[100]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }

  FlatButton buildDrumPad(String music, Color color) {
    return FlatButton(
                      padding: EdgeInsets.all(10),
                      onPressed: (){
                        musicplayer(music);
                      },
                      child: Container(
                        color: color,
                      ),
                    );
  }
}
