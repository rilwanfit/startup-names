import 'dart:math';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome Rilwan'),
        ),
        body: Center(
          child: RandamWords(),
        ),
      ),
    );
  }
}

class RandamWords extends StatefulWidget {
  RandamWords({Key key}) : super(key: key);

  @override
  _RandamWordsState createState() => _RandamWordsState();
}

class _RandamWordsState extends State<RandamWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}
