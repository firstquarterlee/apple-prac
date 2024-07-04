import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  var a = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            floatingActionButton: FloatingActionButton(
              child: Text(a.toString()),
              onPressed: (){
                a++;
                print(a);
              }),
            appBar: AppBar(),
            body: ListView.builder(
              itemCount: 3, // 몇번 반복할건지
              itemBuilder: (context, i) { // 함수 넣기
                print(i);
                return ListTile(
                  leading: Image.asset('assets/korea.jpeg'),
                  title: Text('홍길동'),
                );
              },
            )

        )
    );
  }
}
