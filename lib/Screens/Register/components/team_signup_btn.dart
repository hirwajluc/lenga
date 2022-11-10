/*
 * Copyright (c) 2022. Developed by Hirwa Jean Luc.
 */

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
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ElevatedButton(
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
            child: Stack(
              children: <Widget>[
                Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      "assets/images/loginicon.png",
                      width: 50,
                    )
                ),
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Injira".toUpperCase(),
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
                      textAlign: TextAlign.center,
                    )
                )
              ],
            ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
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
          child: Stack(
            children: <Widget>[
              Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    "assets/images/signupicon.png",
                    width: 50,
                  )
              ),
              Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Iyandikishe".toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black),
                    textAlign: TextAlign.center,
                  )
              )
            ],
          ),
        ),
      ],
    );
  }
}
