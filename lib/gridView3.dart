import 'dart:math';

import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: GridView3(),));
}
class GridView3 extends StatelessWidget {
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
      body: GridView.count(
        childAspectRatio: 3,
        crossAxisCount: 2,
        //children: [], OR
        children: List.generate(7, (index) => Card(
              color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
              child: Row(
                    children: [
                      Expanded(child: Image.asset(fruits[index])),
                      const Text("PineApple")
                    ],
                  ),
                )),
      ),
    );
  }
}
