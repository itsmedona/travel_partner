import 'package:flutter/material.dart';
import 'package:travel_partner/view/HomePage/HomePage.dart';
import 'package:travel_partner/view/NavScreen/NavScreen.dart';
import 'package:travel_partner/view/SplashScreen/SplashScreen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Hi Dona...',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            Center(
              child: Text(
                'Travelling Today ?',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ],
        ),
        actions: [],
      ),
      body: PageView(
        //controller: _pageController,
        children: [
          HomePage(),
          NavScreen(),
        ],
      ),
    );
  }
}
