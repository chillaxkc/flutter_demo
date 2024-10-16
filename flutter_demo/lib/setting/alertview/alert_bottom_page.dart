import 'package:flutter/material.dart';

class AlertBottomPage extends StatefulWidget {
  @override
  State<AlertBottomPage> createState() => _AlertBottomPageState();
}

class _AlertBottomPageState extends State<AlertBottomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              createBottomSheet(context);
            },
            child: Text('显示底部弹出框'),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            _showModalBottomSheet(context);
          }, child: Text("模态底部弹出框"))
        ],
      ),
    );
  }

  void createBottomSheet(BuildContext context) {
    // 显示底部弹出框
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Colors.red[100],
          width: double.infinity,
          height: 200, // 设置弹出框的高度
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                '这是底部弹出框showBottomSheet',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text('持久性底部弹出框不会阻止用户与屏幕其他部分的交互。'),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // 关闭弹出框
                },
                child: const Text('关闭'),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('这是一个模态底部弹出框'),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // 关闭底部弹出框
                  },
                  child: Text('关闭'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

}
