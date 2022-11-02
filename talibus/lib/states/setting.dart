import 'package:flutter/material.dart';
import 'package:app_settings/app_settings.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    var container = Container(
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF54436B), Color(0xFF50CB93), Color(0xFFACFFAD)],
          begin: AlignmentDirectional(1, -0.44),
          end: AlignmentDirectional(-1, 0.44),
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting"),
        flexibleSpace: container,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 15, top: 10),
        child: TextButton(
          onPressed: () {
            AppSettings.openLocationSettings();
          },
          style: TextButton.styleFrom(primary: Colors.green),
          child: const Text("Setting Location"),
        ),
      ),
    );
  }
}
