import 'package:flutter/material.dart';
import 'package:roamio/Frame/Frame.dart';
import 'package:roamio/Home/Home.dart';
import 'package:roamio/Interest/InterestList.dart';

void main() => runApp( Main() );

class Main extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Main();
}

class _Main extends State<Main> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData (
        fontFamily: 'Montserrat'
      ),
      home: Frame( body: Home() ),
      routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) => Frame( body: Home() ),
        '/b': (BuildContext context) => Frame( body: InterestList() ),
        '/c': (BuildContext context) => Frame( body: InterestList() ),
      },
    );
  }
}