import 'package:clock_app/application/ui/clock/widgets/clock_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ClockPage extends StatelessWidget {
  static final currentDate = DateTime.now();
  final date = DateFormat('EEE, d MMM').format(currentDate);
  final time = DateFormat('HH:mm').format(currentDate);
  @override
  Widget build(BuildContext context) {
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
                    .copyWith(color: Colors.black, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
              Text(
                date,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: Colors.black),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
