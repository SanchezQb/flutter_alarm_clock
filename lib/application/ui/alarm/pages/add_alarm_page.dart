import 'package:flutter/material.dart';

class AddAlarmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10),
          child: Column(
            children: [
              const Expanded(
                child: SizedBox(),
              ),
              const Expanded(
                child: SizedBox(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
