import 'package:flutter/material.dart';
import 'package:travel_partner/view/SplashScreen/SplashScreen.dart';

void main() {
  runApp(TravelApp());
}

class TravelApp extends StatefulWidget {
  const TravelApp({super.key});

  @override
  State<TravelApp> createState() => _TravelAppState();
}

class _TravelAppState extends State<TravelApp> {
  @override
  void initState() {
    super.initState();
  }
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor:Colors.white),
      home: MySplash()
      );
  }
}
