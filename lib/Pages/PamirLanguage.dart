import 'package:flutter/material.dart';

/// Flutter code sample for pinned [SearchAnchor] while scrolling.

void main() {
  runApp(const PinnedSearchBarApp());
}

class PinnedSearchBarApp extends StatefulWidget {
  const PinnedSearchBarApp({super.key});

  @override
  State<PinnedSearchBarApp> createState() => _PinnedSearchBarAppState();
}

class _PinnedSearchBarAppState extends State<PinnedSearchBarApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true, colorSchemeSeed: const Color(0xff6750a4)),
      home: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                clipBehavior: Clip.none,
                shape: const StadiumBorder(),
                scrolledUnderElevation: 0.0,
                titleSpacing: 0.0,
                backgroundColor: Colors.transparent,
                floating:
                true, // We can also uncomment this line and set `pinned` to true to see a pinned search bar.
                title: SearchAnchor.bar(
                  suggestionsBuilder:
                      (BuildContext context, SearchController controller) {
                    return List<Widget>.generate(
                      5,
                          (int index) {
                        return ListTile(
                          titleAlignment: ListTileTitleAlignment.center,
                          title: Text('Fkj $index'),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



ListView(

children: const <Widget>[

ListTile(
leading: CircleAvatar(child: Text('A')),
),
ListTile(
title: Text('Абади, кори абади.'),
subtitle: Text("Вечный , вечное дело"),
trailing: Icon(Icons.favorite_rounded),
),
ListTile(
title: Text('Абади, кори абади.'),
subtitle: Text("Вечный , вечное дело"),
trailing: Icon(Icons.favorite_rounded),
),