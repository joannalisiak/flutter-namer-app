import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:namer_app/app_state.dart';

class FavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();

    var theme = Theme.of(context);

    if (appState.favourites.isEmpty) {
      return Center(child: Text("No favourites yet"));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Text(
            "You have ${appState.favourites.length} favourites:",
          ),
        ),
        Expanded(
            child: GridView(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 400,
                  childAspectRatio: 400 / 80,
                ),
                children: [
              for (var pair in appState.favourites)
                ListTile(
                  leading: IconButton(
                    icon: Icon(
                      Icons.delete_outline,
                      semanticLabel: "Delete",
                    ),
                    color: theme.colorScheme.primary,
                    onPressed: () {
                      appState.removeFavourite(pair);
                    },
                  ),
                  title: Text(
                    pair.asLowerCase,
                    semanticsLabel: pair.asPascalCase,
                  ),
                )
            ]))
      ],
    );
  }
}
