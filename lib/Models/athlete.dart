// @dart = 2.9
class Athlete {
  int id;
  int resourceState;

  Athlete({this.id, this.resourceState});

  Athlete.fromJson(Map<String, dynamic> json) {
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
