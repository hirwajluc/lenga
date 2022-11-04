/*
 * Copyright (c) 2022. Developed by Hirwa Jean Luc.
 */

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lenga/Screens/Welcome/welcome_screen.dart';
import 'package:lenga/Screens/profile.dart';
import 'package:lenga/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    if(theloggedin!=null) {
      Timer(
          Duration(seconds: 3),
              () =>
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => Profile(thetoken!))));
    }else{
      Timer(
          Duration(seconds: 3),
              () =>
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (BuildContext context) => WelcomeScreen())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/images/lengalogocircle.png'),
      ),
    );
  }
}