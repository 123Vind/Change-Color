import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  List<Color> c = [Colors.red, Colors.green, Colors.blue, Colors.orange];
  Color s = Colors.green;
  void change() {
    setState(() {
      s = c[counter];
      counter++;
      if (counter >= c.length) {
        counter = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("practice1"),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: s,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Color:" + s.toString()),
                ElevatedButton(
                    onPressed: change,
                    child: Text('Change Color ' + (counter + 1).toString())),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
