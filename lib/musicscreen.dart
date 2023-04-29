import 'dart:ui';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

import 'models/musicmodel.dart';

class musicscreen extends StatefulWidget {
  final int index;
  const musicscreen({super.key, required this.index});

  @override
  State<musicscreen> createState() => _musicscreenState();
}

class _musicscreenState extends State<musicscreen> {
  List<MusicPage> musicListesi = MusicPage.musicPageList();
  late MusicPage music;
  final assetsAudioPlayer = AssetsAudioPlayer();
  @override
  void initState() {
    super.initState();
    music = musicListesi[widget.index]; 
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 187, 187, 187),
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              child: Image.asset(music.imageMusic1),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_rounded,
              size: 27,
            ),
          ),
          Center(
            child: Material(
              borderRadius: BorderRadius.circular(25),
              elevation: 10,
              color: music.color1,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      music.color2,
                      music.color3,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 225,
                width: 400,
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 53,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: music.color4,
                        child: CircleAvatar(
                          radius: 45,
                          backgroundImage: AssetImage(music.imageMusic1),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      music.enstrumanNameMusic,
                      style: TextStyle(
                        color: Color.fromARGB(255, 254, 248, 248),
                        fontFamily: 'CoveredByYourGrace',
                        fontSize: 17,
                      ),
                    ),
                    Divider(
                      thickness: 0.3,
                      color: Colors.black,
                      indent: 50,
                      endIndent: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () async {
                            assetsAudioPlayer.open(
                              Audio(music.enstrumanfileMusic),
                            );
                          },
                          icon: const Icon(
                            Icons.play_arrow,
                            size: 25,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            assetsAudioPlayer.stop();
                          },
                          icon: const Icon(
                            Icons.stop,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
