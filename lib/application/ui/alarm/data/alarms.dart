import 'package:clock_app/application/ui/alarm/models/alarm_model.dart';

List<Alarm> alarms = [
  Alarm(
    alarmDateTime: DateTime.now().add(
      const Duration(hours: 2),
    ),
  ),
  Alarm(
    alarmDateTime: DateTime.now().add(
      const Duration(hours: 12),
    ),
  ),
  Alarm(
    alarmDateTime: DateTime.now().add(
      const Duration(hours: 19),
    ),
  ),
];
