import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var tappedCnt = 0;
    var doubleCnt = 0;
    return GestureDetector(
      onTap: () {
        tappedCnt++;
        print('MyButton was tapped! $tappedCnt');
      },
      onDoubleTap: (){
        doubleCnt++;
        print("double click $doubleCnt");
      },
      child: Container(
        height: 50.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: const Center(
          child: Text('Engage'),
        ),
      ),
    );
  }
}
