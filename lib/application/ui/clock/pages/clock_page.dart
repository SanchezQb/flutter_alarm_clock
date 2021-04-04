import 'dart:async';

import 'package:clock_app/application/ui/clock/widgets/clock_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ClockPage extends StatefulWidget {
  @override
  _ClockPageState createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  Timer timer;
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentDate = DateTime.now();
    final date = DateFormat('EEE, d MMM').format(currentDate);
    final time = DateFormat('HH:mm').format(currentDate);

    return Column(
      children: [
        Expanded(
          child: Center(child: ClockWidget()),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                time,
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
              Text(date, style: Theme.of(context).textTheme.headline5),
            ],
          ),
        ),
      ],
    );
  }
}
