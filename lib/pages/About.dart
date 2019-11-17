import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  TextEditingController controller = new TextEditingController();
  List<String> items;

  @override
  void initState() {
    items = [];
    super.initState();
  }

  addItem(){
    var text = controller.text;
    setState(() {
      items.add(text);
    });
    controller.clear();
  }

  removeItem(int index){
    setState(() {
      items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('About'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: TextFormField(
                  controller: controller,
                ),
              ),
              RaisedButton(
                child: Text("Add"),
                onPressed: addItem,
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (ctx,index){
                return ListTile(
                  title: Text(items[index]),
                  onTap: (){
                    removeItem(index);
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}