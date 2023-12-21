import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController _pageController = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel Partner'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'My Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('My Trips'),
              onTap: () {
                _handleDrawerItemClick(0);
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text('Add Trip'),
              onTap: () {
                _handleDrawerItemClick(1);
                Navigator.pop(context); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.map),
              title: Text('Maps'),
              onTap: () {
                _handleDrawerItemClick(2);
                Navigator.pop(context); // Close the drawer
              },
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            pageIndex = index;
          });
        },
        children: [
          // Pages for each navigation item
          Container(
            color: Colors.red,
            child: Center(
              child: Text('My Trips Page'),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Text('Add Trip Page'),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(
              child: Text('Maps Page'),
            ),
          ),
        ],
      ),
    );
  }

  void _handleDrawerItemClick(int index) {
    _pageController.jumpToPage(index);
    setState(() {
      pageIndex = index;
    });
  }
}
