/*
 * Copyright (c) 2022. Developed by Hirwa Jean Luc.
 */

import 'dart:io';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:lenga/Screens/Login/login_screen.dart';
import 'package:lenga/Screens/SplashScreen.dart';
import 'package:lenga/Screens/Welcome/welcome_screen.dart';
import 'package:lenga/Screens/profile.dart';
import 'package:lenga/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

class NavigationService {
  static GlobalKey<NavigatorState> navigatorKey =
  GlobalKey<NavigatorState>();
}

Future<void> main() async {
  HttpOverrides.global = new MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  logindata = await SharedPreferences.getInstance();
  bool? loggedIn = logindata?.getBool("loggedIn");
  runApp(MyApp(loggedIn: loggedIn));
  }

// void main(){
//   HttpOverrides.global = new MyHttpOverrides();
//   runApp(MyApp());
// }

//void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key, bool? loggedIn}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print(logindata?.getBool('loggedin'));
      return MaterialApp(
        navigatorKey: NavigationService.navigatorKey,
        debugShowCheckedModeBanner: false,
        title: 'LENGA',
        theme: ThemeData(
            primaryColor: kPrimaryColor,
            scaffoldBackgroundColor: Colors.lightBlue,
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: kPrimaryColor,
                shape: const StadiumBorder(),
                maximumSize: const Size(double.infinity, 56),
                minimumSize: const Size(double.infinity, 56),
              ),
            ),
            inputDecorationTheme: const InputDecorationTheme(
              filled: true,
              fillColor: kPrimaryLightColor,
              iconColor: kPrimaryColor,
              prefixIconColor: kPrimaryColor,
              contentPadding: EdgeInsets.symmetric(
                  horizontal: defaultPadding, vertical: defaultPadding),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide.none,
              ),
            )),
        home: SplashScreen(),
      );
  }
}