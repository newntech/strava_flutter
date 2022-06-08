
import 'fault.dart';

class Token {
  String? accessToken;
  String? refreshToken;
  String? tokenType;
  int? expiresAt;
  int? expiresIn; // in seconds
  String? scope;

  Token();

  factory Token.fromJson(Map<String, dynamic>? json) => Token.fromMap(json)!;

  Map toMap() => Token.toJsonMap(this);

  @override
  String toString() => Token.toJsonMap(this).toString();

  static Map toJsonMap(Token model) {
    var ret = {};
    ret['access_token'] = model.accessToken;
    ret['token_type'] = model.tokenType;
    ret['refresh_token'] = model.refreshToken;
    ret['expires_at'] = model.expiresAt;
    ret['expires_in'] = model.expiresIn;

    return ret;
  }

  static Token? fromMap(Map<String, dynamic>? map) {
    if (map == null) return null;
    var model = Token();
    model.accessToken = map['access_token'];
    model.refreshToken = map['refresh_token'];
    model.tokenType = map['token_type'];
    model.expiresAt = map['expires_at'];
    model.expiresIn = map['expires_in'];
    return model;
  }
}

class RefreshAnswer {
  late Fault fault;
  String? accessToken;
  String? refreshToken;
  int? expiresAt;
  int? expiresIn;

  RefreshAnswer();

  factory RefreshAnswer.fromJson(Map<String, dynamic>? json) =>
      RefreshAnswer.fromMap(json)!;

  static RefreshAnswer? fromMap(Map<String, dynamic>? map) {
    if (map == null) return null;
    var model = RefreshAnswer();
    model.accessToken = map['access_token'];
    model.refreshToken = map['refresh_token'];
    model.expiresAt = map['expires_at'];
    model.expiresIn = map['expires_in'];
    return model;
  }
}
