import 'package:hive_flutter/adapters.dart';

@HiveType(typeId: 1)
class TripModel {
  TripModel({
    required this.title,
    required this.photos,
    required this.description,
    required this.date,
    required this.location,
  });
  @HiveField(1)
  final String title;

  @HiveField(2)
  final List<String> photos;

  @HiveField(3)
  final String description;

  @HiveField(4)
  final DateTime date;

  @HiveField(5)
  final String location;
}

