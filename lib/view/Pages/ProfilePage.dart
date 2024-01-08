import 'package:flutter/material.dart';

import '../Screens/AddTripScreen.dart';
import '../Screens/MyTripsScreen.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi User',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                'Travelling Today ?',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  "assets/images/soloTraveller.png",
                  fit: BoxFit.cover,
                  height: 60,
                  width: 60,
                ),
              ),
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.list), text: 'My Trips'),
              Tab(icon: Icon(Icons.add), text: 'Add Trip'),
              Tab(icon: Icon(Icons.map), text: 'Maps'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MyTripsScreen(),
            AddTripScreen(
                title: '',
                imageUrl: '',
                description: '',
                date: '',
                location: '',
                onDelete: () {}),
          
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                ),
                child: Text('Jaavo'
                  'Your Travel Partner...',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(Icons.list),
                title: Text('My Trips'),
                onTap: () {
                  DefaultTabController.of(context).animateTo(0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.add),
                title: Text('Add Trip'),
                onTap: () {
                  DefaultTabController.of(context).animateTo(1);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.map),
                title: Text('Maps'),
                onTap: () {
                  DefaultTabController.of(context).animateTo(2);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
