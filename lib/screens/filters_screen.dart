import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  static const routeName = '/filtered-screens';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text(
          'Filtered Screens',
        ),
      ),
    );
  }
}
