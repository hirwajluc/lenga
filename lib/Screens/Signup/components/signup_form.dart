/*
 * Copyright (c) 2022. Developed by Hirwa Jean Luc.
 */

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../../components/already_have_an_account_acheck.dart';
import '../../../constants.dart';
import '../../Login/login_screen.dart';

class SignUpForm extends StatelessWidget {
  final String dropDownValue= "Gasabo";

  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String theDropDownValue= dropDownValue;
    return Form(
      child: Column(
        children: [
          TextFormField(
            controller: izina,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColor,
            onSaved: (name) {},
            decoration: InputDecoration(
              hintText: "Izina ukoresha",
              prefixIcon: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                hintText: "Aho muherereye",
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.place),
                ),
              ),
              value: dropDownValue,
              items: <String>[
                "Gasabo",
                "Kicukiro",
                "Nyarugenge",
                "Burera",
                "Gakenke",
                "Gicumbi",
                "Musanze",
                "Rulindo",
                "Gisagara",
                "Huye",
                "Kamonyi",
                "Muhanga",
                "Nyamagabe",
                "Nyanza",
                "Nyaruguru",
                "Ruhango",
                "Bugesera",
                "Gatsibo",
                "Kayonza",
                "Kirehe",
                "Ngoma",
                "Nyagatare",
                "Rwamagana",
                "Karongi",
                "Ngororero",
                "Nyabihu",
                "Nyamasheke",
                "Rubavu",
                "Rusizi",
                "Rutsiro",
              ].map((String thevalue) {
                return DropdownMenuItem<String>(
                  value: thevalue,
                  child: Text(thevalue),
                );
              }).toList(),
              onChanged: (String? value) {
                  theDropDownValue = value!;
              },
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          ElevatedButton(
            onPressed: () async {
              try {
                final thedata = jsonEncode({
                  'username': izina.text.toString(),
                  'first_name': izina.text.toString(),
                  'last_name': izina.text.toString(),
                  'password': defaultPass,
                  'location':theDropDownValue,
                });
                Response response = await post(
                    Uri.parse('https://3.215.133.80/api/v1/users/registration/'),
                    body: thedata,
                    headers: {
                      'content-type' : 'application/json',
                      'accept' : '*/*',
                    }
                );
                if (response.statusCode == 201) {
                  print("Registered Successfully");
                  var data = jsonDecode(response.body.toString());

                  print(data);


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
                                      'Byiza!',
                                      style: TextStyle(
                                          fontSize: 18, color: Colors.white),
                                    ),
                                    Text(
                                      'Kwiyandikisha byakunze!',
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

                } else {
                  print("Failed");
                  var data = jsonDecode(response.body.toString());
                  print(data);

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
                                      'Kwiyandikisha ntibikunze ongera ugerageze!',
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
              } catch (e) {
                print(e.toString());
              }

            },
            child: Text("Iyandikishe".toUpperCase()),
          ),
          const SizedBox(height: defaultPadding),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
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