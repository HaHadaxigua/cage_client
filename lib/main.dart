import 'package:cage/flutter_action/counter.dart';
import 'package:cage/routes/router.dart';
import 'package:cage/study/counter.dart';
import 'package:flutter/material.dart';

import 'login/login.dart';
import 'study/basic_widget.dart';

void main() => runApp(MyApp());

// StatelessWidget 是不可变的组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "new_page": (context) => const NewRouter(),
        "tip_page": (context) => const TipRouter(text: "ssasdqweqw"),
        "login": (context) => Login(),
        "/": (context) => MyHomePage(title: "Home demo"),
      },
      title: "Welcome to flutter",
      theme: ThemeData.light(),
      onGenerateRoute: (RouteSettings settings) {},
    );
  }
}
