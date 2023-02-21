/*
 * Copyright (c) 2022. Developed by Hirwa Jean Luc.
 */

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lenga/Screens/step1video1.dart';
import 'package:lenga/Screens/step1video2.dart';
import 'package:lenga/constants.dart';
import 'profile.dart';

class Step4Quiz1 extends StatefulWidget{
  @override
  _Step4Quiz1State createState() => _Step4Quiz1State();
}

class _Step4Quiz1State extends State<Step4Quiz1> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height) / 2.3;
    final double itemWidth = (size.width) / 2;

    int rightAnswer=0;
    bool _wrong1=false;
    bool _wrong2=false;
    bool _wrong3=false;

    int count;

    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      count = 2;
    } else {
      count = 1;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Ese uyakoresha mu byo ukeneye cg \nni mu byo wifuza?",
            style: TextStyle(fontSize: 15)),
      ),
      drawer: const NavigationDrawer(),
      body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                        height: 70,
                        width: size.width,
                        color: Color.fromRGBO(255, 246, 30, 1),
                        padding: const EdgeInsets.fromLTRB(8,8,8,8),
                        child: Row(
                          children: [
                            Text(
                              '4. Ese uyakoresha mu byo ukeneye \ncg ni mu byo wifuza?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                final player = AudioCache();
                                //player.play('audios/home_6.mp3');
                                audioPlayer.play(AssetSource('audios/home_6.mp3'));
                              },
                              child: Image.asset(
                                "assets/images/sound_icon.png",
                                width: soundIconSize,
                                height: soundIconSize,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      ),
                ],
              ),
              Container(
                height: 70,
                color: Color.fromRGBO(255, 99, 0, 1.0),
                padding: const EdgeInsets.fromLTRB(5,5,5,5),
                child: Text(
                  "Kanda kuri buto y'icyatsi niba wumva ikintu utekereje gikenewe. Kanda kuri buto itukura niba wumva ikintu utekereje ari icyo wifuza gusa.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Draggable(
                            feedback: SizedBox(
                              width: size.width,
                              height: size.height/2,
                              child: Column(
                                children: [
                                  const SizedBox(height: 5),
                                  Expanded(
                                    child: Image.asset(
                                        'assets/images/family.png',
                                        fit: BoxFit.contain,
                                        width: MediaQuery.of(context).size.width,
                                      ),
                                  ),
                                ],
                              ),
                            ),
                            child: SizedBox(
                              width: size.width,
                              height: size.height/2,
                              child: Column(
                                children: [
                                  const SizedBox(height: 5),
                                  Expanded(
                                    child: Image.asset(
                                        'assets/images/family.png',
                                        fit: BoxFit.contain,
                                        width: MediaQuery.of(context).size.width,
                                      ),

                                  ),
                                ],
                              ),
                            ),
                        ),

                        Row(
                          children: [
                            Container(
                              alignment: Alignment.bottomRight,
                              padding: EdgeInsets.only(left: 250.0),
                              child: InkWell(
                                onTap: () {
                                  final player = AudioCache();
                                  //player.play('audios/cat_1_lesson_1.mp3');
                                  audioPlayer.play(AssetSource('audios/cat_1_lesson_1.mp3'));
                                },
                                child: Image.asset(
                                  "assets/images/sound_icon.png",
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              padding: EdgeInsets.all(2.0),
                              child: Visibility(
                                visible: _wrong1,
                                child: Image.asset(
                                  "assets/icons/false.png",
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                    height: 100,
                    width: itemWidth,
                    alignment: Alignment.topCenter,
                    //color: Color.fromRGBO(245, 166, 154, 1),
                    padding: const EdgeInsets.fromLTRB(0,8,0,0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              "assets/images/ibyowifuza.png",
                              fit: BoxFit.cover,
                              height: 70,
                              width: 70,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              "assets/images/ibyoukeneye.png",
                              fit: BoxFit.cover,
                              height: 70,
                              width: 70,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ),

            ],
          )),
    );
  }


}
