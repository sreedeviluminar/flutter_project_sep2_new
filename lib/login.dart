import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
        actions: const [
          Icon(Icons.camera),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.search_rounded),
        ],
      ),
      body: Column(
        children: [
          Text(
            "Login Page",
            style:
                GoogleFonts.habibi(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, right: 28, top: 10),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  hintText: "UserName",
                  labelText: "Username"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 28.0, right: 28, top: 10, bottom: 15),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.password),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  hintText: "Password",
                  labelText: "Password"),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              },
              child: const Text("Login Here!"))
        ],
      ),
    );
  }
}
