import 'package:bacakuy_app/ui/add_reminder.dart';
import 'package:bacakuy_app/ui/list_reminder.dart';
import 'package:bacakuy_app/ui/setting_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  static const routeName ='/home_page';

  @override
  _HomePageState createState() =>_HomePageState();
}

class _HomePageState extends State<HomePage>{
  int _bottomNavIndex = 0;
  static const String _reminderHeadline = 'Reminder';

  final List<Widget> _listWidget = [
    ReminderList(),
    AddReminder(),
    const SettingPage(),
  ];

  void _onBottomNavTapped(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }

  final List<BottomNavigationBarItem> _bottomNavBarItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.access_alarm),
      label: _reminderHeadline,
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.add),
      label: AddReminder.addHeadline,
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: SettingPage.settingsTitle,
    ),
  ];

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      body: _listWidget[_bottomNavIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavIndex,
        items: _bottomNavBarItems,
        onTap: _onBottomNavTapped,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return _buildAndroid(context);
  }
}