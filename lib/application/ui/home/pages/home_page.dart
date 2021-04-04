import 'package:clock_app/application/ui/alarm/pages/alarm_page.dart';
import 'package:clock_app/application/ui/clock/pages/clock_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    ClockPage(),
    AlarmPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      // ),
      body: SafeArea(child: _pages[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        items: tabItems(),
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        // unselectedItemColor: Colors.black,
        selectedItemColor: Colors.orange,
        elevation: 0,
      ),
    );
  }

  List<BottomNavigationBarItem> tabItems() {
    return <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
        icon: Icon(
          CupertinoIcons.clock,
          size: 28,
        ),
        label: 'Clock',
      ),
      const BottomNavigationBarItem(
        icon: Icon(
          CupertinoIcons.alarm,
          size: 28,
        ),
        label: 'Alarm',
      ),
    ];
  }
}
