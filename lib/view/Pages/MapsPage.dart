import 'package:flutter/material.dart';

//import 'package:url_launcher/url_launcher';
Future<void> launchGoogleMaps(double latitude, double longitude) async {
  //final url = 'https://www.google.com/maps/dir/?api=1&destination=$latitude,$longitude';

  //if (await canLaunch(url)) {
  //await launch(url);
  //} else {
  //  throw 'Could not launch Google Maps';
  //}
}

class MapsPage extends StatelessWidget {
  const MapsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Replace these coordinates with your destination's latitude and longitude
            double destinationLatitude = 37.7749;
            double destinationLongitude = -122.4194;

            launchGoogleMaps(destinationLatitude, destinationLongitude);
          },
          child: Text('Navigate to Google Maps'),
        ),
      ),
    );
  }
}
