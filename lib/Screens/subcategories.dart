/*
 * Copyright (c) 2022. Developed by Hirwa Jean Luc.
 */
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'profile.dart';

class Subcategories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uko mukoresha amafaranga"),
      ),
      drawer: const NavigationDrawer(),
      body: Container(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, ),
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
                        player.play('audios/intro_screen_1.mp3');
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
                              'assets/images/practiceandaction.png',
                              fit: BoxFit.fitWidth,
                              width: MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Uko amaafaranga yinjira n\'uko asohoka',
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
                        player.play('audios/intro_screen_1.mp3');
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
                            },
                            child: Image.asset(
                              'assets/images/mastermoney.png',
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
                        player.play('audios/intro_screen_1.mp3');
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
                              'assets/images/kwizigamiraitsinda.png',
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
                        player.play('audios/intro_screen_1.mp3');
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
      ),
    );
  }

}
