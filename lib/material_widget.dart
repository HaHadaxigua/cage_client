import 'package:cage/gesture_detector.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TutorialHome extends StatelessWidget {
  const TutorialHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('Example'),
        actions: const [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          )
        ],
      ),
      body: const Center(
        child: MyButton(),
      ),
      floatingActionButton: const FloatingActionButton(
          tooltip: 'Add', child: Icon(Icons.add), onPressed: null),
    );
  }
}
