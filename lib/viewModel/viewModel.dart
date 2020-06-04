import 'package:redux/redux.dart';

// redux state
import 'package:roamio/model/model.dart';
import 'package:roamio/redux/actions.dart';

class ViewModel {

  final List<Item> items;
  // final Function(String) onAddItem;
  // final Function(Item) onRemoveItem;
  // final Function() onRemoveItems;
  // final Function(Item) onUpdateBody;
  final Function(Item) onIncrementInterest;

  ViewModel({
    this.items,
    // this.onAddItem,
    // this.onRemoveItem,
    // this.onRemoveItems,
    // this.onUpdateBody
    this.onIncrementInterest
  });

  // connects the viewmodel to the reducers
  factory ViewModel.create( Store<AppState> store) {

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
    return ViewModel(
      items: store.state.items,
      // onAddItem: _onAddItem,
      // onRemoveItem: _onRemoveItem,
      // onRemoveItems: _onRemoveItems,
      // onUpdateBody: _onUpdateBody
      onIncrementInterest: _onIncrementInterest
    );
  }

}