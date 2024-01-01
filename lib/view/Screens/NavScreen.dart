import 'package:flutter/material.dart';
import 'package:travel_partner/view/Pages/FavoritesPage.dart';
import 'package:travel_partner/view/Pages/HomePage.dart';
import 'package:travel_partner/view/Pages/MapsPage.dart';

import 'package:travel_partner/view/Pages/PostsPage.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int selectedIndex = 0;
  List<Widget> myWidgetList = [
    HomePage(),
    MapsPage(),
    HomePage(),
    PostsPage(),
    FavoritesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myWidgetList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, size: 30), label: "profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border, size: 30), label: "favorites"),
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_city_outlined, size: 30),
              label: "location"),
          BottomNavigationBarItem(
              icon: Icon(Icons.list, size: 30), label: "trips"),
        ],
      ),
    );
  }
}
