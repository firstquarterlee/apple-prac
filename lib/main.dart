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
  var like = [0, 0, 0];

  //데이터 잠깐 저장하는 곳 : 변수

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(),
            body: ListView.builder(
              itemCount: 3, // 몇번 반복할건지
              itemBuilder: (context, i) {
                // 함수 넣기
                return ListTile(
                  leading: Text(like[i].toString()),
                  title: Text(name[i]),
                  trailing: TextButton(
                    child: Text('좋아요'),
                    onPressed: () {
                      setState(() {like[i]++;});
                    },
                  ),
                );
              },
            )));
  }
}
