// @dart = 2.9
import 'fault.dart';
import 'package:strava_flutter/Models/athlete.dart';

class DetailedSegmentEffort {
  Fault fault;
  int id;
  int resourceState;
  String name;
  ActivityEffort activity;
  Athlete athlete;
  int elapsedTime;
  String startDate;
  String startDateLocal;
  double distance;
  int movingTime;
  int startIndex;
  int endIndex;
  bool deviceWatts;
  double averageWatts;
  SegmentEffort segment;

  int komRank;
  int prRank;
  List<dynamic> achievements; // could be a list of something

  DetailedSegmentEffort({
    Fault fault,
    this.id,
    this.resourceState,
    this.name,
    this.activity,
    this.athlete,
    this.elapsedTime,
    this.startDate,
    this.startDateLocal,
    this.distance,
    this.movingTime,
    this.startIndex,
    this.endIndex,
    this.deviceWatts,
    this.averageWatts,
    this.segment,
    this.komRank,
    this.prRank,
    this.achievements,
  });

  DetailedSegmentEffort.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    resourceState = json['resource_state'];
    name = json['name'];
    activity = ActivityEffort.fromJson(json['activity']);
    athlete = Athlete.fromJson(json['athlete']);
    elapsedTime = json['elapsed_time'];
    startDate = json['start_date'];
    startDateLocal = json['start_date_local'];
    distance = json['distance'];
    movingTime = json['moving_time'];
    startIndex = json['start_index'];
    endIndex = json['end_index'];
    deviceWatts = json['device_watts'];
    averageWatts = json['average_watts'];
    segment = SegmentEffort.fromJson(json['segment']);
    komRank = json['kom_rank'];
    prRank = json['pr_rank'];
    achievements = json['achievements'] ?? '0';
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['resource_state'] = resourceState;
    data['name'] = name;
    data['activity_type'] = activity;
    data['athlete'] = athlete;
    data['elapsed_time'] = elapsedTime;
    data['start_date'] = startDate;
    data['start_date_local'] = startDateLocal;
    data['distance'] = distance;

    data['moving_time'] = movingTime;
    data['start_index'] = startIndex;
    data['end_index'] = endIndex;
    data['device_watts'] = deviceWatts;
    data['average_watts'] = averageWatts;
    data['segment'] = segment;
    data['kom_rank'] = komRank;
    data['pr_rank'] = prRank;
    data['achievements'] = averageWatts;
    return data;
  }
}

class SegmentEffort {
  Fault fault;
  int id;
  int resourceState;
  String name;
  String activityType;
  double distance;
  double averageGrade;
  double maximumGrade;
  double elevationHigh;
  double elevationLow;
  List<double> startLatlng;
  List<double> endLatlng;
  double startLatitude;
  double startLongitude;
  double endLatitude;
  double endLongitude;
  int climbCategory;
  String city;
  String state;
  String country;
  bool private;
  bool hazardous;
  bool starred;

  SegmentEffort({
    Fault fault,
    this.id,
    this.resourceState,
    this.name,
    this.activityType,
    this.distance,
    this.averageGrade,
    this.maximumGrade,
    this.elevationHigh,
    this.elevationLow,
    this.startLatlng,
    this.endLatlng,
    this.startLatitude,
    this.startLongitude,
    this.endLatitude,
    this.endLongitude,
    this.climbCategory,
    this.city,
    this.state,
    this.country,
    this.private,
    this.hazardous,
    this.starred,
  });

  SegmentEffort.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    resourceState = json['resource_state'];
    name = json['name'];
    activityType = json['activity_type'];
    distance = json['distance'];
    averageGrade = json['average_grade'];
    maximumGrade = json['maximum_grade'];
    elevationHigh = json['elevation_high'];
    elevationLow = json['elevation_low'];
    startLatlng = json['start_latlng']?.cast<double>();
    endLatlng = json['end_latlng']?.cast<double>();
    startLatitude = json['start_latitude'];
    startLongitude = json['start_longitude'];
    endLatitude = json['end_latitude'];
    endLongitude = json['end_longitude'];
    climbCategory = json['climb_category'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    private = json['private'];
    hazardous = json['hazardous'];
    starred = json['starred'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['resource_state'] = resourceState;
    data['name'] = name;
    data['activity_type'] = activityType;
    data['distance'] = distance;
    data['average_grade'] = averageGrade;
    data['maximum_grade'] = maximumGrade;
    data['elevation_high'] = elevationHigh;
    data['elevation_low'] = elevationLow;
    data['start_latlng'] = startLatlng;
    data['end_latlng'] = endLatlng;
    data['start_latitude'] = startLatitude;
    data['start_longitude'] = startLongitude;
    data['end_latitude'] = endLatitude;
    data['end_longitude'] = endLongitude;
    data['climb_category'] = climbCategory;
    data['city'] = city;
    data['state'] = state;
    data['country'] = country;
    data['private'] = private;
    data['hazardous'] = hazardous;
    data['starred'] = starred;

    return data;
  }
}

class ActivityEffort {
  int id;
  int resourceState;

  ActivityEffort({
    this.id,
    this.resourceState,
  });

  ActivityEffort.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    resourceState = json['resource_state'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['resource_state'] = resourceState;

    return data;
  }
}

class AthleteEffort {
  int id;
  int resourceState;

  AthleteEffort({
    this.id,
    this.resourceState,
  });

  AthleteEffort.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    resourceState = json['resource_state'];
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['id'] = id;
    data['resource_state'] = resourceState;

    return data;
  }
}
