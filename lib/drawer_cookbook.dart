import 'package:flutter/material.dart';

void main() => runApp(MyApp());  // MyApp이라는 클래스를 전


class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title; // title 선언

  MyHomePage({Key key, this.title}) : super(key: key); // 생성자(생성자가 뭐임?)
  // key는 뭐야? 나중에 공부해봐...


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Colors.grey,
          shadowColor: Colors.black,  // AppBar바로 아래에 존나 조그마난 그림자 생
        ),
        body: Center(child: Text('My Page!')),
        drawer: Drawer( // drawer에 ListView를 추가. 스크롤 기능이 있음.
          child: ListView( // ListView : 칼럼 위젯
            padding: EdgeInsets.zero,  // ListView로부터 모든 padding을 제거한다
            children: <Widget>[
              DrawerHeader( // 메뉴의 Header
                child: Text('Drawer Header'),

                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
              ListTile (  // 메뉴의 칼럼1 타일
                title: Text('Item 1'),
                onTap: () {
                  // 앱의 상태를 업데이트

                  Navigator.pop(context); // 메뉴를 닫는다
                },
              ),
              ListTile( // 메뉴의 칼럼2 타일
                  title: Text('Item 241'),
                  onTap: () {
                    // 앱의 상태를 업데이트
                  }
              ),
              ListTile( // 메뉴의 칼럼2 타일
                  title: Text('Item 3'),
                  onTap: () {
                    // 앱의 상태를 업데이트
                  }
              ),
            ],

          ),
        )

    );
  }
}


