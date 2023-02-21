/*
 * Copyright (c) 2022. Developed by Hirwa Jean Luc.
 */

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lenga/constants.dart';
import 'profile.dart';

class Part3Step2Quiz1 extends StatefulWidget{
  @override
  _Part3Step2Quiz1State createState() => _Part3Step2Quiz1State();
}

class _Part3Step2Quiz1State extends State<Part3Step2Quiz1> {

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
      count = 4;
    } else {
      count = 3;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Shyiraho gahunda yo kwizigamira",
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
                      '1. Ni he wabika amafaranga yawe mu buryo bwizewe?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
              Container(
                height: 40,
                color: Color.fromRGBO(255, 99, 0, 1.0),
                padding: const EdgeInsets.fromLTRB(0,3,0,0),
                child: Text(
                  'Tondeka ahantu heza kurusha ahandi ho kubika hatekanye, hatekanye buhoro n’ahadatekanye',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: GridView(
                        padding: const EdgeInsets.fromLTRB(0.0,5.0,0.0,5.0),
                        shrinkWrap: false,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: count,
                          //childAspectRatio: (itemWidth / itemHeight)
                        ),
                        children: [
                          Card(
                            elevation: 0,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15.0)
                            ),
                            color: Colors.transparent,
                            margin: EdgeInsets.all(7.0),
                            child: Stack(
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
                                            'assets/images/bank.png',
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
                                  padding: EdgeInsets.all(2.0),
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
                          ),
                          Card(
                            elevation: 0,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15.0)
                            ),
                            color: Colors.transparent,
                            margin: EdgeInsets.all(7.0),
                            child: Stack(
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 5),
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {
                                          },
                                          child: Image.asset(
                                            'assets/images/goat.png',
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
                                  padding: EdgeInsets.all(2.0),
                                  child: InkWell(
                                    onTap: () {
                                      final player = AudioCache();
                                      //player.play('audios/cat_1_lesson_2.mp3');
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
                                    visible: false,
                                    child: Image.asset(
                                      "assets/icons/false.png",
                                      width: 40,
                                      height: 40,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            elevation: 0,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15.0)
                            ),
                            color: Colors.transparent,
                            margin: EdgeInsets.all(7.0),
                            child: Stack(
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 5),
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {
                                            _wrong3=true;
                                            print(_wrong3);
                                          },
                                          child: Image.asset(
                                            'assets/images/ikofi.png',
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
                                  padding: EdgeInsets.all(2.0),
                                  child: InkWell(
                                    onTap: () {
                                      final player = AudioCache();
                                      //player.play('audios/cat_1_lesson_3.mp3');
                                      audioPlayer.play(AssetSource('audios/cat_1_lesson_1.mp3'));
                                      print(_wrong3);
                                    },
                                    child: Image.asset(
                                      "assets/images/sound_icon.png",
                                      width: 40,
                                      height: 40,
                                    ),
                                  ),
                                ),
                                if(_wrong3==true) Container(
                                  alignment: Alignment.topRight,
                                  padding: EdgeInsets.all(2.0),
                                  child: Image.asset(
                                     "assets/icons/false.png",
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            elevation: 0,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15.0)
                            ),
                            color: Colors.transparent,
                            margin: EdgeInsets.all(7.0),
                            child: Stack(
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 5),
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {
                                          },
                                          child: Image.asset(
                                            'assets/images/gift.png',
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
                                  padding: EdgeInsets.all(2.0),
                                  child: InkWell(
                                    onTap: () {
                                      final player = AudioCache();
                                      //player.play('audios/cat_1_lesson_4.mp3');
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
                                    visible: false,
                                    child: Image.asset(
                                      "assets/icons/false.png",
                                      width: 40,
                                      height: 40,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            elevation: 0,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15.0)
                            ),
                            color: Colors.transparent,
                            margin: EdgeInsets.all(7.0),
                            child: Stack(
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 5),
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {

                                          },
                                          child: Image.asset(
                                            'assets/images/newhouse.png',
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
                                  padding: EdgeInsets.all(2.0),
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
                                    visible: false,
                                    child: Image.asset(
                                      "assets/icons/true.png",
                                      width: 40,
                                      height: 40,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            elevation: 0,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15.0)
                            ),
                            color: Colors.transparent,
                            margin: EdgeInsets.all(7.0),
                            child: Stack(
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 5),
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {
                                          },
                                          child: Image.asset(
                                            'assets/images/house.png',
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
                                  padding: EdgeInsets.all(2.0),
                                  child: InkWell(
                                    onTap: () {
                                      final player = AudioCache();
                                      //player.play('audios/cat_1_lesson_2.mp3');
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
                                    visible: false,
                                    child: Image.asset(
                                      "assets/icons/false.png",
                                      width: 40,
                                      height: 40,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            elevation: 0,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15.0)
                            ),
                            color: Colors.transparent,
                            margin: EdgeInsets.all(7.0),
                            child: Stack(
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 5),
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {

                                          },
                                          child: Image.asset(
                                            'assets/images/ibiribwa.png',
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
                                  padding: EdgeInsets.all(2.0),
                                  child: InkWell(
                                    onTap: () {
                                      final player = AudioCache();
                                      //player.play('audios/cat_1_lesson_3.mp3');
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
                                    visible: false,
                                    child: Image.asset(
                                      "assets/icons/false.png",
                                      width: 40,
                                      height: 40,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            elevation: 0,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15.0)
                            ),
                            color: Colors.transparent,
                            margin: EdgeInsets.all(7.0),
                            child: Stack(
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 5),
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {
                                          },
                                          child: Image.asset(
                                            'assets/images/light.png',
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
                                  padding: EdgeInsets.all(2.0),
                                  child: InkWell(
                                    onTap: () {
                                      final player = AudioCache();
                                      //player.play('audios/cat_1_lesson_4.mp3');
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
                                    visible: false,
                                    child: Image.asset(
                                      "assets/icons/false.png",
                                      width: 40,
                                      height: 40,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            elevation: 0,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15.0)
                            ),
                            color: Colors.transparent,
                            margin: EdgeInsets.all(7.0),
                            child: Stack(
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 5),
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {

                                          },
                                          child: Image.asset(
                                            'assets/images/school.png',
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
                                  padding: EdgeInsets.all(2.0),
                                  child: InkWell(
                                    onTap: () {
                                      final player = AudioCache();
                                      //player.play('audios/cat_1_lesson_3.mp3');
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
                                    visible: false,
                                    child: Image.asset(
                                      "assets/icons/false.png",
                                      width: 40,
                                      height: 40,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            elevation: 0,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15.0)
                            ),
                            color: Colors.transparent,
                            margin: EdgeInsets.all(7.0),
                            child: Stack(
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 5),
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {
                                          },
                                          child: Image.asset(
                                            'assets/images/selling.png',
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
                                  padding: EdgeInsets.all(2.0),
                                  child: InkWell(
                                    onTap: () {
                                      final player = AudioCache();
                                      //player.play('audios/cat_1_lesson_4.mp3');
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
                                    visible: false,
                                    child: Image.asset(
                                      "assets/icons/true.png",
                                      width: 40,
                                      height: 40,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 50,
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
              ),
            ],
          )),
    );
  }


}
