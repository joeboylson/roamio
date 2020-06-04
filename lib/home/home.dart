import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

// redux state
import 'package:roamio/model/model.dart';
import 'package:roamio/viewModel/viewModel.dart';

// components
import 'package:roamio/interestList/interestList.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: StoreConnector<AppState, ViewModel>(
      
        converter: ( Store<AppState> store) => ViewModel.create(store),
        builder: (BuildContext context, ViewModel viewModel) => Column(
          children: <Widget>[
            Expanded( child: InterestList(viewModel) ),
          ],
        )
      )
    );
  }
}