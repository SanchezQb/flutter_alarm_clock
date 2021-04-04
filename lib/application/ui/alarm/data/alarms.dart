import 'package:clock_app/application/ui/alarm/models/alarm_model.dart';

List<Alarm> alarms = [
  Alarm(
    alarmDateTime: DateTime.now().add(
      const Duration(hours: 2),
    ),
    id: "123",
  ),
  Alarm(
    alarmDateTime: DateTime.now().add(
      const Duration(hours: 12),
    ),
    id: "456",
  ),
  Alarm(
    alarmDateTime: DateTime.now().add(
      const Duration(hours: 19),
    ),
    id: "789",
  ),
];
