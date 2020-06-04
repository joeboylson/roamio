import 'package:flutter/material.dart';

// redux state
import 'package:roamio/model/model.dart';
import 'package:roamio/viewModel/viewModel.dart';

// components
import 'package:roamio/interestList/listSubmitButton.dart';

class ItemListWidget extends StatelessWidget {
  
  final ViewModel model;
  ItemListWidget(this.model);

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
            RemoveItemsButton(model)

          ]
        )
      )
    );
  }
}
