import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

class Splash extends StatefulWidget {
  static const routeName = '/splash';
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    startSplash();
  }

  startSplash() async {
    var duration = const Duration(seconds: 2);
    return Timer(
      duration,
          () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) {
              return HomePage();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Icon(
          Icons.access_alarm,
          size: 160,
          color: Colors.white,
        ),
      ),
    );
  }
}