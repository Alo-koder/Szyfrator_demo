import 'package:flutter/material.dart';
import 'package:szyfrator_demo/szyfrator.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Tu wpisz tekst",
                  border: InputBorder.none,
                ),
                onChanged: (String inputText) {
                  szyfrator.szyfrujTekst(inputText);
                  setState(() {});
                },
              ),
            ),
            Expanded(
              child: Container(
                  color: Colors.grey,
                  child: Text(szyfrator.getOutputText())
              ),
            )
          ],
        )
    );
  }
}