import 'package:flutter/material.dart';
import 'package:lenga/Screens/Login/login_screen.dart';
import 'package:lenga/Screens/Welcome/welcome_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:lenga/constants.dart';

//void main() => runApp(Profile('',));
class Profile extends StatelessWidget {
  final String data;
  Profile(this.data,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            //SharedPreferences prefs = await SharedPreferences.getInstance();
            logindata?.remove('loggedin');
            logindata?.remove('token');
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (BuildContext ctx) => WelcomeScreen()));
          },
          child: Text('Logout'),
        ),
      ),
    );
  }

}