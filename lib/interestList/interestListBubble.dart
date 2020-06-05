import 'package:flutter/material.dart';
import 'package:roamio/model/model.dart';

// redux state
import 'package:roamio/viewModel/viewModel.dart';

class InterestListBubble extends StatelessWidget {
  
  final ViewModel model;
  final Item item;

  final double size = 100;
  final int duration = 300;

  InterestListBubble(
    this.model,
    this.item
  );

  @override
  Widget build (BuildContext context) {
    return Column (
      children: <Widget>[

        Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.only(bottom: 8.0),
          child:  Stack(
            alignment: Alignment.center,
            children: <Widget>[

              // bubble fill
              AnimatedContainer(
                width: item.interest * 50,
                height: item.interest * 50,
                decoration: BoxDecoration(
                    color: Color(0xff333333),
                    shape: BoxShape.circle
                ),
                duration: Duration(milliseconds: duration),
                curve: Curves.fastOutSlowIn,
              ),

              // bubble outline
              InkWell(
                  borderRadius: BorderRadius.circular(100),
                  child: (
                    AnimatedContainer(
                      width: size - (20 - (item.interest * 10)),
                      height: size,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2.0, color: Color(0xff333333)),
                          shape: BoxShape.circle
                      ),
                      duration: Duration(milliseconds: duration),
                      curve: Cubic(0.64, 0.04, 0.35, 1),
                    )
                  ),
                  onTap: () => model.onIncrementInterest(item),
              ),

            ],
          ),
        ),

        Text(item.text)

      ],
    );
    
  
  }

}