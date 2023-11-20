import 'package:flutter/material.dart';
import 'package:namer_app/app_state.dart';
import 'package:provider/provider.dart';

class HistoryList extends StatefulWidget {
  const HistoryList({Key? key}) : super(key: key);

  @override
  State<HistoryList> createState() => _HistoryListState();
}

class _HistoryListState extends State<HistoryList> {
  final _key = GlobalKey();

  static const Gradient _maskingGradient = LinearGradient(
      colors: [Colors.transparent, Colors.black],
      stops: [0, 0.5],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter);

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppState>();
    appState.historyListKey = _key;

    return ShaderMask(
      shaderCallback: (bounds) => _maskingGradient.createShader(bounds),
      blendMode: BlendMode.dstIn,
      child: AnimatedList(
        key: _key,
        reverse: true,
        padding: EdgeInsets.only(top: 100),
        initialItemCount: appState.history.length,
        itemBuilder: (context, index, animation) {
          final current = appState.history[index];

          return SizeTransition(
            sizeFactor: animation,
            child: Center(
                child: TextButton.icon(
                    onPressed: () {
                      appState.toggleFavourite();
                    },
                    icon: appState.favourites.contains(current)
                        ? Icon(Icons.favorite, size: 12)
                        : SizedBox(),
                    label: Text(
                      current.asLowerCase,
                      semanticsLabel: current.asPascalCase,
                    ))),
          );
        },
      ),
    );
  }
}
