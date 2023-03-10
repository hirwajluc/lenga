/*
 * Copyright (c) 2022. Developed by Hirwa Jean Luc.
 */

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lenga/Screens/step1video1.dart';
import 'package:lenga/Screens/step1video2.dart';
import 'package:lenga/Screens/step4quiz2.dart';
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
      count = 5;
    } else {
      count = 3;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Ese ni igihe cyo kuzigama cg ni ugukoresha amafaranga?",
            style: TextStyle(fontSize: 15)),
      ),
      body: Container(
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: size.width,
                    color: Color.fromRGBO(217, 184, 184, 1),
                    padding: const EdgeInsets.fromLTRB(8,8,8,8),
                    child: Container(
                      child: Row(
                        children: [
                          Text(
                            '1. Ni ryari wakoresha amafaranga, kandi\nse ni ryari wayazigama?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
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
                height: 30,
                width: size.width,
                color: Color.fromRGBO(217, 184, 184, 1),
                padding: const EdgeInsets.fromLTRB(5,5,5,5),
                child: Text(
                  "Tondeka amashusho ari hasi aha, uhereye ku kintu gitwara amafaranga menshi, usoreze ku gitwara make",
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
                    Expanded(
                      child: GridView(
                        padding: const EdgeInsets.fromLTRB(0.0,5.0,0.0,5.0),
                        shrinkWrap: false,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: count,
                          childAspectRatio: (itemWidth / itemHeight)
                        ),
                        children: [
                          Card(
                            elevation: 0,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15.0)
                            ),
                            color: Colors.transparent,
                            margin: EdgeInsets.all(5.0),
                            child: Stack(
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 4),
                                      Expanded(
                                        child: InkWell(
                                          onTap: () {
                                            var snackBar = SnackBar(content: Text('Ntago aribyo'));
                                            // Step 3
                                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                          },
                                          child: Image.asset(
                                            'assets/images/Clothes.png',
                                            fit: BoxFit.contain,
                                            width: MediaQuery.of(context).size.width/2,
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
                                            'assets/images/family.png',
                                            fit: BoxFit.contain,
                                            width: MediaQuery.of(context).size.width/2,
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
                                            'assets/images/Transport.png',
                                            fit: BoxFit.contain,
                                            width: MediaQuery.of(context).size.width/2,
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
                                            'assets/images/phonecarte.png',
                                            fit: BoxFit.contain,
                                            width: MediaQuery.of(context).size.width/2,
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
                                            'assets/images/Drinkswithfriends.png',
                                            fit: BoxFit.contain,
                                            width: MediaQuery.of(context).size.width/2,
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
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  height: 60,
                  width: itemWidth,
                  alignment: Alignment.topCenter,
                  //color: Color.fromRGBO(245, 166, 154, 1),
                  padding: const EdgeInsets.fromLTRB(0,8,0,0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 1.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            "assets/images/Priority1.png",
                            fit: BoxFit.cover,
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            "assets/images/Priority2.png",
                            fit: BoxFit.cover,
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            "assets/images/Priority3.png",
                            fit: BoxFit.cover,
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            "assets/images/Priority4.png",
                            fit: BoxFit.cover,
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            "assets/images/Priority5.png",
                            fit: BoxFit.cover,
                            height: 50,
                            width: 50,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    height: 50,
                    //color: Color.fromRGBO(245, 166, 154, 1),
                    //padding: const EdgeInsets.fromLTRB(50,8,0,0),
                    child: InkWell(
                      onTap: () {

                      },
                      child: Image.asset(
                        "assets/icons/previous.png",
                        width: 80,
                        height: 80,
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
                          width: 80,
                          height: 80,
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
                              return Step4Quiz2();
                            },
                          ),
                        );
                      },
                      child: Image.asset(
                        "assets/icons/next.png",
                        width: 80,
                        height: 80,
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
