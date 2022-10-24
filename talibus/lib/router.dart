import 'package:flutter/material.dart';
import 'package:talibus/states/home.dart';
import 'package:talibus/states/noti.dart';
import 'package:talibus/states/setting.dart';
import 'package:talibus/states/roadmap.dart';
import 'package:talibus/states/howtouse.dart';
import 'package:talibus/states/Fistscreen.dart';
import 'package:talibus/states/admin.dart';

Map<String, WidgetBuilder> router = {
  'firstScreen': (context) => const firstscreen(),
  'home': (context) => const Home(),
  'setting': (context) => const Setting(),
  'noti': (context) => const Noti(),
  'roadmap': (context) => const Roadmap(),
  'howtouse': (context) => const Howtouse(),
  'admin': (context) => const Admin()
};
