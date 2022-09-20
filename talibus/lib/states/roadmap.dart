import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

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
      const Icon(
        Icons.directions_bus_sharp,
      ),
      Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
        child: AutoSizeText(
          'Tali No.1',
          textAlign: TextAlign.center,
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("RoadMap"),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF54436B), Color(0xFF50CB93), Color(0xFFACFFAD)],
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
