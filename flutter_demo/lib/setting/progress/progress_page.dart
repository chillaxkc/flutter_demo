import 'package:flutter/material.dart';
import 'linear_progress_indicator_page.dart';
import 'circular_progress_page.dart';


class ProgressPage extends StatefulWidget {
  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('progress 示例'),
      ),
      body: Column(children: [
        SizedBox(height: 10,),
        GestureDetector(
          onTap: () {
            // 点击时执行的代码
            Navigator.push(context, MaterialPageRoute(builder: (context) => LinearProgressIndicatorPage()));
          },
          child: Text('线性进度条'),
        ),
        SizedBox(height: 10,),
        GestureDetector(
          onTap: () {
            // 点击时执行的代码
            Navigator.push(context, MaterialPageRoute(builder: (context) => CircularProgressIndicatorPage()));
          },
          child: Text('圆形进度条'),
        ),
      ]),
    );
  }
}
