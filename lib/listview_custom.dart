import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ListView_custom(),
  ));
}

class ListView_custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Custom"),
      ),
      body: ListView.custom(
        // childrenDelegate: SliverChildListDelegate(
        // [
        //   Card(child: Center(child: Text("HIIIIIIII"),),),
        //   Card(child: Center(child: Text("HIIIIIIII"),),),
        //   Card(child: Center(child: Text("HIIIIIIII"),),),
        //   Card(child: Center(child: Text("HIIIIIIII"),),),
        //   Card(child: Center(child: Text("HIIIIIIII"),),),
        // ]
        //  List.generate(10, (index) => const Card(child: Center(child: Text("HIIIIIIII"),),))
        // )
        childrenDelegate: SliverChildBuilderDelegate(
          childCount: 6,
                (context, index) => Card(
                   color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset("assets/icons/dolphin.png",height: 100,width: 100,),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name     : Dolphin"),
                      Text("Quantity : 2"),
                      Text("Price    : \$ 2000/Kg")
                    ],
                  ),
                  MaterialButton(
                    color: Colors.brown,
                    shape: const StadiumBorder(),
                    minWidth: 120,
                    height: 40,
                    onPressed: () {},
                    child: const Text("Add to Cart", style: TextStyle(color: Colors.white),),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
