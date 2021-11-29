import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SettingPage extends StatefulWidget {
  static const String settingsTitle = 'Settings';

  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  bool isEnabled = false;

  Widget _buildAndroid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Bacakuy',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: _buildSetting(context),
    );
  }

  Widget _buildSetting(BuildContext context) {
    return Material(
      child: ListTile(
          title: const Text(
            'Dark Mode',
            style: TextStyle(fontFamily: 'Antiqua'),
          ),
          trailing: Switch.adaptive(value: isEnabled, onChanged: (value) {
           setState(() {
             isEnabled = value;
           });
          }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildAndroid(context);
  }
}
