import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:lenga/Screens/Register/choose_screen.dart';
import 'package:lenga/Screens/Welcome/welcome_screen.dart';
//import 'package:get/get.dart';

import '../../../components/already_have_an_account_acheck.dart';
import '../../../constants.dart';
import '../../../main.dart';
import '../../Signup/signup_screen.dart';
import '../../profile.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            controller: izinaController,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            onSaved: (name) {},
            decoration: InputDecoration(
              hintText: "Izina ukoresha/Izina ry'itsinda",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
              ),
            ),
          ),

          const SizedBox(height: defaultPadding),
          Hero(
            tag: "login_btn",
            child: ElevatedButton(
              onPressed: () async {
                try{
                  Response response = await post(
                      Uri.parse('https://3.215.133.80/api/v1/auth/app/'),
                      body: {
                        'username': izinaController.text.toString(),
                        'password': defaultPass,
                        'location': ''
                      }
                  );
                  if(response.statusCode==200){
                    print("LoggedIn Successfully");
                    var data = jsonDecode(response.body.toString());
                    print(data);
                    logindata?.setString('token', data.toString());
                    logindata?.setBool('loggedin', true);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.transparent,
                      behavior: SnackBarBehavior.floating,
                      elevation: 0,
                      content: Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            height: 70,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 48,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Karibu!',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white),
                                      ),
                                      Text(
                                        'Kwinjira byakunze!',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                              bottom: 25,
                              left: 20,
                              child: ClipRRect(
                                child: Stack(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.orange.shade200,
                                      size: 17,
                                    )
                                  ],
                                ),
                              )),
                          Positioned(
                              top: -20,
                              left: 5,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                      color: Colors.red,
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                    ),
                                  ),
                                  const Positioned(
                                      top: 5,
                                      child: Icon(
                                        Icons.clear_outlined,
                                        color: Colors.white,
                                        size: 20,
                                      ))
                                ],
                              )),
                        ],
                      ),
                    ));



                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Profile(data.toString());
                    }));

                    //Get.snackbar('Byakunze', 'Token is generated');
                  }else{
                    print("Failed");
                    print(response.statusCode);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.transparent,
                      behavior: SnackBarBehavior.floating,
                      elevation: 0,
                      content: Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            height: 70,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 48,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Oops Ntibikunze!',
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.white),
                                      ),
                                      Text(
                                        'Kwinjira ntibikunze ongera ugerageze!',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                              bottom: 25,
                              left: 20,
                              child: ClipRRect(
                                child: Stack(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.orange.shade200,
                                      size: 17,
                                    )
                                  ],
                                ),
                              )),
                          Positioned(
                              top: -20,
                              left: 5,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                      color: Colors.red,
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                    ),
                                  ),
                                  const Positioned(
                                      top: 5,
                                      child: Icon(
                                        Icons.clear_outlined,
                                        color: Colors.white,
                                        size: 20,
                                      ))
                                ],
                              )),
                        ],
                      ),
                    ));
                  }
                }catch(e){
                  print(e.toString());
                }
              },
              child: Text(
                "Injira".toUpperCase(),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ChooseScreen();
                  },
                ),
              );
            },
          ),
          const SizedBox(height: defaultPadding / 2),
        ],
      ),
    );
  }
}
