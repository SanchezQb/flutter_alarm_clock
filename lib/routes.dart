import 'package:flutter/material.dart';

import 'application/ui/alarm/pages/add_alarm_page.dart';
import 'application/ui/home/pages/home_page.dart';

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute<bool>(
          builder: (BuildContext context) => HomePage(),
        );
      case '/add-alarm':
        return MaterialPageRoute<bool>(
          builder: (BuildContext context) => AddAlarmPage(),
        );
      default:
        return MaterialPageRoute<bool>(
          builder: (BuildContext context) => HomePage(),
        );
    }
  }
}
