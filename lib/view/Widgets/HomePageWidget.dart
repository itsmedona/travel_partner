import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../../model/TouristActivities.dart';

// ignore: must_be_immutable
class HomePageWidget extends StatelessWidget {
  String? name;
  String? city;
  String? state;
  String? country;
  String? description;
  String? directions;
  String? lat;
  String? lon;
  String? parentId;
  Activities? activities;

  HomePageWidget({
    super.key,
    this.name,
    this.city,
    this.state,
    this.country,
    this.description,
    this.directions,
    this.lat,
    this.lon,
    this.parentId,
    this.activities,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(children: [
        SizedBox(
          child: Text(
            name!,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Text(
                city!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            SizedBox(
              child: Text(
                directions!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            IconButton(
                onPressed: () {
                  Share.share(name!);
                },
                icon: Icon(Icons.share))
          ],
        ),
        SizedBox(
          child: Text(
            description!,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        )
      ]),
    ));
  }
}

class Activities {
  Hiking? hiking;
  MountainBiking? mountainBiking;

  Activities({
    this.hiking,
    this.mountainBiking,
  });
}
