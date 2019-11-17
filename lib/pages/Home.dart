import 'package:flutter/material.dart';
import 'package:mamgulshanapp1/Utils.dart';
import 'package:mamgulshanapp1/pages/About.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var items = [
      ["Item 1",(){
        Navigator.of(context).pop();
      }],
      ["Item 1",(){
        Navigator.of(context).pop();
      }]
    ];

    var menuViews = List<Widget>();
    items.forEach((item){
      menuViews.add(
          ListTile(
            title: Text(item[0]),
            onTap: item[1],
          )
      );
    });

    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.pink,
          child: ListView(
            children: menuViews,
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Home'),
          onPressed: (){
            navigate(context,About());
          },
        ),
      ),
    );
  }

}