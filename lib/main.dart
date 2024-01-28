import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_partner/controller/HomePageController.dart';
import 'package:travel_partner/view/Screens/OnBoardingScreen/OnBoardingPage.dart';

void main() {
  runApp(const TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create:(context)=>HomePageController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Javoo..",
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
          useMaterial3: true,
        ),
        home: const OnboardingPage(),
      ),
    );
  }
}
