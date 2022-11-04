/*
 * Copyright (c) 2022. Developed by Hirwa Jean Luc.
 */

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:shared_preferences/shared_preferences.dart';

const kPrimaryColor = Color(0xFFBF40BF);
//const kPrimaryColor = Color(0xFF0F7700);
const kPrimaryLightColor = Color(0xFFF1E6FF);

const double defaultPadding = 16.0;
const String defaultPass = "busara@#20@Len10";

//AudioPlayer player = AudioPlayer();

var izinaController = TextEditingController();
var izina = TextEditingController();
var ahouherereye = TextEditingController();

SharedPreferences? logindata;
bool? newuser;

String? thetoken = logindata?.getString('token');
bool? theloggedin = logindata?.getBool('loggedin');