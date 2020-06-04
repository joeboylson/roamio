import 'package:roamio/model/model.dart';
import 'package:roamio/redux/actions.dart';

import 'package:redux/redux.dart';

AppState appStateReducer(AppState state, action) {
  return AppState(
    items: itemReducer(state.items, action),
  );
}

Reducer<List<Item>> itemReducer = combineReducers<List<Item>>([
  // TypedReducer<List<Item>, AddItemAction>(addItemReducer),
  // TypedReducer<List<Item>, RemoveItemAction>(removeItemReducer),
  // TypedReducer<List<Item>, RemoveItemsAction>(removeItemsReducer),
  // TypedReducer<List<Item>, UpdateItemBody>(updateItemBody),
  TypedReducer<List<Item>, IncrementInterestAction>(incrementInterest),
]);

List<Item> incrementInterest(List<Item> items, IncrementInterestAction action) {
  
  return items.map((item) => 
    (item.id == action.item.id) ? item.copyWith(interest: (action.item.interest + 1) < 3 ? action.item.interest + 1 : 0) : item
    ).toList();
    
}

// List<Item> addItemReducer(List<Item> items, AddItemAction action) {
//   return []
//     ..addAll(items)
//     ..add(Item(id: action.id, body: action.item));
// }

// List<Item> removeItemReducer(List<Item> items, RemoveItemAction action) {
//   return List.unmodifiable(List.from(items)..remove(action.item));
// }

// List<Item> removeItemsReducer(List<Item> items, RemoveItemsAction action) {
//   return [];
// }

// List<Item> updateItemBody(List<Item> items, UpdateItemBody action) {

//   return items.map((item) => 
//     (item.id == action.item.id) ? item.copyWith(body: "NEW BODY") : item
//     ).toList();
    
// }