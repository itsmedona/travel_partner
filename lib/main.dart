import 'package:flutter/material.dart';
import 'package:travel_partner/view/SplashScreen/SplashScreen.dart';

void main() {
  runApp(TravelApp());
}
class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.deepPurpleAccent
      ),
      home: MySplash(),
    );
  }
}