import 'package:flutter/material.dart';
import 'package:talibus/states/setting.dart';
import 'package:talibus/states/noti.dart';
import 'package:talibus/states/roadmap.dart';
import 'package:talibus/states/howtouse.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerItems = ListView(
      children: [
        DrawerHeader(
          child:
              Padding(padding: const EdgeInsets.all(50.0), child: Text("Menu")),
        ),
        ListTile(
          title: Text("Notification"),
          onTap: () {
            Navigator.pushNamed(context, "noti");
          },
        ),
        ListTile(
          title: Text("Setting"),
          onTap: () {
            Navigator.pushNamed(context, "setting");
          },
        ),
        ListTile(
          title: Text("How to Use"),
          onTap: () {
            Navigator.pushNamed(context, "howtouse");
          },
        ),
      ],
    );

    var container = Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.green, Color.fromARGB(255, 187, 244, 54)],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ตะลัย',
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(
            icon: Image.asset('images/roadicon.png'),
            onPressed: () {
              Navigator.pushNamed(context, "roadmap");
            },
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ],
        flexibleSpace: container,
      ),
      drawer: Drawer(child: drawerItems),
    );
  }
}
