import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('自定义 Card 示例'),
      ),
      body: Column(children: [
          Card(
          elevation: 4.0,
          color: Colors.blueGrey.shade50,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          margin: EdgeInsets.all(16.0),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text('这是一个自定义卡片', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                SizedBox(height: 8.0),
                Text('卡片内可以包含多种内容'),
                SizedBox(height: 8.0),
                ElevatedButton(
                  onPressed: () {
                    print("click button");
                  },
                  child: Text('按钮'),
                ),
              ],
            ),
          ),
          ),
      ]),
    );
  }
}
