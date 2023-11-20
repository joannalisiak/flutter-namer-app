import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class AppState extends ChangeNotifier {
  var current = WordPair.random();
  var history = <WordPair>[];

  GlobalKey? historyListKey;

  void getNext() {
    history.insert(0, current);
    var animatedList = historyListKey?.currentState as AnimatedListState?;
    animatedList?.insertItem((0));

    current = WordPair.random();
    notifyListeners();
  }

  var favourites = <WordPair>[];

  void toggleFavourite([WordPair? pair]) {
    pair = pair ?? current;

    if (favourites.contains(pair)) {
      favourites.remove(pair);
    } else {
      favourites.add(pair);
    }
    notifyListeners();
  }

  void removeFavourite(WordPair pair) {
    favourites.remove(pair);
    notifyListeners();
  }
}
