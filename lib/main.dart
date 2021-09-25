import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

// StatelessWidget 是不可变的组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Welcome to flutter",
        home: Scaffold(
          appBar: AppBar(
            title: const Text("AppBar____Welcome to flutter"),
          ),
          body: const Center(
            child: RandomWords(),
          ),
        ));
  }
}

// RandomWords 主要作用就是用来创建其状态类 State
class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}
