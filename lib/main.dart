import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;
  var name = ['김영숙', '홍길동', '피자집'];

  //데이터 잠깐 저장하는 곳 : 변수

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            floatingActionButton: FloatingActionButton(
                child: Text(a.toString()),
                onPressed: () {
                  setState(() {
                    a++; //state가 변경되면 재 랜더링됨!!! 그래서 숫자가 바뀜
                  });
                }),
            appBar: AppBar(),
            body: ListView.builder(
              itemCount: 3, // 몇번 반복할건지
              itemBuilder: (context, i) {
                // 함수 넣기
                print(i);
                return ListTile(
                  leading: Image.asset('assets/korea.jpeg'),
                  title: Text(name[1]),
                );
              },
            )));
  }
}
