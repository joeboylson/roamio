import 'package:flutter/material.dart';

// redux state
import 'package:roamio/model/model.dart';
import 'package:roamio/viewModel/viewModel.dart';

// components
import 'package:roamio/interestList/interestListSubmitButton.dart';

class InterestList extends StatelessWidget {
  
  final ViewModel model;
  InterestList(this.model);

  @override
  Widget build(BuildContext context) {
    return Material (
      child: SingleChildScrollView(
        child: Column (
          children: <Widget> [
            // list of interest items
            GridView.count(
              shrinkWrap: true,
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              crossAxisCount: 2,
              children: model.items
              .map((Item item) => ListTile(
                    title: Text(item.text + item.interest.toString()),
                    leading: IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () => model.onIncrementInterest(item),
                    )
                  ))
              .toList(),
            ),


            // submit button
            InterestListSubmitButton(model)

          ]
        )
      )
    );
  }
}
