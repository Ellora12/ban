import 'package:flutter/material.dart';

class weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        //drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Weather Forcast'),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
      );
}
