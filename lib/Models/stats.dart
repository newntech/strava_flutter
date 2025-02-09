
//// Stats

import 'fault.dart';

class Stats {
  Fault? fault;
  StatsTotals? recentRunTotals;
  ActivityTotals? allRunTotals;
  StatsTotals? recentSwimTotals;
  double? biggestRideDistance;
  ActivityTotals? ytdSwimTotals;
  ActivityTotals? allSwimTotals;
  StatsTotals? recentRideTotals;
  double? biggestClimbElevationGain;
  ActivityTotals? ytdRideTotals;
  ActivityTotals? allRideTotals;
  ActivityTotals? ytdRunTotals;

  Stats(
      {Fault? fault,
      this.recentRunTotals,
      this.allRunTotals,
      this.recentSwimTotals,
      this.biggestRideDistance,
      this.ytdSwimTotals,
      this.allSwimTotals,
      this.recentRideTotals,
      this.biggestClimbElevationGain,
      this.ytdRideTotals,
      this.allRideTotals,
      this.ytdRunTotals})
      : fault = Fault(88, '');

  Stats.fromJson(Map<String, dynamic> json) {
    recentRunTotals = json['recent_run_totals'] != null
        ? StatsTotals.fromJson(json['recent_run_totals'])
        : null;
    allRunTotals = json['all_run_totals'] != null
        ? ActivityTotals.fromJson(json['all_run_totals'])
        : null;
    recentSwimTotals = json['recent_swim_totals'] != null
        ? StatsTotals.fromJson(json['recent_swim_totals'])
        : null;
    biggestRideDistance = json['biggest_ride_distance'];
    ytdSwimTotals = json['ytd_swim_totals'] != null
        ? ActivityTotals.fromJson(json['ytd_swim_totals'])
        : null;

    allSwimTotals = json['all_swim_totals'] != null
        ? ActivityTotals.fromJson(json['all_swim_totals'])
        : null;

    recentRideTotals = json['recent_ride_totals'] != null
        ? StatsTotals.fromJson(json['recent_ride_totals'])
        : null;

    biggestClimbElevationGain = json['biggest_climb_elevation_gain'];
    ytdRideTotals = json['ytd_ride_totals'] != null
        ? ActivityTotals.fromJson(json['ytd_ride_totals'])
        : null;

    allRideTotals = json['all_ride_totals'] != null
        ? ActivityTotals.fromJson(json['all_ride_totals'])
        : null;
    ytdRunTotals = json['ytd_run_totals'] != null
        ? ActivityTotals.fromJson(json['ytd_run_totals'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['recent_run_totals'] = recentRunTotals;
    data['all_run_totals'] = allRunTotals;
    data['recent_swim_totals'] = recentSwimTotals;
    data['biggest_ride_distance'] = biggestRideDistance;
    data['ytd_swim_totals'] = ytdSwimTotals;
    data['all_swim_totals'] = allSwimTotals;
    if (recentRideTotals != null) {
      data['recent_ride_totals'] = recentRideTotals!.toJson();
    }
    data['biggest_climb_elevation_gain'] = biggestClimbElevationGain;
    data['ytd_ride_totals'] = ytdRideTotals;
    data['all_ride_totals'] = allRideTotals;
    data['ytd_run_totals'] = ytdRunTotals;
    return data;
  }
}

class StatsTotals {
  double? distance;
  int? achievementCount;
  int? count;
  int? elapsedTime;
  double? elevationGain;
  int? movingTime;

  StatsTotals(
      {this.distance,
      this.achievementCount,
      this.count,
      this.elapsedTime,
      this.elevationGain,
      this.movingTime});

  StatsTotals.fromJson(Map<String, dynamic> json) {
    distance = json['distance'];
    achievementCount = json['achievement_count'];
    count = json['count'];
    elapsedTime = json['elapsed_time'];
    elevationGain = json['elevation_gain'];
    movingTime = json['moving_time'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['distance'] = distance;
    data['achievement_count'] = achievementCount;
    data['count'] = count;
    data['elapsed_time'] = elapsedTime;
    data['elevation_gain'] = elevationGain;
    data['moving_time'] = movingTime;
    return data;
  }
}

class ActivityTotals {
  int? distance;
  int? achievementCount;
  int? count;
  int? elapsedTime;
  int? elevationGain;
  int? movingTime;

  ActivityTotals(
      {this.distance,
      this.achievementCount,
      this.count,
      this.elapsedTime,
      this.elevationGain,
      this.movingTime});

  ActivityTotals.fromJson(Map<String, dynamic> json) {
    distance = json['distance'];
    achievementCount = json['achievement_count'];
    count = json['count'];
    elapsedTime = json['elapsed_time'];
    elevationGain = json['elevation_gain'];
    movingTime = json['moving_time'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['distance'] = distance;
    data['achievement_count'] = achievementCount;
    data['count'] = count;
    data['elapsed_time'] = elapsedTime;
    data['elevation_gain'] = elevationGain;
    data['moving_time'] = movingTime;
    return data;
  }
}
