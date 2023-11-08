import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: Homee(),));
}
class Homee extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("my contacts"),),

      body: ListView(
        children: [

          Card(
            color: Colors.grey,
            elevation: 10,
            shadowColor: Colors.red,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/laptop.jpg"),),
     // Image.asset("assets/images/laptop.jpg")),
              title: Text("name"),
              subtitle: Text("phno"),
              trailing: Icon(Icons.phone),
            ),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.green,
            child: Icon(Icons.person),),
            // Image.asset("assets/images/laptop.jpg")),
            title: Text("name"),
            subtitle: Text("phno"),
            trailing: Icon(Icons.phone),
          ),

          Card(
            elevation: 10,
            shadowColor: Colors.red,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/laptop.jpg"),),
              // Image.asset("assets/images/laptop.jpg")),
              title: Text("name"),
              subtitle: Row(
                children: [
                  Icon(Icons.done_all,color: Colors.blue,),
                  Text("some messages"),
                ],
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("10:30"),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                  radius: 10,
                  child: Text("2"),),
                ],
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.green,
              child: Icon(Icons.person),),
            // Image.asset("assets/images/laptop.jpg")),
            title: Text("name"),
            subtitle: Text("phno"),
            trailing: Icon(Icons.phone),
          ),
          Card(
            color: Colors.grey,
            elevation: 10,
            shadowColor: Colors.red,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/laptop.jpg"),),
              // Image.asset("assets/images/laptop.jpg")),
              title: Text("name"),
              subtitle: Text("phno"),
              trailing: Icon(Icons.phone),
            ),
          ),
          FaIcon(FontAwesomeIcons.facebook),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.green,
              child: Icon(Icons.person),),
            // Image.asset("assets/images/laptop.jpg")),
            title: Text("name"),
            subtitle: Text("phno"),
            trailing: Icon(Icons.phone),
          ),
          Card(
            color: Colors.grey,
            elevation: 10,
            shadowColor: Colors.red,
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage("assets/images/laptop.jpg"),),
              // Image.asset("assets/images/laptop.jpg")),
              title: Text("name"),
              subtitle: Text("phno"),
              trailing: Icon(Icons.phone),
            ),
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.green,
              child: Icon(Icons.person),),
            // Image.asset("assets/images/laptop.jpg")),
            title: Text("name"),
            subtitle: Text("phno"),
            trailing: Icon(Icons.phone),
          ),



        ],
      ),

    );
  }
}
