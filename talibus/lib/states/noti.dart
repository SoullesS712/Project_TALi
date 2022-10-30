import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notification"),
      ),

      // body: Center(
      //     child: FutureBuilder<Busdata>(
      //   future: futureBusdata,
      //   builder: (context, snapshot) {
      //     if (snapshot.hasData) {
      //       return Text(snapshot.data!.idBus);
      //     } else if (snapshot.hasError) {
      //       return Text('${snapshot.error}');
      //     }
      //     return const CircularProgressIndicator();
      //   },
      // )),
    );
  }
}
