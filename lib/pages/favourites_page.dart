import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:namer_app/app_state.dart';

class FavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var favourites = appState.favourites;

    var theme = Theme.of(context);
    var styleLarge = theme.textTheme.headlineSmall!
        .copyWith(color: theme.colorScheme.onBackground);
    var styleSmall = theme.textTheme.bodyMedium!
        .copyWith(color: theme.colorScheme.onBackground);

    if (favourites.isEmpty) {
      return Center(child: Text("No favourites yet", style: styleLarge));
    }

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Text("You have ${favourites.length} favourites:",
              style: styleSmall),
        ),
        for (var favourite in favourites)
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(favourite.asLowerCase, style: styleSmall),
          )
      ],
    );
  }
}
