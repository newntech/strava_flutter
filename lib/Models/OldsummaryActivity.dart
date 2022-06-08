
// Summary Activity

import 'fault.dart';

class SummaryActivity {
  Fault? fault;
  int? id;
  int? resourceState;
  Athlete? athlete;
  String? name;
  double? distance;
  int? movingTime;
  int? elapsedTime;
  double? totalElevationGain;
  String? type;
  int? workoutType;

  SummaryActivity(
      {this.id,
      this.resourceState,
      this.athlete,
      this.name,
      this.distance,
      this.movingTime,
      this.elapsedTime,
      this.totalElevationGain,
      this.type,
      this.workoutType});

  SummaryActivity.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    resourceState = json['resource_state'];
    athlete =
        json['athlete'] != null ? Athlete.fromJson(json['athlete']) : null;
    name = json['name'];
    distance = json['distance'];
    movingTime = json['moving_time'];
    elapsedTime = json['elapsed_time'];
    totalElevationGain = json['total_elevation_gain'];
    type = json['type'];
    workoutType = json['workout_type'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['resource_state'] = resourceState;
    if (athlete != null) {
      data['athlete'] = athlete!.toJson();
    }
    data['name'] = name;
    data['distance'] = distance;
    data['moving_time'] = movingTime;
    data['elapsed_time'] = elapsedTime;
    data['total_elevation_gain'] = totalElevationGain;
    data['type'] = type;
    data['workout_type'] = workoutType;
    return data;
  }
}

class Athlete {
  int? resourceState;
  String? firstname;
  String? lastname;

  Athlete({this.resourceState, this.firstname, this.lastname});

  Athlete.fromJson(Map<String, dynamic> json) {
    resourceState = json['resource_state'];
    firstname = json['firstname'];
    lastname = json['lastname'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['resource_state'] = resourceState;
    data['firstname'] = firstname;
    data['lastname'] = lastname;
    return data;
  }
}
