import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ListView_builder()));
}

class ListView_builder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview Builder"),
      ),
      body: ListView.builder(
        itemCount: 100,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Card(
          color: Colors.yellow,
          child: Text("Hello"),
        ),
      ),
    );
  }
}
