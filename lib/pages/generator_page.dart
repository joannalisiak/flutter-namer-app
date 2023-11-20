import 'package:flutter/material.dart';
import 'package:namer_app/components/history_list.dart';
import 'package:provider/provider.dart';

import 'package:namer_app/app_state.dart';
import 'package:namer_app/components/large_card.dart';

class GeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();
    var pair = appState.current;

    IconData icon;
    if (appState.favourites.contains(pair)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: HistoryList(),
          ),
          SizedBox(height: 12),
          LargeCard(pair: pair),
          SizedBox(height: 12),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton.icon(
                  onPressed: () {
                    appState.toggleFavourite();
                  },
                  icon: Icon(icon),
                  label: Text("Like")),
              SizedBox(
                width: 12,
              ),
              ElevatedButton(
                  onPressed: () {
                    appState.getNext();
                  },
                  child: Text("Next")),
            ],
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
