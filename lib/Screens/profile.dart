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
        title: Text('Lenga'),
      ),
      drawer: const NavigationDrawer(),
      body: Container(
        child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            Card(
              elevation: 10,
              child: Center(
                child: Text('Uko mukoresha amafaranga'),
              ),
            ),
            Card(
              elevation: 10,
              child: Center(
                child: Text('Kora ingengo y\'imari'),
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