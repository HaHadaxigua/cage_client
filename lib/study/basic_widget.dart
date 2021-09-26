import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AppBar extends StatelessWidget {
  const AppBar({Key? key, required this.title}) : super(key: key);
  final Widget title;

  @override
  Widget build(BuildContext context) {
    // AppBar widget 创建了一个高 56 独立像素，左右内边距 8 像素的 Container
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      //在容器内，MyAppBar 以 Row 布局来组织它的子元素。
      // 中间的子 widget（title widget），被标记为 Expanded，这意味着它会扩展以填充其它子 widget 未使用的可用空间。
      // 你可以定义多个Expanded 子 widget，并使用 flex 参数确定它们占用可用空间的比例。
      child: Row(
        children: [
          const IconButton(
              tooltip: 'Navigation menu',
              onPressed: null,
              icon: Icon(Icons.menu)),
          Expanded(
            child: title,
          ),
          const IconButton(
              tooltip: 'search', onPressed: null, icon: Icon(Icons.search))
        ],
      ),
    );
  }
}

/// MyScaffold widget 将其子 widget 组织在垂直列中。
/// 在列的顶部，它放置一个 MyAppBar 实例，并把 Text widget 传给它来作为应用的标题。
/// 把 widget 作为参数传递给其他 widget 是一个很强大的技术，它可以让你以各种方式创建一些可重用的通用组件。
/// 最后，MyScaffold 使用 Expanded 来填充剩余空间，其中包含一个居中的消息。
class MyScaffold extends StatelessWidget {
  const MyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          AppBar(
            title: Text(
              'Example Title',
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          ),
          const Expanded(
            child: Center(
              child: Text('hello world'),
            ),
          ),
        ],
      ),
    );
  }
}
