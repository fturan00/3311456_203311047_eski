import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class guitar extends StatefulWidget {
  const guitar({super.key});

  @override
  State<guitar> createState() => _guitarState();
}

class _guitarState extends State<guitar> {
  final assetsAudioPlayer = AssetsAudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 187, 187, 187),
      body: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
              child: Image.asset("images/gitar3.jpg"),
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
              color: Color.fromARGB(255, 222, 200, 6),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 208, 156, 207),
                      Color.fromARGB(255, 84, 71, 71),
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
                        backgroundColor: Color.fromARGB(255, 222, 200, 6),
                        child: CircleAvatar(
                          radius: 45,
                          backgroundImage: AssetImage("images/gitar3.jpg"),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Imperial Acoustic Guitar",
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
                              Audio("music/gitar.mp3"),
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
