import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'edit_reminder.dart';

class ReminderList extends StatefulWidget {
  const ReminderList({Key? key}) : super(key: key);

  @override
  State<ReminderList> createState() => _ReminderListState();
}

class _ReminderListState extends State<ReminderList> {
  @override
  Widget build(BuildContext context) {
    bool isEnabled = true;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Bacakuy',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: SingleChildScrollView(
        child: ListView(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          children: [
            ListTile(
              title: const Text(
                "Read 30 pages",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text("Books: The Intelligent Investor"),
              trailing: Switch.adaptive(value: isEnabled, onChanged: (value) {
                setState(() {
                  isEnabled = value;
                });
              }),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => EditReminder())),
            ),
            ListTile(
              title: const Text(
                "Read 2 chapters",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text("Books: How to be an Expert Data Analyst"),
              trailing: Switch.adaptive(value: isEnabled, onChanged: (value) {
                setState(() {
                  isEnabled = value;
                });
              }),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => EditReminder())),
            ),
          ],
        ),
      ),
    );
  }
}
