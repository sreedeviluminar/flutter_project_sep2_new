import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AppBar_property(),));
}
class AppBar_property extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("My Appbar"),
         centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: [
          const Icon(Icons.camera_alt_outlined),
          const SizedBox(width: 15,),
          const Icon(Icons.search),
          PopupMenuButton(itemBuilder: (context) {
            return [
              const PopupMenuItem(child: Text("New Group")),
              const PopupMenuItem(child: Text("New BroadCast")),
              const PopupMenuItem(child: Text("Settings")),
              const PopupMenuItem(child: Text("Profile"))
            ];
          })
        ],
      ),
    );
  }
}
