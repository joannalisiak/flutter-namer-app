import 'package:flutter/material.dart';

import 'package:namer_app/pages/favourites_page.dart';
import 'package:namer_app/pages/generator_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    Widget page;
    switch (selectedIndex) {
      case 0:
        page = GeneratorPage();
      case 1:
        page = FavouritesPage();
      default:
        throw UnimplementedError("no widget for $selectedIndex");
    }

    var mainArea = ColoredBox(
        color: colorScheme.surfaceVariant,
        child: AnimatedSwitcher(
            duration: Duration(milliseconds: 200), child: page));

    return Scaffold(body: LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 450) {
          return Column(
            children: [
              Expanded(child: mainArea),
              SafeArea(
                  child: BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.favorite), label: "Favourites")
                ],
              ))
            ],
          );
        } else {
          return Row(
            children: [
              SafeArea(
                  child: NavigationRail(
                extended: constraints.maxWidth >= 600,
                destinations: [
                  NavigationRailDestination(
                      icon: Icon(Icons.home), label: Text("Home")),
                  NavigationRailDestination(
                      icon: Icon(Icons.favorite), label: Text("Favourites"))
                ],
                selectedIndex: selectedIndex,
                onDestinationSelected: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                },
              )),
              Expanded(child: mainArea),
            ],
          );
        }
      },
    ));
  }
}
