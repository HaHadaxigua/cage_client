import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// NewRouter 基本router
class NewRouter extends StatelessWidget {
  const NewRouter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Router"),
      ),
      body: const Center(
        child: Text("This is a new router"),
      ),
    );
  }
}

// 路由传值
class TipRouter extends StatelessWidget {
  const TipRouter({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("提示"),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(text),
              RaisedButton(
                onPressed: () => Navigator.pop(context, "我是返回值"),
                child: Text("返回"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
