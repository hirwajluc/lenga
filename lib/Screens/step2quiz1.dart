/*
 * Copyright (c) 2022. Developed by Hirwa Jean Luc.
 */

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lenga/Screens/step2quiz2.dart';
import 'package:lenga/constants.dart';
import 'profile.dart';

class Step2Quiz1 extends StatefulWidget{
  @override
  _Step2Quiz1State createState() => _Step2Quiz1State();
}

class _Step2Quiz1State extends State<Step2Quiz1> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height) / 2.3;
    final double itemWidth = (size.width) / 2;

    int rightAnswer=0;
    bool click = false;
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
                    child: Row(
                      children: [
                        Text(
                          '1. Ni ibihe bintu byinjiza amafaranga\n n’ibigendaho amafaranga?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: defaultFontSize,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: InkWell(
                            onTap: () {
                              final player = AudioCache();
                              //player.play('audios/home_6.mp3');
                              audioPlayer.play(AssetSource('audios/cat_1_sub_1.mp3'));
                            },
                            child: Image.asset(
                              "assets/images/sound_icon.png",
                              width: soundIconSize,
                              height: soundIconSize,
                              fit: BoxFit.contain,
                              alignment: Alignment.topRight,
                            ),
                          ),
                        ),
                      ],
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
                  'Kanda mu mashusho ari hasi aha agaragaza ibintu byinjiza amafaranga',
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
                                            var snackBar = SnackBar(content: Text('Ntago aribyo'));
                                            // Step 3
                                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                          },
                                          child: Image.asset(
                                            'assets/images/airtime.png',
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
                                      audioPlayer.play(AssetSource('audios/airtime.mp3'));
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
                                  child: Image.asset(
                                    'assets/icons/false.png',
                                    width: 40,
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
                                            'assets/images/amaturo.png',
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
                                      audioPlayer.play(AssetSource('audios/amaturo.mp3'));
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
                                    visible: true,
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
                                            'assets/images/disabled.png',
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
                                      audioPlayer.play(AssetSource('audios/ibyihutirwa.mp3'));
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
                                      audioPlayer.play(AssetSource('audios/gift.mp3'));
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
                                    visible: true,
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
                                            'assets/images/guhinga.png',
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
                                      audioPlayer.play(AssetSource('audios/umurimo.mp3'));
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
                                    visible: true,
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
                                      audioPlayer.play(AssetSource('audios/ubukode.mp3'));
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
                                    visible: true,
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
                                      audioPlayer.play(AssetSource('audios/ibiribwa.mp3'));
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
                                    visible: true,
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
                                      audioPlayer.play(AssetSource('audios/amashanyarazi.mp3'));
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
                                    visible: true,
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
                                      audioPlayer.play(AssetSource('audios/school.mp3'));
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
                                    visible: true,
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
                                      audioPlayer.play(AssetSource('audios/selling.mp3'));
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
                                    visible: true,
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
                                            'assets/images/burnhouse.png',
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
                                      audioPlayer.play(AssetSource('audios/ubwishingizi.mp3'));
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
                                    visible: true,
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
                        ],
                      ),
                    )
                  ],
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
                              return Step2Quiz2();
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

  MaterialStateProperty<AssetImage> getImage(String thetrue,String thefalse) {
    final getImage = (Set<MaterialState> states){
      if(states.contains(MaterialState.pressed)){
        return AssetImage(thetrue);
      }else{
        return AssetImage(thefalse);
      }
    };
    return MaterialStateProperty.resolveWith(getImage);
  }


}
