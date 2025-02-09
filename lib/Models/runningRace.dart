
// Running Race
import 'fault.dart';

// It seems that routeIds is missing

class RunningRace {
  Fault? fault;
  String? country;
  // List<int> routeIds;
  int? runningRaceType;
  double? distance;
  String? websiteUrl;
  String? city;
  String? startDateLocal;
  String? name;
  String? measurementPreference;
  int? id;
  String? state;
  String? url;

  RunningRace(
      {Fault? fault,
      this.country,
      // this.routeIds,
      this.runningRaceType,
      this.distance,
      this.websiteUrl,
      this.city,
      this.startDateLocal,
      this.name,
      this.measurementPreference,
      this.id,
      this.state,
      this.url})
      : fault = Fault(99, '');

  RunningRace.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    // routeIds = json['route_ids'].cast<int>();
    runningRaceType = json['running_race_type'];
    distance = json['distance'];
    websiteUrl = json['website_url'];
    city = json['city'];
    startDateLocal = json['start_date_local'];
    name = json['name'];
    measurementPreference = json['measurement_preference'];
    id = json['id'];
    state = json['state'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['country'] = country;
    // data['route_ids'] = this.routeIds;
    data['running_race_type'] = runningRaceType;
    data['distance'] = distance;
    data['website_url'] = websiteUrl;
    data['city'] = city;
    data['start_date_local'] = startDateLocal;
    data['name'] = name;
    data['measurement_preference'] = measurementPreference;
    data['id'] = id;
    data['state'] = state;
    data['url'] = url;
    return data;
  }
}
