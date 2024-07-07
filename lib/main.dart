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
  var a = 3;
  var prac = 7;
  var name = ['김영숙', '홍길동', '피자집'];
  var like = [0, 0, 0];

  //데이터 잠깐 저장하는 곳 : 변수

  @override
  build(context) {
    //Scaffold() 부모가 누군지 알려줌
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (c, i) {
          return ListTile(
            leading: Image.asset(
              'korea.jpeg',
              width: 100,
            ),
            title: Text(name[i]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return DialogUI(state : a, state2 : prac);
              });
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

class DialogUI extends StatelessWidget {
  const DialogUI({Key? key, this.state, this.state2}) : super(key: key);
  final state;
  final state2;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          children: [
            TextField(),
            TextButton(
              child:
                Column(
                  children: [
                    Text(state.toString()),
                    Text(state.toString()),
                  ],
                ),

              onPressed: () {},
            ),
            TextButton(
              child: Text('취소'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
