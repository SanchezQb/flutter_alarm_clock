import 'package:flutter/foundation.dart';

class Alarm {
  String id;
  DateTime alarmDateTime;
  bool isActive = true;
  bool repeated = false;
  Alarm({
    @required this.id,
    @required this.alarmDateTime,
  });
}
