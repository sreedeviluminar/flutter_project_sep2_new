import 'package:flutter/material.dart';
import 'package:flutter_project_sep2/login.dart';
import 'package:flutter_project_sep2/registration.dart';
import 'package:google_fonts/google_fonts.dart';

class Login_SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("HELLO THERE !!!",
              style: GoogleFonts.gabriela(
                  fontWeight: FontWeight.bold,
                  fontSize: 35),),
            const Image(image: AssetImage("assets/icons/dolphin.png"),
              width: 180,
              height: 200,),
            MaterialButton(
              shape: StadiumBorder(),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              },
              color: Colors.blue,
              child: const Text('Login'),
            ),
            MaterialButton(
              shape: StadiumBorder(),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
              },
              color: Colors.purple,
              child: const Text('Sign Up'),
            )
          ],
        ),
      ),
    );
  }
}
