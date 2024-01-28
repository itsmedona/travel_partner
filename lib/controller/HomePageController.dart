import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:travel_partner/model/TouristActivities.dart';

class HomePageController with ChangeNotifier {
  Map<String, dynamic> decodedData = {};
  TravelDetails tmodel = TravelDetails();
  bool isLoading = false;

  fetchData() async {
    final url =
        Uri.parse('https://trailapi-trailapi.p.rapidapi.com/trails/explore/');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      Map<String, dynamic> decodedData = {};
      decodedData = jsonDecode(response.body);
      tmodel = TravelDetails.fromJson(decodedData);
      notifyListeners();
    } else {
      print("api failed");
    }
  }
}
