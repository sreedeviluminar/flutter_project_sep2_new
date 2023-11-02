import 'package:flutter/material.dart';
import 'package:flutter_project_sep2/homee.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  String uname = "admin";
  String password = 'abc123';

  final user_controller = TextEditingController();
  final pass_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: const Text("Login Page"),
        // actions: const [
        //   Icon(Icons.camera),
        //   SizedBox(
        //     width: 10,
        //   ),
        //   Icon(Icons.search_rounded),
        // ],
      ),
      body: Column(
        children: [
          Text(
            "Login Page",
            style:
                GoogleFonts.habibi(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, right: 28, top: 20),
            child: TextField(
              controller: user_controller,
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
              obscureText: true,
              obscuringCharacter: '*',
              controller: pass_controller,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.password),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  hintText: "Password",
                  labelText: "Password"),
            ),
          ),
          MaterialButton(
              color: Colors.green,
              shape: const StadiumBorder(),
              height: 60,
              minWidth: 180,
              onPressed: () {
                if (uname == user_controller.text &&
                    password == pass_controller.text) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homee()));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                    content: Text('Invalid Username or Password'),
                    backgroundColor: Colors.red,
                  ));
                }

                /// to clear text fields
                user_controller.text = "";
                pass_controller.text = "";
              },
              child: const Text("Login Here!")),
          const SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: () {},
              child: RichText(
                  text: const TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      children: [
                    TextSpan(text: "Don't Have an Account?"),
                    TextSpan(
                        text: 'SignUp!!!',
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ])))
        ],
      ),
    );
  }
}
