import 'package:flutter/material.dart';
import 'package:talibus/constants.dart';

class firstscreen extends StatefulWidget {
  const firstscreen({Key? key}) : super(key: key);

  @override
  State<firstscreen> createState() => _firstscreen();
}

class _firstscreen extends State<firstscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: null,
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF54436B), Color(0xFF71EFA3)],
                begin: AlignmentDirectional(1, -1),
                end: AlignmentDirectional(-1, 1),
              ),
            ),
            child: Align(
              alignment: const AlignmentDirectional(0.05, -0.75),
              child: SingleChildScrollView(
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 240, 0, 0),
                        child: Icon(
                          Icons.directions_bus,
                          size: 100,
                          color: Color.fromARGB(255, 255, 252, 252),
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      Text(
                        'Tali',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 25),
                      ),
                      const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: Text(
                          'KU.KPS',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 80),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "home");
                          },
                          child: const Text('Start'),
                          style: TextButton.styleFrom(
                              primary: Color(0xFF54436B),
                              backgroundColor:
                                  Color.fromARGB(255, 255, 255, 255),
                              textStyle: TextStyle(fontSize: 20)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(240, 200, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.settings,
                                    size: 30,
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(context, "admin");
                                  },
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, "admin");
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text("For Admin"),
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
            )));
  }
}
