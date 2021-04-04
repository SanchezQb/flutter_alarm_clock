import 'package:clock_app/application/theme/app_theme.dart';
import 'package:clock_app/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: false,
      title: 'Flutter Demo',
      theme: light,
      darkTheme: dark,
      initialRoute: '/',
      onGenerateRoute: Routes.generateRoutes,
    );
  }
}
