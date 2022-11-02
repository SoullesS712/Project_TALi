import 'package:flutter/material.dart';
import 'adminuse.dart';

String textController = 'abc';

class Noti extends StatefulWidget {
  const Noti({Key? key}) : super(key: key);

  @override
  State<Noti> createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  @override
  void initState() {
    super.initState();
  }

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
          title: const Text("Announcement"),
          flexibleSpace: container,
          centerTitle: true,
        ),
        body: SafeArea(
            child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: const [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 12, 0, 12),
                  child: Text(
                    'This Week',
                    style: TextStyle(
                      fontFamily: 'Lexend Deca',
                      color: Color(0xFF95A1AC),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ],
        )));
  }
}
