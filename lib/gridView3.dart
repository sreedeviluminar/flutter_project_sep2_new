import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: GridView3(),));
}
class GridView3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Count"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        //children: [], OR
        children: List.generate(
            15,
            (index) => Card(
                  child: Row(
                    children: [
                      Image.asset("assets/icons/pineapple.png"),
                      const Text("PineApple")
                    ],
                  ),
                )),
      ),
    );
  }
}
