/*
 * Copyright (c) 2023. Developed by Hirwa Jean Luc.
 */

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lenga/Screens/part2step2quiz1.dart';
import 'package:lenga/constants.dart';
import 'package:lenga/Screens/step4quiz1.dart';
import 'package:lenga/Screens/step2video1.dart';
import 'package:lenga/Screens/step2video2.dart';
import 'package:lenga/Screens/step2video3.dart';
import 'profile.dart';

class Subcategories2 extends StatefulWidget{
  @override
  _SubCategoriesState createState() => _SubCategoriesState();
}

class _SubCategoriesState extends State<Subcategories2> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height) / 2.3;
    final double itemWidth = (size.width) / 2;


    return Scaffold(
      appBar: AppBar(
        title: Text("Kora ingengo y\'imari"),
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
                                    return Step2Video1();
                                  },
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/images/cat_1_lesson_1.png',
                              fit: BoxFit.fitWidth,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Uko wakora ingengo y\'imari',
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
                                    return Part2Step2Quiz1();
                                  },
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/images/SpendvsSave.png',
                              fit: BoxFit.fitWidth,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Ese ni igihe cyo kuzigama cyangwa ni icyo gukoresha amafaranga?',
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
                                    return Step2Video2();
                                  },
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/images/cat_1_lesson_3.png',
                              fit: BoxFit.fitWidth,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Inama zo gukora ingengo y\'imari',
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
                              'assets/images/expensesonphone.png',
                              fit: BoxFit.fitWidth,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Gukora ingengo \ny\'imari',
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
                                    return Step2Video3();
                                  },
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/images/cat_1_lesson_3.png',
                              fit: BoxFit.fitWidth,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Uko wacunga neza amafaranga',
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
                              'assets/images/budgetthoughts.png',
                              fit: BoxFit.fitWidth,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Ese usobanukiwe gukora ingengo y\’imari?',
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
