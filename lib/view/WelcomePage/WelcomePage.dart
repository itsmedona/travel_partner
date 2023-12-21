import 'package:flutter/material.dart';

import 'package:travel_partner/view/NavScreen/NavScreen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi Dona...',
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
        /*actions: [IconButton(onPressed: onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => NavScreen()),
                    (route) => false);, icon: icon)
                    },

         
              
        ],*/
      ),
      body: PageView(
        children: [
         //HomePage(),
          NavScreen(),
        ],
      ),
    );
  }
}
