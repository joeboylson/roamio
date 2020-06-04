import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

// redux state
import 'package:roamio/model/model.dart';
import 'package:roamio/redux/reducers.dart';

// components
import 'package:roamio/home/home.dart';

void main() => runApp( Main() );

// MAIN
class Main extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final Store<AppState> store = Store<AppState> (
      appStateReducer,
      initialState: AppState.initialstate()
    );

    return StoreProvider<AppState> (
      store: store,
      child: MaterialApp(
        title: "DEMO",
        theme: ThemeData.light(),
        home: Home()
      )
    );
  }
}