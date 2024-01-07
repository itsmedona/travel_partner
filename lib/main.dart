import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:hive_flutter/adapters.dart';
import 'package:travel_partner/view/Screens/OnBoardingScreen/OnBoardingPage.dart';

import 'model/trip_model.dart';
import 'view/Pages/WelcomePage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  //Hive.registerAdapter(TripModelAdapter());
  // ignore: unused_local_variable
  var box = await Hive.openBox<TripModel>('trips');

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
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Javoo..",
      home: OnboardingPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
          useMaterial3: true),
      //home: MySplash(),
    );
  }
}
