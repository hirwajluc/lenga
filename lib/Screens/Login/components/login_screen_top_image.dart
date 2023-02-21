/*
 * Copyright (c) 2022. Developed by Hirwa Jean Luc.
 */

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:audioplayers/audioplayers.dart';
//import 'package:assets_audio_player/assets_audio_player.dart';

import '../../../constants.dart';

class LoginScreenTopImage extends StatelessWidget {
  const LoginScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: defaultPadding / 2),
        Text(
          "INJIRA",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
        ),
        SizedBox(height: defaultPadding/2),
        Material(
          child: InkWell(
            onTap: (){
              //print("Sound will be played");
              //AssetsAudioPlayer player = AssetsAudioPlayer();

              //player.open(Audio('audios/login.mp3'),autoStart: false, showNotification: false);

              //if(player.isPlaying==true) {
                //player.stop();
              //}
              final player = AudioCache();
              //player.play('audios/login.mp3');
              audioPlayer.play(AssetSource('audios/login.mp3'));
              
            },
            child: Image.asset(
              "assets/images/sound_icon.png",
              width: 100,
              height: 100,
            ),
          ),
          color: Colors.white.withOpacity(0),
        ),
        SizedBox(height: defaultPadding * 2),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: Image.asset(
                  "assets/images/login.png"
              ),
            ),
            const Spacer(),
          ],
        ),
        SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}