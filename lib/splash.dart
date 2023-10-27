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
     // backgroundColor: Color(0xeca3cbf3),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Icon(Icons.camera_outlined, size: 140, color: Colors.white,),
            //Image.asset("assets/icons/dolphin.png",height: 200,width: 200,),
            Image.network("https://media.istockphoto.com/id/1367357589/photo/red-heart-shaped-sky-at-sunset-beautiful-landscape-with-flowers-love-background-with-copy.jpg?s=612x612&w=0&k=20&c=VbyUaFaEvR_hAGtDmcbyw7X3E7KPVmW4GYxEYjbBGOk="),
            const Text(
              "APP NAME",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
