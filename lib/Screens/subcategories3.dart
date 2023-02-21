/*
 * Copyright (c) 2023. Developed by Hirwa Jean Luc.
 */

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lenga/Screens/part3step2quiz1.dart';
import 'package:lenga/constants.dart';
import 'package:lenga/Screens/step4quiz1.dart';
import 'package:lenga/Screens/step3video1.dart';
import 'package:lenga/Screens/step3video2.dart';
import 'package:lenga/Screens/step3video3.dart';
import 'profile.dart';

class Subcategories3 extends StatefulWidget{
  @override
  _SubCategoriesState createState() => _SubCategoriesState();
}

class _SubCategoriesState extends State<Subcategories3> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height) / 2.3;
    final double itemWidth = (size.width) / 2;

    return Scaffold(
      appBar: AppBar(
        title: Text("Gena uburyo bwo kwizigamira"),
      ),
      drawer: const NavigationDrawer(),
      body: Container(
        child: GridView(
          shrinkWrap: false,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            Card(
              elevation: 10,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0)
              ),
              color: Colors.white,
              margin: EdgeInsets.all(7.0),
              child: Stack(
                children: [
                  Container(
                    child: Column(
                      children: [
                        const Text(
                          'Intambwe 1',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Step3Video1();
                                  },
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/images/cat_3_lesson_1.png',
                              fit: BoxFit.fitWidth,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Uko wazigama ngo ugere ku ntego zawe',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.all(2.0),
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
            ),
            Card(
              elevation: 10,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0)
              ),
              color: Colors.white,
              margin: EdgeInsets.all(7.0),
              child: Stack(
                children: [
                  Container(
                    child: Column(
                      children: [
                        const Text(
                          'Intambwe 2',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Part3Step2Quiz1();
                                  },
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/images/shyirahogahunda.png',
                              fit: BoxFit.fitWidth,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Shyiraho gahunda yo\nkwizigamira',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.all(2.0),
                    child: InkWell(
                      onTap: () {
                        final player = AudioCache();
                        //player.play('audios/cat_1_lesson_2.mp3');
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
            ),
            Card(
              elevation: 10,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0)
              ),
              color: Colors.white,
              margin: EdgeInsets.all(7.0),
              child: Stack(
                children: [
                  Container(
                    child: Column(
                      children: [
                        const Text(
                          'Intambwe 3',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Step3Video2();
                                  },
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/images/cat_3_lesson_2.png',
                              fit: BoxFit.fitWidth,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Aho ubika amafaranga yawe',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.all(2.0),
                    child: InkWell(
                      onTap: () {
                        final player = AudioCache();
                        //player.play('audios/cat_1_lesson_3.mp3');
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
            ),
            Card(
              elevation: 10,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0)
              ),
              color: Colors.white,
              margin: EdgeInsets.all(7.0),
              child: Stack(
                children: [
                  Container(
                    child: Column(
                      children: [
                        const Text(
                          'Intambwe 4',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                            },
                            child: Image.asset(
                              'assets/images/ahowabika.png',
                              fit: BoxFit.fitWidth,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Reka turebe ahantu heza wabika amafaranga',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.all(2.0),
                    child: InkWell(
                      onTap: () {
                        final player = AudioCache();
                        //player.play('audios/cat_1_lesson_4.mp3');
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
            ),
            Card(
              elevation: 10,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0)
              ),
              color: Colors.white,
              margin: EdgeInsets.all(7.0),
              child: Stack(
                children: [
                  Container(
                    child: Column(
                      children: [
                        const Text(
                          'Intambwe 5',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Step3Video2();
                                  },
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/images/cat_3_lesson_3.png',
                              fit: BoxFit.fitWidth,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Uko intego waba ufite yaba iri kose wazigama',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.all(2.0),
                    child: InkWell(
                      onTap: () {
                        final player = AudioCache();
                        //player.play('audios/cat_1_lesson_3.mp3');
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
            ),
            Card(
              elevation: 10,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0)
              ),
              color: Colors.white,
              margin: EdgeInsets.all(7.0),
              child: Stack(
                children: [
                  Container(
                    child: Column(
                      children: [
                        const Text(
                          'Intambwe 6',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                            },
                            child: Image.asset(
                              'assets/images/icyowazigamira.png',
                              fit: BoxFit.fitWidth,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Icyo wazigamira n\'ahowabika',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.all(2.0),
                    child: InkWell(
                      onTap: () {
                        final player = AudioCache();
                        //player.play('audios/cat_1_lesson_4.mp3');
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
            ),
          ],
        ),
      ),
    );
  }


}
