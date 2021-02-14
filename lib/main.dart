import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

///마이홈페이지 설명
class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You Have pushed the button this many times:' * 5, //dart supports string multiplication
            style: Theme.of(context).textTheme.headline6,
          ),
          MyRequiredPage(title: '내가 타이틀',),
        ],
      )),
    );
  }
}

class MyRequiredPage extends StatelessWidget {
  final String title;
  final String comment;

  const MyRequiredPage({Key key, @required this.title, this.comment})
      : assert(title != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('title:$title comment:$comment');
  }
}
