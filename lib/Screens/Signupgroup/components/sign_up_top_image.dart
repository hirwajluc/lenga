/*
 * Copyright (c) 2022. Developed by Hirwa Jean Luc.
 */

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:audioplayers/audioplayers.dart';

import '../../../constants.dart';

class SignUpScreenTopImage extends StatelessWidget {
  const SignUpScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: defaultPadding / 2),
        Text(
          "Fungura Konti y'itsinda".toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
        ),
        SizedBox(height: defaultPadding/2),
        Material(
          child: InkWell(
            onTap: (){
              print("Sound will be played");
              final player = AudioCache();
              //player.play('audios/groupaccount.mp3');
              audioPlayer.play(AssetSource('audios/groupaccount.mp3'));
            },
            child: Image.asset(
              "assets/images/sound_icon.png",
              width: 100,
              height: 100,
            ),
          ),
          color: Colors.white.withOpacity(0),
        ),
        SizedBox(height: defaultPadding/2),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: Image.asset(
                  "assets/images/groupusers.png",
                width: 200,
                height: 200,
              ),
            ),
            const Spacer(),
          ],
        ),
        SizedBox(height: defaultPadding),
      ],
    );
  }
}
