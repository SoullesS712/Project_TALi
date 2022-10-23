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
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.27,
              height: 150,
              decoration: BoxDecoration(
                color: const Color(0xFFFF9797),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 4,
                    color: Color(0x37000000),
                    offset: Offset(0, 1),
                  )
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Icon(
                      Icons.directions_bus,
                      color: Colors.white,
                      size: 44,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: AutoSizeText(
                      'Tali No.1',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                      child: Text(
                        'หน้าม.-วิศวะ-เกษตร',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Lexend Deca',
                          color: Color(0xB3FFFFFF),
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.27,
              height: 150,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 172, 49),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 4,
                    color: Color(0x37000000),
                    offset: Offset(0, 1),
                  )
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Icon(
                      Icons.directions_bus,
                      color: Colors.white,
                      size: 44,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: AutoSizeText(
                      'Tali No.2',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                      child: Text(
                        'หอในเอกหญิง-โรงส้ม-ตึกเรียน',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Lexend Deca',
                          color: Color(0xB3FFFFFF),
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.27,
              height: 150,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 119, 77, 143),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 4,
                    color: Color(0x37000000),
                    offset: Offset(0, 1),
                  )
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                    child: Icon(
                      Icons.directions_bus,
                      color: Colors.white,
                      size: 44,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                    child: AutoSizeText(
                      'Tali No.3',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 9, 8, 0),
                      child: Text(
                        'รถเสริม',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Lexend Deca',
                          color: Color(0xB3FFFFFF),
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
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
