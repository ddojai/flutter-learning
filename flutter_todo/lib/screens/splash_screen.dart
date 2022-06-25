import 'dart:js';

import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void moveScreen() async {
    await checkLogin().then((isLogin) {
      if (isLogin) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => ListScreen()));
      } else {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => LoginScreen()));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      moveScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('SplashScreen', style: TextStyle(fontSize: 20)),
            Text('나만의 일정 관리 : TODO 리스트 앱', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
