import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roamio/Interest/InterestBubble.dart';


class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {

  var scaffoldKey = GlobalKey<ScaffoldState>();

  final interests = [
    "Hiking",
    "Historic Sites",
    "Movie Locations",
    "Live Music",
    "Hiking",
    "Historic Sites",
    "Movie Locations",
    "Live Music",
    "Hiking",
    "Historic Sites",
    "Movie Locations",
    "Live Music",
    "Hiking",
    "Historic Sites",
    "Movie Locations",
    "Live Music",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          crossAxisCount: 2,
          children: <Widget>[
            Text("THIS"),
            Text("THIS"),
            Text("THIS"),
            Text("THIS")
          ],
        )
    );
  }
}