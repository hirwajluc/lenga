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

class Part2Step2Quiz1 extends StatefulWidget{
  @override
  _Part2Step2Quiz1State createState() => _Part2Step2Quiz1State();
}

class _Part2Step2Quiz1State extends State<Part2Step2Quiz1> {

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
        title: Text("Ese ni igihe cyo kuzigama cg ni ugukoresha amafaranga?",
            style: TextStyle(fontSize: 15)),
      ),
      drawer: const NavigationDrawer(),
      body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                    height: 50,
                    color: Color.fromRGBO(255, 246, 30, 1),
                    padding: const EdgeInsets.fromLTRB(0,8,0,0),
                    child: Text(
                      '2. Ni bangahe muri mwe bazi icyo ingengo y\'imari ari cyo?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
              Container(
                height: 70,
                color: Color.fromRGBO(255, 99, 0, 1.0),
                padding: const EdgeInsets.fromLTRB(0,5,0,0),
                child: Text(
                  "Muganire kuri buri kibazo mu itsinda maze ukande ku mubare uri hasi aha, kugira ngo utange igisubizo.\nNiba urimo gukoresha porogaramu uri wenyine, ukande kuri rimwe.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 13,
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
                                child: InkWell(
                                  onTap: () {
                                    _wrong1=true;
                                  },
                                  child: Image.asset(
                                    'assets/images/expensesonphone.png',
                                    fit: BoxFit.contain,
                                    width: MediaQuery.of(context).size.width,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
              ),
              Container(
                height: 100,
                //color: Color.fromRGBO(245, 166, 154, 1),
                padding: const EdgeInsets.fromLTRB(0,8,0,0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 70.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          "assets/images/ibyowifuza.png",
                          fit: BoxFit.cover,
                          height: 80,
                          width: 80,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          "assets/images/ibyoukeneye.png",
                          fit: BoxFit.cover,
                          height: 80,
                          width: 80,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              /*Container(
                height: 80,
                //color: Color.fromRGBO(245, 166, 154, 1),
                padding: const EdgeInsets.fromLTRB(0,8,0,0),
                child: InkWell(
                  onTap: () {

                  },
                  child: Image.asset(
                    "assets/icons/next.png",
                    width: 80,
                    height: 80,
                  ),
                ),
              ),*/
            ],
          )),
    );
  }


}
