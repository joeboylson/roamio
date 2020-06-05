import 'package:flutter/foundation.dart';

class Item {

  final int id;
  final String text;
  final double interest;

  Item({
    @required this.id,
    @required this.text,
    @required this.interest
  });

  Item copyWith({int id, String text, double interest}) {

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
    Item(id: 0, text: "Hiking", interest: 0),
    Item(id: 1, text: "Historic Sites", interest: 0),
    Item(id: 2, text: "Movie Locations", interest: 0),
    Item(id: 3, text: "Live Music", interest: 0),
    Item(id: 4, text: "Camping", interest: 0),
    Item(id: 5, text: "Photo Ops", interest: 0),
    Item(id: 6, text: "Architecture", interest: 0),
    Item(id: 7, text: "Beaches", interest: 0),
    Item(id: 8, text: "Unique Food", interest: 0),
    Item(id: 9, text: "Murals", interest: 0),
    Item(id: 10, text: "Art", interest: 0),
    Item(id: 11, text: "Sculptures", interest: 0),
    Item(id: 12, text: "Roadside Attractions", interest: 0),
    Item(id: 13, text: "Breweries", interest: 0),
    Item(id: 14, text: "Museums", interest: 0),
    Item(id: 15, text: "Free attractions", interest: 0),
    Item(id: 16, text: "Festivals", interest: 0),
    Item(id: 17, text: "Hosteling", interest: 0),
    Item(id: 18, text: "Walking Tours", interest: 0),
    Item(id: 19, text: "Crime and Murder History", interest: 0),
    Item(id: 20, text: "Medical History", interest: 0),
    Item(id: 21, text: "Theatre", interest: 0),
    Item(id: 22, text: "Animals", interest: 0),
    Item(id: 23, text: "Astronomy", interest: 0),
    Item(id: 24, text: "Nature", interest: 0),
    Item(id: 25, text: "Baseball", interest: 0),
    Item(id: 26, text: "Football", interest: 0),
    Item(id: 27, text: "Soccer", interest: 0),
    Item(id: 28, text: "Basketball", interest: 0),
    Item(id: 29, text: "Cars", interest: 0),
    Item(id: 30, text: "Motorcycles", interest: 0),
    Item(id: 31, text: "Pop Culture", interest: 0),
    Item(id: 32, text: "Americana Sites", interest: 0),
    Item(id: 33, text: "Neon", interest: 0),
    Item(id: 34, text: "Sealife", interest: 0),
    Item(id: 35, text: "Boats", interest: 0),
    Item(id: 36, text: "Asian History", interest: 0),
    Item(id: 37, text: "Anime", interest: 0),
    Item(id: 38, text: "Whiskey", interest: 0),
    Item(id: 39, text: "Greek Mythology", interest: 0),
    Item(id: 40, text: "Small Businesses", interest: 0),
    Item(id: 41, text: "Farmers Markets", interest: 0),
    Item(id: 42, text: "Antiques", interest: 0),
    Item(id: 43, text: "Animals", interest: 0),
    Item(id: 44, text: "Dogs", interest: 0),
    Item(id: 45, text: "Cats", interest: 0),
    Item(id: 46, text: "Native American History", interest: 0),
    Item(id: 47, text: "Surfing", interest: 0),
    Item(id: 48, text: "The Supernatural", interest: 0),
  ]);

}