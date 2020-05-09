import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InterestBubble extends StatefulWidget {
  InterestBubble({Key key, this.interest}) : super(key: key);

  final String interest;

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
  double _size = 80;
  int _duration = 300;

  void _setLevel() {
    setState(() {
      _level++;

      if (_level >= 3) {
        _level = 0.0;
      }

      _size = 100 - ( 100 * ((2 - _level)/10) );

    });
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          child:  Stack(
            alignment: Alignment.center,
            children: <Widget>[
              AnimatedContainer(
                width: (_level) * 50,
                height: (_level) * 50,
                decoration: BoxDecoration(
                    color: Color(0xff333333),
                    shape: BoxShape.circle
                ),
                duration: Duration(milliseconds: _duration),
                curve: Curves.fastOutSlowIn,
              ),
              InkWell(
                  borderRadius: BorderRadius.circular(100),
                  child: (
                    AnimatedContainer(
                      width: _size,
                      height: _size,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2.0, color: Color(0xff333333)),
                          shape: BoxShape.circle
                      ),
                      duration: Duration(milliseconds: _duration),
                      curve: Cubic(0.64, 0.04, 0.35, 1),
                    )
                  ),
                  onTap: _setLevel
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0), 
          child: Text(
            widget.interest,
            style: TextStyle(color: Color(0xff333333)),
          )
        ),
      ],
    );
  }
}