import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: GridView2(),
  ));
}

class GridView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: GridView.builder(
          //scrollDirection: Axis.horizontal,
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.network(
                      "https://images.unsplash.com/photo-1699363177262-6fcf22c0e861?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHx8fA%3D%3D"),
                  Text(
                    "Text $index",
                    style: GoogleFonts.pacifico(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              );
            }),
      ),
    );
  }
}
