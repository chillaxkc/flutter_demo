import 'package:flutter/material.dart';
import 'single_child_scroll_page.dart';
import 'custom_scroll_page.dart';

class ScrollPage extends StatefulWidget {
  @override
  State<ScrollPage> createState() => _ScrollPageState();
}

class _ScrollPageState extends State<ScrollPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScrollPage'),
      ),
      body: Column(children: [
        SizedBox(height: 10),
        ElevatedButton(
            child: Text('显示SingleChildScrollPage'),
            onPressed: () {
              // 跳转到AlertDialog页面
              Navigator.push(context, MaterialPageRoute(builder: (context) => SingleChildScrollPage()));
            }
        ),
        SizedBox(height: 10),
        ElevatedButton(
            child: Text('显示 CustomScrollPage'),
            onPressed: () {
              // 跳转到AlertDialog页面
              Navigator.push(context, MaterialPageRoute(builder: (context) => CustomScrollPage()));
            }
        ),
      ]),
    );
  }
}
