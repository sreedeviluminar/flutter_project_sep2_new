import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridView5(),
  ));
}

class GridView5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("GridView Custom"),
        ),
        body: GridView.custom(
          // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: ),
          // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: ),
          // childrenDelegate: SliverChildListDelegate(
          //  [],  OR  List.generate(length, (index) => null))),
          // childrenDelegate: SliverChildBuilderDelegate((context, index) => null),

          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),
          childrenDelegate: SliverChildListDelegate(
            //[]  OR
              List.generate(
                  10, (index) => Image.asset("assets/images/laptop.jpg"))),
        ));
  }
}
