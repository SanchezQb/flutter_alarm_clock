import 'package:clock_app/application/ui/alarm/data/alarms.dart';
import 'package:clock_app/application/ui/alarm/widgets/frosted_glass_box.dart';
import 'package:flutter/material.dart';

class AlarmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Alarm',
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.black, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView(
              children: alarms.map((alarm) {
                return Container(
                  padding: const EdgeInsets.all(20.0),
                  margin: const EdgeInsets.only(bottom: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    // gradient: const LinearGradient(
                    //   begin: Alignment.topLeft,
                    //   end: Alignment.bottomRight,
                    //   colors: [
                    //     Colors.orange,
                    //     Colors.orangeAccent,
                    //   ],
                    // ),
                    color: Colors.orange[300],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "1:00AM",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Row(
                        children: [
                          Text(
                            "1:00AM",
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
