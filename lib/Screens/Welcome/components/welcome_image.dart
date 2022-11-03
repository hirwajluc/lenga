import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:typed_data';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

import '../../../constants.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(0, 30, 0, 10),
          child: Text(
            "Itoze gukoresha neza\namafaranga yawe".toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),

        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: Image.asset(
                "assets/images/lenga_logo.png",
                width: 60,
                height: 70,
              ),
            ),
            Expanded(
              flex: 8,
              child: InkWell(
                onTap: () {
                  final player = AudioCache();
                  player.play('audios/intro_screen_1.mp3');
                },
                child: Image.asset(
                  "assets/images/sound_icon.png",
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            Spacer(),
          ],
        ),

        SizedBox(height: defaultPadding),
        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: Image.asset(
                "assets/images/mastermoney.png",
                width: MediaQuery.of(context).size.width/4,
                height: MediaQuery.of(context).size.height/4,
              ),
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: defaultPadding),
      ],
    );
  }
}