import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:contacts_service/contacts_service.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  getPermission() async {//패키지만든사람이 정한 사용법일 뿐
    var status = await Permission.contacts.status;
    if (status.isGranted) {
      print('허락됨');
      var contacts = await ContactsService.getContacts();
      print(contacts);
      setState(() {
        name = contacts;
      });

      //print(contacts[1].displayName);
      //var newPerson = new Contact();//class에서 인스턴스뽑는 문법 그럴때 new 키워드 씀 근데 생략 가능
      //newPerson.givenName = '민수';

    } else if (status.isDenied) {
      print('거절됨');
      Permission.contacts.request();//팝업창 띄워주세요
      //openAppSettings(); //앱설정화면 켜줌(거절당하면 유저가 앱설정 들어가서 직접 권한 켜야함)
    }
  }

  @override
  void initState() {
    super.initState();
    getPermission();
  }

  var total = 3; //state 만듬
  var a = 3;
  var prac = 7;
  List<Contact> name = [];
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
        title: Text(total.toString()), actions: [
          IconButton(onPressed: (){ getPermission();}, icon: Icon(Icons.contacts))
      ],
      ),
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (c, i) {
          return ListTile(
            leading: Image.asset(
              'assets/korea.jpeg',
              width: 100,
            ),
            title: Text(name[i].givenName ?? '이름이없는놈'),
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
