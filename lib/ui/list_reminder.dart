import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReminderList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Bacakuy',
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Text('LISTPAGE'),
          ),
        ),
      ),
    );
  }
}
