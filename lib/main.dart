import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container( //함수의 파라미터같은거다
        width: 50, //파라미터다!! 위드스 파라미터에는 50을 //그리고 단위는 LP다
        height: 50, //하이트 파라미터에는 50을
        color: Colors.blue, //컬러 파라미터에는 블루를

      ),
    );

  }
}
