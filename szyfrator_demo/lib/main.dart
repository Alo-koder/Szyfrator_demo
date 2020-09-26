import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello World Flutter Application',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  // This widget is the home page of your application.

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _controller;
  String textOutput = "";

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void szyfrujTekst(String textInput) {
    String ciphering = "";
    for (int i = 0; i < textInput.length; i++) {
      switch (textInput[i]) {
        case 'g':
          ciphering += 'a';
          break;
        case 'a':
          ciphering += 'g';
          break;
        case 'd':
          ciphering += 'e';
          break;
        case 'e':
          ciphering += 'd';
          break;
        case 'r':
          ciphering += 'y';
          break;
        case 'y':
          ciphering += 'r';
          break;
        case 'p':
          ciphering += 'o';
          break;
        case 'o':
          ciphering += 'p';
          break;
        case 'l':
          ciphering += 'u';
          break;
        case 'u':
          ciphering += 'l';
          break;
        case 'k':
          ciphering += 'i';
          break;
        case 'i':
          ciphering += 'k';
          break;
        default:
          ciphering += textInput[i];
      }
    }
    textOutput = ciphering;
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Szyfrator GADERY POLUKI demo"),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextField(
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  //controller: _controller,
                  onChanged: (String textInput) async {
                    szyfrujTekst(textInput);
                  },
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.grey,
                  child: Text(textOutput),
                ),
              ),
        ]));
  }
}
