import 'package:flutter/material.dart';

import 'content_one.dart';
import 'content_three.dart';
import 'content_two.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _listContent = <Widget>[
    ContentOne(),
    ContentTwo(),
    ContentThree(),
  ];
  int _contentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer"),
      ),
      body: _listContent[_contentIndex],
      drawer: Drawer(
        child: ListView.builder(
          itemCount: _listContent.length + 1,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return DrawerHeader(
                child: FlutterLogo(),
              );
            } else {
              return ListTile(
                title: Text('Content $index'),
                onTap: () {
                  Navigator.pop(context);
                  _contentIndex = index - 1;
                  setState(() {});
                },
              );
            }
          },
        ),
      ),
    );
  }
}
