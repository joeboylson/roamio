import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InterestBubble extends StatefulWidget {
  InterestBubble({Key key}) : super(key: key);

  @override
  _InterestBubbleState createState() => _InterestBubbleState();
}

class _InterestBubbleState extends State<InterestBubble> {

  final textStatuses = [
    "Not Interested",
    "Moderately Interested",
    "Very Interested"
  ];

  double _level = 0;

  void _setLevel() {
    setState(() {
      _level++;

      if (_level >= 3) {
        _level = 0.0;
      }

      print(_level);

    });
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        Stack(
          alignment: Alignment.center,
          children: <Widget>[
            AnimatedContainer(
              width: 200,
              height: (_level + 1) * 30,
              decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle
              ),
              duration: Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
            ),
            InkWell(
                borderRadius: BorderRadius.circular(100),
                child: (
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2.0, color: Colors.black),
                          shape: BoxShape.circle
                      ),)
                ),
                onTap: _setLevel
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(16.0), child: Text(textStatuses[_level.round()]))
      ],
    );
  }
}