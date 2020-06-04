import 'package:roamio/model/model.dart';

// class AddItemAction {
//   static int _id = 0;
//   final String item;

//   AddItemAction(this.item) {
//     _id++;
//   }

//   int get id => _id;
// }

// class RemoveItemAction {
//   final Item item;

//   RemoveItemAction(this.item);
// }

// class UpdateItemBody {
//   final Item item;
//   UpdateItemBody(this.item);
// }

class IncrementInterestAction {
  final Item item;
  IncrementInterestAction(this.item);
}

// class RemoveItemsAction {}