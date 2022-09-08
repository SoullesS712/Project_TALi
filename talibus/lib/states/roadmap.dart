import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Roadmap extends StatefulWidget {
  const Roadmap({Key? key}) : super(key: key);

  @override
  State<Roadmap> createState() => _RoadmapState();
}

class _RoadmapState extends State<Roadmap> {
  @override
  Widget build(BuildContext context) {
    var children2 = [
      Container(
        margin: EdgeInsets.all(8.0),
        child: Card(
          // ignore: prefer_const_constructors
          shape: RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(8.0))),
          child: InkWell(
            onTap: () => print("object"),
            child: Column(
              children: [
                ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(0.8),
                      topRight: Radius.circular(8.0),
                    ),
                    child: Image.asset(
                      'images/taliroadmap.jpg',
                      width: 420,
                      height: 380,
                      fit: BoxFit.fill,
                    ))
              ],
            ),
          ),
        ),
      ),
      // ignore: prefer_const_constructors
      ListTile(
        title: Text(
          'Map',
          style: GoogleFonts.getFont('Kanit'),
        ),
        //subtitle: Text('can zoom in'),
      ),
      //const Icon(
      //Icons.favorite,
      //)
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text("RoadMap"),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green, Color.fromARGB(255, 187, 244, 54)],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
      ),
      body: ListView(
        children: children2,
      ),
    );
  }
}
