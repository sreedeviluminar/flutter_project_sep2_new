import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridView4(),
  ));
}

class GridView4 extends StatelessWidget {
  var fruits = [
    "assets/icons/bananas.png",
    "assets/icons/donut.png",
    "assets/icons/grapes.png",
    "assets/icons/mango.png",
    "assets/icons/orange.png",
    "assets/icons/pineapple.png",
    "assets/icons/pizza.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("GridView Count"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GridView.extent(
            maxCrossAxisExtent: 170,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            //children: [],
            children: List.generate(
                10,
                (index) => Container(
                    color: Colors.black,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(15),
                      //   color: Colors
                      //       .primaries[Random().nextInt(Colors.primaries.length)],
                      // ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Expanded(
                                child: Image.asset("assets/icons/hamburger.png",height: 80,width: 80,)),
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                              ),
                              onPressed: () {},
                              icon: Icon(Icons.shopping_cart),
                              label: Text("Buy Now"),
                            )
                          ],
                        ),
                      ),
                    )),
          ),
        ));
  }
}
