import 'dart:convert';

Map<String, TravelDetails> travelDetailsFromJson(String str) => Map.from(json.decode(str)).map((k, v) => MapEntry<String, TravelDetails>(k, TravelDetails.fromJson(v)));

class TravelDetails {
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

    TravelDetails({
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

    factory TravelDetails.fromJson(Map<String, dynamic> json) => TravelDetails(
        name: json["name"],
        city: json["city"],
        state: json["state"],
        country: json["country"],
        description: json["description"],
        directions: json["directions"],
        lat: json["lat"],
        lon: json["lon"],
        parentId: json["parent_id"],
        activities: json["activities"] == null ? null : Activities.fromJson(json["activities"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "city": city,
        "state": state,
        "country": country,
        "description": description,
        "directions": directions,
        "lat": lat,
        "lon": lon,
        "parent_id": parentId,
        
    };
}

class Activities {
    Hiking? hiking;
    MountainBiking? mountainBiking;

    Activities({
        this.hiking,
        this.mountainBiking,
    });

    factory Activities.fromJson(Map<String, dynamic> json) => Activities(
        hiking: json["hiking"] == null ? null : Hiking.fromJson(json["hiking"]),
        mountainBiking: json["mountain biking"] == null ? null : MountainBiking.fromJson(json["mountain biking"]),
    );


}

class Hiking {
    String? url;
    String? length;
    String? description;
    String? name;
    String? rank;
    String? rating;
    String? thumbnail;
    String? activityType;
    String? activityTypeName;
    HikingAttribs? attribs;
    String? placeActivityId;

    Hiking({
        this.url,
        this.length,
        this.description,
        this.name,
        this.rank,
        this.rating,
        this.thumbnail,
        this.activityType,
        this.activityTypeName,
        this.attribs,
        this.placeActivityId,
    });

    factory Hiking.fromJson(Map<String, dynamic> json) => Hiking(
        url: json["url"],
        length: json["length"],
        description: json["description"],
        name: json["name"],
        rank: json["rank"],
        rating: json["rating"],
        thumbnail: json["thumbnail"],
        activityType: json["activity_type"],
        activityTypeName: json["activity_type_name"],
        attribs: json["attribs"] == null ? null : HikingAttribs.fromJson(json["attribs"]),
        placeActivityId: json["place_activity_id"],
    );

    
}

class HikingAttribs {
    String? length;

    HikingAttribs({
        this.length,
    });

    factory HikingAttribs.fromJson(Map<String, dynamic> json) => HikingAttribs(
        length: json["length"],
    );

    
}

class MountainBiking {
    String? url;
    String? length;
    String? description;
    String? name;
    String? rank;
    String? rating;
    String? thumbnail;
    String? activityType;
    String? activityTypeName;
    MountainBikingAttribs? attribs;
    String? placeActivityId;

    MountainBiking({
        this.url,
        this.length,
        this.description,
        this.name,
        this.rank,
        this.rating,
        this.thumbnail,
        this.activityType,
        this.activityTypeName,
        this.attribs,
        this.placeActivityId,
    });

    factory MountainBiking.fromJson(Map<String, dynamic> json) => MountainBiking(
        url: json["url"],
        length: json["length"],
        description: json["description"],
        name: json["name"],
        rank: json["rank"],
        rating: json["rating"],
        thumbnail: json["thumbnail"],
        activityType: json["activity_type"],
        activityTypeName: json["activity_type_name"],
        attribs: json["attribs"] == null ? null : MountainBikingAttribs.fromJson(json["attribs"]),
        placeActivityId: json["place_activity_id"],
    );

    
}

class MountainBikingAttribs {
    String? length;
    String? nightride;

    MountainBikingAttribs({
        this.length,
        this.nightride,
    });

    factory MountainBikingAttribs.fromJson(Map<String, dynamic> json) => MountainBikingAttribs(
        length: json["length"],
        nightride: json["nightride"],
    );

    
}