import 'package:clock_app/application/ui/alarm/data/alarms.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:intl/intl.dart';

class AlarmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Alarm',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: Colors.black, fontWeight: FontWeight.w500),
              ),
              IconButton(
                icon: const Icon(Icons.add, size: 30),
                onPressed: () {
                  Get.toNamed('/add-alarm');
                },
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView(
              children: alarms.map((alarm) {
                final alarmDate =
                    DateFormat('EEE, d MMM').format(alarm.alarmDateTime);
                final alarmTime =
                    DateFormat('HH:mm').format(alarm.alarmDateTime);
                return Container(
                  padding: const EdgeInsets.all(20.0),
                  margin: const EdgeInsets.only(bottom: 15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.orange[300],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        alarmTime,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Row(
                        children: [
                          Text(
                            alarmDate,
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          const SizedBox(width: 5),
                          Switch(
                            value: true,
                            onChanged: (val) {
                              print(val);
                            },
                            activeColor: const Color(0xFFfbe6c2),
                          )
                        ],
                      )
                    ],
                  ),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
