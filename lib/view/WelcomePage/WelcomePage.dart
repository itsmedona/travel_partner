import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title:Text("JaaVo.."),

    ),

    );
  }
}