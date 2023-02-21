/*
 * Copyright (c) 2022. Developed by Hirwa Jean Luc.
 */
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lenga/Screens/step2quiz1.dart';
import 'package:lenga/Screens/step4quiz1.dart';
import 'package:lenga/Screens/step1video1.dart';
import 'package:lenga/Screens/step1video2.dart';
import 'profile.dart';
import 'package:lenga/constants.dart';

class Subcategories extends StatefulWidget{
  @override
  _SubCategoriesState createState() => _SubCategoriesState();
}

class _SubCategoriesState extends State<Subcategories> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height) / 2.3;
    final double itemWidth = (size.width) / 2;

    //AudioPlayer audioPlayer = AudioPlayer(); // AudioPlayer
    bool playing = false;

    return Scaffold(
      appBar: AppBar(
        title: Text("Uko mukoresha amafaranga"),
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
                                    return Step1Video1();
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
                          'Genzura ayo winjiza n\'ayo usohora',
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
                                    return Step2Quiz1();
                                  },
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/images/gukoreshafrw.png',
                              fit: BoxFit.fitWidth,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Uko amafaranga yinjira n\'uko asohoka',
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
                        audioPlayer.play(AssetSource('audios/cat_1_lesson_2.mp3'));
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
                                    return Step1Video2();
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
                          'Ese ayo usohora aruta ayo winjiza?',
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
                        audioPlayer.play(AssetSource('audios/cat_1_lesson_3.mp3'));
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Step4Quiz1();
                                  },
                                ),
                              );
                            },
                            child: Image.asset(
                              'assets/images/cat_1_lesson_4.png',
                              fit: BoxFit.fitWidth,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Ese uyakoresha mu byo ukeneye cg ni mubyo wifuza?',
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
                        audioPlayer.play(AssetSource('audios/cat_1_lesson_4.mp3'));
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
