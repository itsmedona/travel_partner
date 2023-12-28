import 'dart:async';
import 'package:flutter/material.dart';
import 'package:travel_partner/view/WelcomePage/WelcomePage.dart';

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
          context, MaterialPageRoute(builder: (context) => WelcomePage()));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF2F6),
      body: Column(children: [
        SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/travelAroundGlobe.png"),
                  fit: BoxFit.cover,
                  //opacity: 0.7
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
