import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:szyfrator_demo/myHomePage.dart';
import 'package:szyfrator_demo/szyfrator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Szyfrator_demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}