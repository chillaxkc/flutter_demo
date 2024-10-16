import 'package:flutter/material.dart';

class AlertDialogPage extends StatefulWidget {
  @override
  State<AlertDialogPage> createState() => _AlertDialogState();
}

class _AlertDialogState extends State<AlertDialogPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AlertDialog 示例'),
      ),
      body: Column(children: [
        Text('AlertDialog'),
        SizedBox(height: 10),
        ElevatedButton(
          child: Text('显示AlertDialog'),
          onPressed: () {
            _showAlertDialog(context);
          }
        )
      ]),
    );
  }

  void _showAlertDialog(BuildContext context){
    showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
              title: Text('提示'),
              content: Text('您确定要退出吗？'),
              actions: [
                TextButton(
                    child: Text('取消'),
                    onPressed: (){
                      Navigator.of(context).pop();
                    }
                ),
                TextButton(
                    child: Text('确定'),
                    onPressed: (){
                      Navigator.of(context).pop();
                    }
                )
              ]
          );
        }
    );
  }
}
