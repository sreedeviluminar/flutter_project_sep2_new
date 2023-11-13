import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ListView_builder()));
}

class ListView_builder extends StatelessWidget {
  var names = ["hello", "hai", "welcome", "good"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview Builder"),
      ),
      body: ListView.builder(
          itemCount: 100,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.yellow,
              child: Text(names[index]),
            );
          }),
    );
  }
}
