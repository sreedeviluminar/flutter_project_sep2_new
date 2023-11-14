import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: GridView1(),
  ));
}

class GridView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 8,),
            // gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            //   mainAxisSpacing: 15,
            //   crossAxisSpacing: 8,
            //   maxCrossAxisExtent: 100,
            // ),
            children: List.generate(
              15,
              (index) => Container(
                color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.cake,
                        size: 20,
                      ),
                      Text(
                        "Cake",
                        style: GoogleFonts.farsan(
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
            )
            // const [
            //   Card(child: Center(child: Icon(Icons.cake,size: 20,),),),
            //   Card(child: Center(child: Icon(Icons.cake,size: 20,),),),
            //   Card(child: Center(child: Icon(Icons.cake,size: 20,),),),
            //   Card(child: Center(child: Icon(Icons.cake,size: 20,),),),
            //   Card(child: Center(child: Icon(Icons.cake,size: 20,),),),
            //   Card(child: Center(child: Icon(Icons.cake,size: 20,),),),
            //   Card(child: Center(child: Icon(Icons.cake,size: 20,),),),
            //   Card(child: Center(child: Icon(Icons.cake,size: 20,),),),
            //   Card(child: Center(child: Icon(Icons.cake,size: 20,),),)
            // ],

            ),
      ),
    );
  }
}
