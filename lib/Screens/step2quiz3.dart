/*
 * Copyright (c) 2022. Developed by Hirwa Jean Luc.
 */

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lenga/Screens/step1video1.dart';
import 'package:lenga/Screens/step1video2.dart';
import 'package:lenga/Screens/step2quiz2.dart';
import 'package:lenga/Screens/step2quiz4.dart';
import 'package:lenga/constants.dart';
import 'profile.dart';

class Step2Quiz3 extends StatefulWidget{
  @override
  _Step2Quiz3State createState() => _Step2Quiz3State();
}

class _Step2Quiz3State extends State<Step2Quiz3> {

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
        title: Text("Uko amafaranga yinjira nuko asohoka",
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
                    color: Color.fromRGBO(217, 184, 184, 1),
                    padding: const EdgeInsets.fromLTRB(8,8,8,8),
                    child: Container(
                      child: Row(
                        children: [
                          Text(
                            '2. Amafaranga yinjira',
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
                              audioPlayer.play(AssetSource('audios/amafaranga_yinjira.mp3'));
                            },
                            child: Image.asset(
                              "assets/images/sound_icon.png",
                              width: soundIconSize,
                              height: soundIconSize,
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 70,
                width: size.width,
                color: Color.fromRGBO(217, 184, 184, 1),
                padding: const EdgeInsets.fromLTRB(5,5,5,5),
                child: Text(
                  "Shyira buri kintu cyinjiza amafaranga mu cyiciro ubona ko bihuye",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: defaultFontSize,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                            child: Column(
                              children: [
                                const SizedBox(height: 5),
                                Expanded(
                                  child: Image.asset(
                                    'assets/images/guhinga.png',
                                    fit: BoxFit.contain,
                                    width: MediaQuery.of(context).size.width,
                                  ),
                                ),
                              ],
                            ),
                          ),

                        Row(
                          children: [
                            Container(
                              alignment: Alignment.bottomRight,
                              padding: EdgeInsets.only(left: 260.0),
                              child: InkWell(
                                onTap: () {
                                  final player = AudioCache();
                                  //player.play('audios/cat_1_lesson_1.mp3');
                                  audioPlayer.play(AssetSource('audios/cat_1_lesson_1.mp3'));
                                },
                                child: Image.asset(
                                  "assets/images/sound_icon.png",
                                  width: soundIconSize,
                                  height: soundIconSize,
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
                  height: 120,
                  width: size.width,
                  alignment: Alignment.topCenter,
                  //color: Color.fromRGBO(245, 166, 154, 1),
                  //padding: const EdgeInsets.fromLTRB(0,8,0,0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            "assets/images/burigihe.png",
                            fit: BoxFit.contain,
                            height: iconsReason,
                            width: iconsReason,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            "assets/images/rimwenarimwe.png",
                            fit: BoxFit.contain,
                            height: iconsReason,
                            width: iconsReason,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            "assets/images/ibihembwe.png",
                            fit: BoxFit.contain,
                            height: iconsReason,
                            width: iconsReason,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    height: 50,
                    //color: Color.fromRGBO(245, 166, 154, 1),
                    //padding: const EdgeInsets.fromLTRB(50,8,0,0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Step2Quiz2();
                            },
                          ),
                        );
                      },
                      child: Image.asset(
                        "assets/icons/previous.png",
                        width: iconsNavigation,
                        height: iconsNavigation,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      //color: Color.fromRGBO(245, 166, 154, 1),
                      //padding: const EdgeInsets.fromLTRB(0,8,0,0),
                      margin: const EdgeInsets.only(left: 60.0),
                      child: InkWell(
                        onTap: () {

                        },
                        child: Image.asset(
                          "assets/icons/cancel.png",
                          width: iconsNavigation,
                          height: iconsNavigation,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    height: 50,
                    //color: Color.fromRGBO(245, 166, 154, 1),
                    //padding: const EdgeInsets.fromLTRB(0,8,0,0),
                    margin: const EdgeInsets.only(left: 50),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Step2Quiz4();
                            },
                          ),
                        );
                      },
                      child: Image.asset(
                        "assets/icons/next.png",
                        width: iconsNavigation,
                        height: iconsNavigation,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }


}
