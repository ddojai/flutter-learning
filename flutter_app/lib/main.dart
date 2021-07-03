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
      appBar: AppBar(
        title: Text('제목'),
      ),
      body: Text('여기에 예제 작성'),
    );
  }
}
