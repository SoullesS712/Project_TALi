import 'package:flutter/material.dart';
import 'package:talibus/states/home.dart';
import 'package:talibus/states/noti.dart';
import 'package:talibus/states/setting.dart';
import 'package:talibus/states/roadmap.dart';
import 'package:talibus/states/howtouse.dart';

Map<String, WidgetBuilder> router = {
  'home': (context) => const Home(),
  'setting': (context) => const Setting(),
  'noti': (context) => const Noti(),
  'roadmap': (context) => const Roadmap(),
  'howtouse': (context) => const Howtouse()
};
