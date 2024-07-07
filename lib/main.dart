import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
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
  build(context) { //Scaffold() 부모가 누군지 알려줌
    return Scaffold(
      floatingActionButton: Builder(
        builder: (context) {
          return FloatingActionButton(
            onPressed: () {
              print(context.findAncestorWidgetOfExactType<MaterialApp>());
              //부모중에 MaterialApp 있는지 찾아주세요~ 라는 간단한 함수임
              showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: Text('안녕'),
                    );
                  });
            },
          );
        }
      ),
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (c, i) {
          return ListTile(
            leading: Image.asset('korea.jpeg'),
            title: Text(name[i]),
          );
        },
      ),

    );

  }
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
