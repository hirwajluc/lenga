import 'package:flutter/material.dart';
//void main() => runApp(Profile('',));
class Profile extends StatelessWidget {
  final String data;
  Profile(this.data,);

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(color: Colors.white),
      child: new Center(
        child: new Text("Karibu!\n".toUpperCase()+data,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25,),
        ),
      ),
      alignment: Alignment.center,
    );
  }
}