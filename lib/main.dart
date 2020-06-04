import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'package:roamio/model/model.dart';
import 'package:roamio/redux/actions.dart';
import 'package:roamio/redux/reducers.dart';
void main() => runApp( Main() );

// MAIN
class Main extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // create a new store
    // pass in reducer and initial state
    final Store<AppState> store = Store<AppState> (
      appStateReducer,
      initialState: AppState.initialstate()
    );

    // wrap entire app in provider
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



// HOME

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: StoreConnector<AppState, _ViewModel>(
      
        converter: ( Store<AppState> store) => _ViewModel.create(store),

        // takes what the converter spits out
        // exposes viewmodel to widgets
        builder: (BuildContext context, _ViewModel viewModel) => Column(
          children: <Widget>[
            // AddItemWidget(viewModel),
            Expanded( child: ItemListWidget(viewModel) ),
            RemoveItemsButton(viewModel)
          ],
        )
      )
    );
  }
}



// // ADD ITEM WIDGET
// class AddItemWidget extends StatefulWidget {
//   final _ViewModel model;

//   AddItemWidget(this.model);

//   @override
//   _AddItemState createState() => _AddItemState();
// }

// class _AddItemState extends State<AddItemWidget> {
//   final TextEditingController controller = TextEditingController();

//   @override
//   Widget build (BuildContext context) {
//     return TextField(
//       controller: controller,
//       decoration: InputDecoration(
//         hintText: 'add an item'
//       ),
//       onSubmitted: (String s) {
//         widget.model.onAddItem(s);
//         controller.text = '';
//       },
//     );
//   }
// }



// ITEM LIST WIDGET

class ItemListWidget extends StatelessWidget {
  
  final _ViewModel model;
  ItemListWidget(this.model);

  @override
  Widget build(BuildContext context) {
    return Material( 
      child: GridView.count(
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
      )
    );
  }
}



// REMOVE ITEMS BUTTON

class RemoveItemsButton extends StatelessWidget {
  
  // viewmodel is passed in
  final _ViewModel model;
  RemoveItemsButton(this.model);

  @override
  Widget build (BuildContext context) {
    return RaisedButton(
      child: Text('delete all items'),
      onPressed: () => model.items.forEach((element) { print(element.toJson() ); })
    ); 
  }

}



// VIEW MODEL
// connnects UI and data
class _ViewModel {

  final List<Item> items;
  // final Function(String) onAddItem;
  // final Function(Item) onRemoveItem;
  // final Function() onRemoveItems;
  // final Function(Item) onUpdateBody;
  final Function(Item) onIncrementInterest;

  _ViewModel({
    this.items,
    // this.onAddItem,
    // this.onRemoveItem,
    // this.onRemoveItems,
    // this.onUpdateBody
    this.onIncrementInterest
  });

  // connects the viewmodel to the reducers
  factory _ViewModel.create( Store<AppState> store) {

    // _onAddItem(String body) {
    //   store.dispatch( AddItemAction(body) );
    // }

    // _onRemoveItem(Item item) {
    //   store.dispatch( RemoveItemAction(item) );
    // }

    // _onRemoveItems() {
    //   store.dispatch( RemoveItemsAction() );
    // }

    // _onUpdateBody(Item item) {
    //   store.dispatch( UpdateItemBody(item) );
    // }

    _onIncrementInterest(Item item) {
      store.dispatch( IncrementInterestAction(item) );
    }

    // return new ViewModel
    return _ViewModel(
      items: store.state.items,
      // onAddItem: _onAddItem,
      // onRemoveItem: _onRemoveItem,
      // onRemoveItems: _onRemoveItems,
      // onUpdateBody: _onUpdateBody
      onIncrementInterest: _onIncrementInterest
    );
  }

}