import 'package:flutter/material.dart';

// redux state
import 'package:roamio/viewModel/viewModel.dart';

class RemoveItemsButton extends StatelessWidget {
  
  final ViewModel model;
  RemoveItemsButton(this.model);

  @override
  Widget build (BuildContext context) {
    return RaisedButton(
      child: Text('submit'),
      onPressed: () => model.items.forEach((element) { print(element.toJson() ); })
    ); 
  }

}