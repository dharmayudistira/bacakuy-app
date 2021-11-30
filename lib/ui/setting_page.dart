import 'package:bacakuy_app/provider/preferences_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


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
      ),
      body: _buildSetting(context),
    );
  }

  Widget _buildSetting(BuildContext context) {
    return Consumer<PreferencesProvider>(
      builder: (context, provider, child){
        return ListView(
          children: [
            Material(
              child: ListTile(
                title: Text('Dark Mode'),
                trailing: Switch.adaptive(value: provider.isDarkTheme, onChanged: (value){
                  provider.enableDarkTheme(value);
                }),
              ),
            )
          ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildAndroid(context);
  }
}
