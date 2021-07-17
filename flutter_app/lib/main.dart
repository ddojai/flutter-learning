import 'package:flutter/material.dart';

// 앱 시작 부분
void main() {
  runApp(MyApp());
}

// 시작 클래스, 머터리얼 디자인 앱 생성
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage());
  }
}

// 시작 클래스가 실제로 표시하는 클래스. 카운터 앱 화면

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(), // 외곽선
                labelText: '여기에 입력하세요',
              ),
            )
        )
    );
  }
}
