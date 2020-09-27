import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:szyfrator_demo/main.dart';

class Szyfrator {
  String outputText = "gunwo";
  String getOutputText() {
    return this.outputText;
  }
  void szyfrujTekst(String inputText){
    String ciphering = "";
    for (int i = 0; i < inputText.length; i++) {
      switch (inputText[i]) {
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
          ciphering += inputText[i];
      }
    }
    outputText = ciphering;
  }
}

Szyfrator szyfrator = new Szyfrator();
