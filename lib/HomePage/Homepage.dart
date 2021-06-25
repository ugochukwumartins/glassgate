import 'package:biawazo/Searchdeligate/DataSearch.dart';
import 'package:flutter/material.dart';

import 'LoginPage.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BIAWAZO'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: DataSearch(),
              );
            },
          ),
        ],
      ),
      body: HomePage(),
    );
  }
}
