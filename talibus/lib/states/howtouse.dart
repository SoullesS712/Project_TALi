import 'package:flutter/material.dart';

class Howtouse extends StatefulWidget {
  const Howtouse({Key? key}) : super(key: key);

  @override
  State<Howtouse> createState() => _HowtouseState();
}

class _HowtouseState extends State<Howtouse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Howtouse"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('close!'),
        ),
      ),
    );
  }
}
