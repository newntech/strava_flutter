// @dart = 2.9
// To parse this JSON data, do
//
//     final activityStream = activityStreamFromMap(jsonString);

import 'dart:convert';

import 'package:strava_flutter/Models/fault.dart';

class StreamSet {
  ActivityStream altitude;
  ActivityStream distance;
  ActivityStream watts;
  ActivityStream time;
  ActivityStream heartRate;

  Fault fault;
  StreamSet(
      {this.distance, this.watts, this.time, this.heartRate, this.altitude});

  factory StreamSet.fromJson(String str) => StreamSet.fromMap(json.decode(str));

  factory StreamSet.fromMap(Map<String, dynamic> json) => StreamSet(
        distance: ActivityStream.fromMap(json['distance']),
        watts: json['watts'] != null
            ? ActivityStream.fromMap(json['watts'])
            : ActivityStream(),
        time: ActivityStream.fromMap(json['time']),
        heartRate: json['heartrate'] != null
            ? ActivityStream.fromMap(json['heartrate'])
            : ActivityStream(),
        altitude: json['altitude'] != null
            ? ActivityStream.fromMap(json['altitude'])
            : ActivityStream(),
      );
}

class ActivityStream {
  Fault fault;

  ActivityStream({
    this.data,
    this.seriesType,
    this.originalSize,
    this.resolution,
  });

  String type;
  List<double> data;
  String seriesType;
  int originalSize;
  String resolution;

  factory ActivityStream.fromJson(String str) =>
      ActivityStream.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ActivityStream.fromMap(Map<String, dynamic> json) => ActivityStream(
        data: List<double>.from(
            json['data'].map((x) => x != null ? x.toDouble() : 0.0)),
        seriesType: json['series_type'],
        originalSize: json['original_size'],
        resolution: json['resolution'],
      );

  Map<String, dynamic> toMap() => {
        'type': type,
        'data': List<dynamic>.from(data.map((x) => x)),
        'series_type': seriesType,
        'original_size': originalSize,
        'resolution': resolution,
      };
}
