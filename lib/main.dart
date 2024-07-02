import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text('앱임'),
            ],
          ),
        ),
        body: Container(
          width: 150, height: 50,
          //margin: EdgeInsets.all(20), //마진을 주고싶다?(바깥여백)
          //padding: EdgeInsets.all(20), //패딩
          //margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black)
          ),
          child: Text('dddddd'),
        ),
      ),
    );
  }
}
