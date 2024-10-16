import 'package:flutter/material.dart';
import 'alert_dialog_page.dart';
import 'simple_dialog_page.dart';

class AlertListPage extends StatefulWidget {
  @override
  State<AlertListPage> createState() => _AlertListState();
}

class _AlertListState extends State<AlertListPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('alert 示例'),
      ),
      body: Column(children: [
        SizedBox(height: 10),
        ElevatedButton(
            child: Text('显示AlertDialog'),
            onPressed: () {
              // 跳转到AlertDialog页面
              Navigator.push(context, MaterialPageRoute(builder: (context) => AlertDialogPage()));
            }
        ),
        SizedBox(height: 10),
        ElevatedButton(
            child: Text('显示SimpleDialog'),
            onPressed: () {
              // 跳转到AlertDialog页面
              Navigator.push(context, MaterialPageRoute(builder: (context) => SimpleDialogPage()));
            }
        ),
      ]),
    );
  }
}
