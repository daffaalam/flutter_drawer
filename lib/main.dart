import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0)
              return DrawerHeader(
                child: Container(),
              );
            else
              return ListTile(
                title: Text('Halaman $index'),
                onTap: () {
                  Navigator.pop(context);
                  setState(() {
                    currentIndex = index;
                  });
                },
              );
          },
        ),
      ),
      body: HomeContent(
        number: currentIndex,
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  final int number;

  HomeContent({this.number});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '$number',
        style: TextStyle(
          fontSize: 64,
        ),
      ),
    );
  }
}
