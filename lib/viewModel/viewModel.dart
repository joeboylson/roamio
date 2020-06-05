import 'package:redux/redux.dart';

// redux state
import 'package:roamio/model/model.dart';
import 'package:roamio/redux/actions.dart';

class ViewModel {

  final List<Item> items;
  final Function(Item) onIncrementInterest;

  ViewModel({
    this.items,
    this.onIncrementInterest
  });

  // connects the viewmodel to the reducers
  factory ViewModel.create( Store<AppState> store) {

    _onIncrementInterest(Item item) {
      store.dispatch( IncrementInterestAction(item) );
    }

    return ViewModel(
      items: store.state.items,
      onIncrementInterest: _onIncrementInterest
    );
  }

}