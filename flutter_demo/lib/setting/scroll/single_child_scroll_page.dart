import 'package:flutter/material.dart';

/*
* SingleChildScrollView 用于创建一个可以在任意方向上滚动的单个子项。
* */
class SingleChildScrollPage extends StatefulWidget {
  @override
  State<SingleChildScrollPage> createState() => _SingleChildScrollPageState();
}

class _SingleChildScrollPageState extends State<SingleChildScrollPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(50, (index) {
            return Container(
              height: 50,
              color: index % 2 == 0 ? Colors.blue : Colors.grey,
              child: Center(
                child: Text('Item $index'),
              ),
            );
          }),
        ),
      ),
    );
  }
}
