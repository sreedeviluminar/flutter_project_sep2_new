import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_project_sep2/login_signup.dart';
import 'package:flutter_project_sep2/stateful_Login.dart';
import 'package:lottie/lottie.dart';

import 'login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash2(),
  ));
}

class Splash2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Splsh2State();
}

class _Splsh2State extends State<Splash2> {
  @override
  void initState() {
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login_SignUp()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff360822),
      body: Center(
        child: Lottie.asset("assets/animations/tree.json", height: 300),
        //   child: Lottie.network("https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/Mobilo/A.json"),
      ),
    );
  }
}
