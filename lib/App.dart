import 'package:flutter/material.dart';
import 'package:mamgulshanapp1/pages/Home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      /*builder: (ctx, child) {
        return Scaffold(
          drawer: Drawer(),
          body: child,
        );
      },*/
    );
  }
}
