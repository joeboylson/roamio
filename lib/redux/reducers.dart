import 'package:roamio/model/model.dart';
import 'package:roamio/redux/actions.dart';
import 'package:redux/redux.dart';

AppState appStateReducer(AppState state, action) {
  return AppState(
    items: itemReducer(state.items, action),
  );
}

Reducer<List<Item>> itemReducer = combineReducers<List<Item>>([
  TypedReducer<List<Item>, IncrementInterestAction>(incrementInterest),
]);

List<Item> incrementInterest(List<Item> items, IncrementInterestAction action) {
  
  return items.map((item) => 
    (item.id == action.item.id) ? 
      item.copyWith(interest: (action.item.interest + 1) < 3 ? action.item.interest + 1 : 0) : 
      item
    ).toList();
    
}