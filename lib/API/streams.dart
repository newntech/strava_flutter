/// streams.dart
///
///
///

import 'package:http/http.dart' as http;
import 'package:strava_flutter/Models/stream.dart';
import 'dart:async';

import '../Models/fault.dart';

import '../globals.dart' as globals;
import '../errorCodes.dart' as error;

abstract class Streams {
  ///
  /// scope needed: read_all
  ///
  Future<StreamSet> getActivityStreams(String id, List<String> keys) async {
    StreamSet returnStream = StreamSet();

    var _header = globals.createHeader();

    globals.displayInfo('Entering getActivityStreams');

    if (_header.containsKey('88') == false) {
      final reqSeg =
          'https://www.strava.com/api/v3/activities/$id/streams?keys=${keys.join(',')}&key_by_type=true';
      var rep = await http.get(Uri.parse(reqSeg), headers: _header);
      if (rep.statusCode == 200) {
        globals.displayInfo(rep.statusCode.toString());
        globals.displayInfo('Stream info ${rep.body}');
//        final Map<String, dynamic> jsonResponse = json.decode(rep.body);

        StreamSet _stream = StreamSet.fromJson(rep.body);
        //globals.displayInfo(_stream);

        returnStream = _stream;
      } else {
        globals.displayInfo('problem in getActivityStreams request');

        // 404 : segment not found
      }
    } else {
      globals.displayInfo('Token not yet known');
      returnStream.fault =
          Fault(error.statusTokenNotKnownYet, 'Token not yet known');
    }
    return returnStream;
  }
}
