/*
 * Copyright (c) 2023. Developed by Hirwa Jean Luc.
 */

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lenga/constants.dart';
import 'package:lenga/Screens/step4quiz1.dart';
import 'package:lenga/Screens/step4video1.dart';
import 'package:lenga/Screens/step4video2.dart';
import 'profile.dart';

class Subcategories4 extends StatefulWidget{
  @override
  _SubCategoriesState createState() => _SubCategoriesState();
}

class _SubCategoriesState extends State<Subcategories4> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height) / 2.3;
    final double itemWidth = (size.width) / 2;

    return Scaffold(
      appBar: AppBar(
        title: Text("Kwizigamira mu itsinda"),
      ),
      drawer: const NavigationDrawer(),
      body: Container(
        child: GridView(
          shrinkWrap: false,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: (itemWidth / itemHeight)),
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
                                    return Step4Video1();
                                  },
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/images/cat_4_lesson_1.png',
                              fit: BoxFit.fitWidth,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Ese wabika mu Itsinda cyangwa mu Ikimina?',
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

                            },
                            child: Image.asset(
                              'assets/images/ikimina.png',
                              fit: BoxFit.fitWidth,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Ibyiza n\'ibibi byo kubitsa mu itsinda mu Ikimina?',
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
                                    return Step4Video2();
                                  },
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/images/cat_4_lesson_2.png',
                              fit: BoxFit.fitWidth,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Inyungu yishyurwa ku nguzanyo ni iki?',
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
                              'assets/images/nihewabika.png',
                              fit: BoxFit.fitWidth,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Ni he wabika amafaranga yawe?',
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
