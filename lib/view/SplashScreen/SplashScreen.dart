import 'dart:async';
import 'package:flutter/material.dart';
import 'package:travel_partner/view/MyHomePage/MyHomePage.dart';
//import 'package:travel_partner/view/WelcomePage/WelcomePage.dart';

class MySplash extends StatefulWidget {
  const MySplash({super.key});

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyHomePage()));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(),
            child: Center(
              child: Image.asset("assets/images/travelAroundGlobe.png"),
            ),
          ),
        ),
      ]),
    );
  }
}
