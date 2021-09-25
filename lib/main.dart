import 'package:flutter/material.dart';

import 'basic_widget.dart';
import 'material_widget.dart';


void main() => runApp(MyApp());

// StatelessWidget 是不可变的组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Welcome to flutter",
      home: const TutorialHome(),
      theme: ThemeData.light(),
    );
  }
}

