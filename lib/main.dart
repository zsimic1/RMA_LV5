import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';


void main() => runApp(MaterialApp(home: List()));

class List extends StatefulWidget {
  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {

  late AudioPlayer player;
  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }
  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test me "),
        centerTitle: true,
      ),
      body:
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () async{
                    await player.setAsset('assets/audios/groot.mp3');
                    player.play();
                  },
                  child: Container(
                  width: 200.00,
                  height: 200.00,
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: ExactAssetImage('assets/images/groot.jpg'),
                      fit: BoxFit.fitHeight,
                    ),
                  )),
                ),
                GestureDetector(
                  onTap: () async{
                    await player.setAsset('assets/audios/legolas.mp3');
                    player.play();
                  },
                  child: Container(
                      width: 200.00,
                      height: 200.00,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: ExactAssetImage('assets/images/legolas.png'),
                          fit: BoxFit.fitHeight,
                        ),
                      )),
                ),
                GestureDetector(
                  onTap: () async{
                    await player.setAsset('assets/audios/arnold.mp3');
                    player.play();
                  },
                  child: Container(
                      width: 200.00,
                      height: 200.00,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: ExactAssetImage('assets/images/arnold.jpg'),
                          fit: BoxFit.fitHeight,
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),

    );
  }
}
