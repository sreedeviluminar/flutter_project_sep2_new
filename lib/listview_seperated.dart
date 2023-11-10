import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Listview_Seperated()));
}

class Listview_Seperated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("listview_seperated"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(color: Colors.green, child: Text("hello"));
          },
          separatorBuilder: (context, index) {
            if(index%3==0){
            return Divider(
              thickness: 3,
              color: Colors.red,
            );}
            else{
              return
              SizedBox();
            }
          },
          itemCount: 10),
    );
  }
}
