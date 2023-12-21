import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:travel_partner/view/FavoritesPage/FavoritesPage.dart';
import 'package:travel_partner/view/HomeAppBar/HomeAppBar.dart';
import 'package:travel_partner/view/MapsPage/MapsPage.dart';
import 'package:travel_partner/view/MyHomePage/MyHomePage.dart';
import 'package:travel_partner/view/SearchPage/SearchPage.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int selectedIndex = 0;
  List<Widget> MyWidgetList = [
    //HomePage(),
    SearchPage(),
    FavoritesPage(),
    MapsPage(),
    MyHomePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyWidgetList[selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Color.fromARGB(255, 70, 64, 64),
          //currentIndex: selectedIndex,
          //type: BottomNavigationBarType.fixed,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: [
            CurvedNavigationBarItem(child: Icon(Icons.home)),//HomePage
            CurvedNavigationBarItem(child: Icon(Icons.search)),//SearchPage
            CurvedNavigationBarItem(child: Icon(Icons.favorite_border)),//FavoritesPage
            CurvedNavigationBarItem(child: Icon(Icons.map_rounded)),//MapsPage
            CurvedNavigationBarItem(child: Icon(Icons.add_box_outlined)),//
            CurvedNavigationBarItem(child: Icon(Icons.person)),//ProfilePage
          ]),
    );
  }
}
