import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roamio/Interest/InterestBubble.dart';


class InterestList extends StatefulWidget {
  InterestList({Key key}) : super(key: key);

  @override
  _InterestList createState() => _InterestList();
}

class _InterestList extends State<InterestList> {

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
          for (var interest in interests) InterestBubble(interest: interest)
        ],
      )
    );
  }
}