import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../Login/login_screen.dart';
import '../../Signup/signup_screen.dart';

class LoginAndSignupBtn extends StatelessWidget {
  const LoginAndSignupBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: "login_btn",
          child: ElevatedButton.icon(
            icon: Image.asset(
              "assets/images/loginicon.png",
              width: 50,
              height: 50,
              alignment: Alignment.centerLeft,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
            label: Text(
              "Injira".toUpperCase(),
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton.icon(
          icon: Image.asset(
            "assets/images/signupicon.png",
            width: 50,
            height: 50,
            alignment: Alignment.centerLeft,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SignUpScreen();
                },
              ),
            );
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryLightColor, elevation: 0),
          label: Text(
            "Iyandikishe".toUpperCase(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
