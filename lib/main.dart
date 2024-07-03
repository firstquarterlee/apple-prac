import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            Row(
              children: [
                Image.asset('assets/korea.jpeg', height: 20,),
                SizedBox(width: 8,),
                Container(
                  child: Text('홍길동'),
                )
              ],
            ),
            Row(
              children: [
                Image.asset('assets/korea.jpeg', height: 20,),
                SizedBox(width: 8,),
                Container(
                  child: Text('홍길동'),
                )
              ],
            ),
            Row(
              children: [
                Image.asset('assets/korea.jpeg', height: 20,),
                SizedBox(width: 8,),
                Container(
                  child: Text('홍길동'),
                )
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Icon(Icons.cabin),
              ),
              Container(
                child: Icon(Icons.cabin),
              ),
              Container(
                child: Icon(Icons.cabin),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
