import 'package:clock_app/application/ui/clock/pages/clock_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static final currentDate = DateTime.now();
  final date = DateFormat('EEE, d MMM').format(currentDate);
  final time = DateFormat('HH:mm').format(currentDate);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(child: ClockPage()),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  time,
                  style: Theme.of(context).textTheme.headline3.copyWith(
                        color: Colors.black,
                      ),
                ),
                const SizedBox(height: 10),
                Text(
                  date,
                  style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.black,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
