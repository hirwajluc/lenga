/*
 * Copyright (c) 2022. Developed by Hirwa Jean Luc.
 */

import 'package:flutter/material.dart';
import 'package:lenga/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function? press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Nta konti ufite ? " : "Usanzwe ufite konti ? ",
          style: const TextStyle(color: kPrimaryLightColor, fontSize: 18),
        ),
        GestureDetector(
          onTap: press as void Function()?,
          child: Text(
            login ? "Iyandikishe" : "Injira",
            style: const TextStyle(
              color: kPrimaryLightColor,
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),
          ),
        )
      ],
    );
  }
}
