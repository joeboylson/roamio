import 'package:flutter/material.dart';
import 'package:roamio/Interest/InterestBubble.dart';
import 'package:http/http.dart' as http;

void main() => runApp( Main() );

class Main extends StatelessWidget {

  static doThing(int i) async {
    print(i);

//    final response = await http.get('https://jsonplaceholder.typicode.com/albums');
//    print( response.body );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            InterestBubble(),
            InterestBubble(),
            InterestBubble(),
            InterestBubble(),
            InterestBubble(),
            InterestBubble(),
            InterestBubble(),
            InterestBubble(),
          ],
        )
      ),
    );
  }
}