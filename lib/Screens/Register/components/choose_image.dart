import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:audioplayers/audioplayers.dart';

import '../../../constants.dart';
import '../../Signup/signup_screen.dart';
import '../../Signupgroup/groupsignup_screen.dart';

class ChooseImage extends StatelessWidget {
  const ChooseImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: InkWell(
                onTap: (){
                  print("Sound will be played");
                  final player = AudioCache();
                  player.play('audios/individualgroup.mp3');
                },
                child: Image.asset(
                  "assets/images/sound_icon.png",
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                ),
              ),
            ),
            Spacer(),
          ],
        ),
        const SizedBox(height: defaultPadding),
        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: Image.asset(
                "assets/images/lengalogocircle.png",
                width: 140,
                height: 140,
                alignment: Alignment.center,
              ),
            ),

            Spacer(),
          ],
        ),

        SizedBox(height: defaultPadding),
        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpScreen();
                      },
                    ),
                  );
                },
                child: Image.asset(
                  "assets/images/individualuser.png",
                  width: 90,
                ),
              ),
            ),
            const SizedBox(width: defaultPadding),
            Expanded(
              flex: 8,
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return GroupSignUpScreen();
                      },
                    ),
                  );
                },
                child: Image.asset(
                  "assets/images/groupusers.png",
                  width: 90,
                ),
              ),

            ),
            Spacer(),
          ],
        ),
        const SizedBox(height: defaultPadding),
        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: Text(
                  "Kanda hano niba utari mu itsinda".toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
              ),
              ),
            Expanded(
              flex: 8,
              child: Text(
                  "Kanda hano niba uri itsinda".toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
              ),
              ),
            Spacer(),
          ],
        ),
        SizedBox(height: defaultPadding),
      ],
    );
  }
}