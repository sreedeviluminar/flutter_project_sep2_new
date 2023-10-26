import 'package:flutter/material.dart';

void main() {
  ///Inflate the given widget and attach it to the screen.
  runApp(MaterialApp(
    home: Splash(),
  ));

  ///materialapp : default theme  home : first screen
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Icon(
          Icons.camera_outlined,
          size: 140,
          color: Colors.white,
        ),
      ),
    );
  }
}
