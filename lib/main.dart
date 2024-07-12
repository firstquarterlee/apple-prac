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
  var total = 3; //state 만듬
  var a = 3;
  var prac = 7;
  var name = ['김영숙', '홍길동', '피자집'];
  var like = [0, 0, 0];

  addName(a) {
    setState(() {
      // 무조건 바꾸려면 setState
      name.add(a);
    });
  }

  //데이터 잠깐 저장하는 곳 : 변수

  //addOne 함수 만들기
  addOne() {
    setState(() {
      total++;
    });
  }

  @override
  build(context) {
    //Scaffold() 부모가 누군지 알려줌
    return Scaffold(
      appBar: AppBar(
        title: Text(total.toString()),
      ),
      body: ListView.builder(
        itemCount: name.length,
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
                return DialogUI(addOne: addOne, addName: addName);
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
  DialogUI({Key? key, this.state, this.state2, this.addOne, this.addName})
      : super(key: key);
  final state;
  final state2;
  final addOne;
  var inputData = TextEditingController();
  final addName;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          children: [
            TextField(
              controller: inputData,
            ),
            TextButton(
              child: Text('완료'),
              onPressed: () {
                addOne();
                addName(inputData.text);
              },
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
