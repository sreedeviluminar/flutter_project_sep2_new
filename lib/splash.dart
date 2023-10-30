import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: Container(
        decoration: const BoxDecoration(

            ///setting image as screen background
            // image: DecorationImage(
            //   fit: BoxFit.cover,
            //     image: NetworkImage(
            //         "https://images.unsplash.com/photo-1468581264429-2548ef9eb732?auto=format&fit=crop&q=60&w=800&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8c2VhfGVufDB8fDB8fHww"))
            ///setting gradient as screen background
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.topLeft,
                colors: [
              Colors.white,
              Colors.blue,
              Colors.blueAccent,
              Colors.white
            ])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Icon(Icons.camera_outlined, size: 140, color: Colors.white,),
              Image.asset(
                "assets/icons/dolphin.png",
                height: 200,
                width: 200,
              ),
              //Image.network("https://media.istockphoto.com/id/1367357589/photo/red-heart-shaped-sky-at-sunset-beautiful-landscape-with-flowers-love-background-with-copy.jpg?s=612x612&w=0&k=20&c=VbyUaFaEvR_hAGtDmcbyw7X3E7KPVmW4GYxEYjbBGOk="),
              Text(
                "APP NAME",
                // style: TextStyle(
                //     fontSize: 30,
                //     color: Colors.white,
                //     fontWeight: FontWeight.bold),
                ///text style using google fonts
                style: GoogleFonts.gabriela(
                    fontSize: 30,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
