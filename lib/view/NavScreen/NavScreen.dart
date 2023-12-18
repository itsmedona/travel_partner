// ignore: file_names
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:travel_partner/view/HomePage/HomePage.dart';
import 'package:travel_partner/view/WelcomePage/WelcomePage.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int selectedIndex = 0;
  List<Widget> MyWidgetList = [
    HomePage(),
    WelcomePage(),
    /*HomeScreen(),
    SearchScreen(),
    ComingSoonScreen(),
    DownloadScreen(),
    MoreScreen()*/
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:MyWidgetList[selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color.fromARGB(255, 70, 64, 64),
          //currentIndex: selectedIndex,
          //type: BottomNavigationBarType.fixed,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: [
            CurvedNavigationBarItem(
                child: Icon(Icons.home),label: "Home"), 
            CurvedNavigationBarItem(child: Icon(Icons.search), label: "Search"),
            CurvedNavigationBarItem(
                child: Icon(Icons.favorite_border), label: "Favorites"),
            CurvedNavigationBarItem(
                child: Icon(Icons.map_rounded), label: "Maps"),
           CurvedNavigationBarItem(child: Icon(Icons.person), label: "Profile"),
          ]),
    ); 
  }
}