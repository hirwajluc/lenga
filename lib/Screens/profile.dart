/*
 * Copyright (c) 2022. Developed by Hirwa Jean Luc.
 */

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lenga/Screens/Login/login_screen.dart';
import 'package:lenga/Screens/Welcome/welcome_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:lenga/constants.dart';

import 'subcategories.dart';
import 'subcategories2.dart';
import 'subcategories3.dart';
import 'subcategories4.dart';
import 'subcategories5.dart';
import 'subcategories6.dart';

//void main() => runApp(Profile('',));
class Profile extends StatelessWidget {
  final String data;
  Profile(this.data,);

  @override
  Widget build(BuildContext context) {
    int count;
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height) / 3.3;
    final double itemWidth = (size.width) / 2;

    if (MediaQuery.of(context).orientation == Orientation.landscape)
      count = 3;
    else
      count = 2;

    return Scaffold(
      appBar: AppBar(
        title: Text('Lenga'),
      ),
      drawer: const NavigationDrawer(),
      body: Container(
        child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: count, childAspectRatio: (itemWidth / itemHeight)),
            children: [
              Card(
                elevation: 10,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(15.0)
                ),
                color: Colors.lime,
                margin: EdgeInsets.all(7.0),
                child: Stack(
                  children: [
                    Container(
                    child: Column(
                      children: [
                    const Text(
                      '1',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
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
                                return Subcategories();
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
                      'Uko mukoresha amafaranga',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: defaultFontSize,
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
                          //player.play('audios/home_1.mp3');
                          audioPlayer.play(AssetSource('audios/home_1.mp3'));
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
                color: Colors.greenAccent,
                margin: EdgeInsets.all(7.0),
                child: Stack(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          const Text(
                            '2',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
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
                                      return Subcategories2();
                                    },
                                  ),
                                );
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
                            'Kora ingengo y\'imari',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: defaultFontSize,
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
                          //player.play('audios/home_2.mp3');
                          audioPlayer.play(AssetSource('audios/home_2.mp3'));
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
                color: Colors.lightGreenAccent,
                margin: EdgeInsets.all(7.0),
                child: Stack(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          const Text(
                            '3',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
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
                                      return Subcategories3();
                                    },
                                  ),
                                );
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
                            'Gena uburyo bwo kwizigamira',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: defaultFontSize,
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
                          //player.play('audios/home_3.mp3');
                          audioPlayer.play(AssetSource('audios/home_3.mp3'));
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
                color: Colors.deepOrangeAccent,
                margin: EdgeInsets.all(7.0),
                child: Stack(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          const Text(
                            '4',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
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
                                      return Subcategories4();
                                    },
                                  ),
                                );
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
                            'Kwizigamira mu itsinda',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: defaultFontSize,
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
                          //player.play('audios/home_4.mp3');
                          audioPlayer.play(AssetSource('audios/home_4.mp3'));
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
                color: Colors.lightBlueAccent,
                margin: EdgeInsets.all(7.0),
                child: Stack(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          const Text(
                            '5',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
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
                                      return Subcategories5();
                                    },
                                  ),
                                );
                              },
                              child: Image.asset(
                                'assets/images/kwizigamirabank.png',
                                fit: BoxFit.fitWidth,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Kwizigamira mu kigo cy\'imari cg kuri telephone',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: defaultFontSize,
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
                          //player.play('audios/home_5.mp3');
                          audioPlayer.play(AssetSource('audios/home_5.mp3'));
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
                color: Colors.yellow,
                margin: EdgeInsets.all(7.0),
                child: Stack(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          const Text(
                            '6',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
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
                                      return Subcategories6();
                                    },
                                  ),
                                );
                              },
                              child: Image.asset(
                                'assets/images/kwitegurainguzanyo.png',
                                fit: BoxFit.fitWidth,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Kwitegura kwaka inguzanyo',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: defaultFontSize,
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
                          //player.play('audios/home_6.mp3');
                          audioPlayer.play(AssetSource('audios/home_6.mp3'));
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

class NavigationDrawer extends StatelessWidget{
  const NavigationDrawer({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context)=> Drawer(
    child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
  );

  Widget buildHeader(BuildContext context) => Container(
    color: Colors.blue.shade700,
    child: Column(
      children: [
        CircleAvatar(
          radius: 52,
          backgroundImage: AssetImage('assets/images/lengalogocircle.png'),
        ),
        SizedBox(height: 12,),
        Text(
            '',
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
      ],
    ),
    padding: EdgeInsets.only(
      top: 24+MediaQuery.of(context).padding.top,
      bottom: 24
    ),
  );

  Widget buildMenuItems(BuildContext context) => Column(
    children: [
      ListTile(
        leading: const Icon(Icons.home_outlined),
        title: const Text('Ahabanza'),
        onTap: (){

        },
      ),
      //const Divider(color: Colors.black,),
      ListTile(
        leading: const Icon(Icons.logout_outlined),
        title: const Text('Sohoka'),
        onTap: () async {
          logindata?.remove('loggedin');
          logindata?.remove('token');
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (BuildContext ctx) => WelcomeScreen()));
        },
      ),
    ],
  );
}