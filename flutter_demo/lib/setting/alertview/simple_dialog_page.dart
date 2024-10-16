import 'package:flutter/material.dart';

class SimpleDialogPage extends StatefulWidget {
  @override
  State<SimpleDialogPage> createState() => _SimpleDialogState();
}

class _SimpleDialogState extends State<SimpleDialogPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text'),
      ),
      body: Column(children: [
        Text('AlertDialog'),
        SizedBox(height: 10),
        ElevatedButton(
            child: Text('显示AlertDialog'),
            onPressed: () {
              _showSimpleDialog(context);
            }
        )
      ]),
    );
  }

  void _showSimpleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('请选择一个选项'),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop(); // 关闭对话框
                _handleOptionSelection('选项1');
              },
              child: Text('选项1'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop(); // 关闭对话框
                _handleOptionSelection('选项2');
              },
              child: Text('选项2'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop(); // 关闭对话框
                _handleOptionSelection('选项3');
              },
              child: Text('选项3'),
            ),
          ],
        );
      },
    );
  }

  void _handleOptionSelection(String option) {
    print('选择了: $option');
  }
}
