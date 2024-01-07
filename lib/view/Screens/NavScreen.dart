import 'package:flutter/material.dart';
import 'package:travel_partner/view/Pages/SearchPage.dart';


import '../Pages/FavoritesPage.dart';
import '../Pages/HomePage.dart';
import '../Pages/ProfilePage.dart';
import 'MyTripsScreen.dart';


class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int selectedIndex = 0;
  List<Widget> MyWidgetList = [
    FavoritesPage(),
    SearchPage(),
    HomePage(),
    MyTripsScreen(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyWidgetList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black38,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border, size: 30), label: "Favorites"),
              BottomNavigationBarItem(icon: Icon(Icons.search_outlined,size: 30),label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.list, size: 30), label: "Trips"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, size: 30), label: "Profile"),
        ],
      ),
    );
  }
}
