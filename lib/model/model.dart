import 'package:flutter/foundation.dart';


// one item
class Item {

  final int id;
  final String text;
  final int interest;

  Item({
    @required this.id,
    @required this.text,
    @required this.interest
  });

  Item copyWith({int id, String text, int interest}) {

    return Item(
      id: id ?? this.id,
      text: text ?? this.text,
      interest: interest ?? this.interest
    );
  }

  Map toJson() => {
    'id': id,
    'text': text,
    'interest': interest,
  };


}


// NOTE: entire state of application
class AppState {

  final List<Item> items;

  AppState({
    @required this.items
  });

  AppState.initialstate() : items = List.unmodifiable(<Item>[
    Item(id: 0, text: "TEST", interest: 0),
    Item(id: 1, text: "TEST", interest: 0),
    Item(id: 2, text: "TEST", interest: 0),
    Item(id: 3, text: "TEST", interest: 0),
    Item(id: 4, text: "TEST", interest: 0),
    Item(id: 5, text: "TEST", interest: 0),
    Item(id: 6, text: "TEST", interest: 0),
    Item(id: 7, text: "TEST", interest: 0),
    Item(id: 8, text: "TEST", interest: 0),
    Item(id: 9, text: "TEST", interest: 0),
    Item(id: 10, text: "TEST", interest: 0),
    Item(id: 11, text: "TEST", interest: 0),
  ]);

}