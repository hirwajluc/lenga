import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(0, 30, 0, 10),
          child: Text(
            "Itoze gukoresha neza\namafaranga yawe".toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),

        Container(
          margin: const EdgeInsets.fromLTRB(0, 5, 0, 10),
          child: Image.asset(
              "assets/images/lenga_logo.png",
            width: 60,
          ),
        ),
        Material(
          child: InkWell(
            onTap: (){
              print("Sound will be played");
            },
            child: Image.asset(
                "assets/images/sound_icon.png",
              width: 70,
              ),
          ),
          color: Colors.white.withOpacity(0),
        ),

        SizedBox(height: defaultPadding),
        Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: Image.asset(
                "assets/images/mastermoney.png",
                width: 90,
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