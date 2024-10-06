import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('button page'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Text('Text'),
        ElevatedButton(
          onPressed: () {
            print('Button 1 pressed');
          },
          child: Text('Button 1'),
        ),
        IconButton(
          onPressed: () {
            print('Image Button pressed');
          },
          icon: Icon(Icons.home),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/icon_flutter.png', // 替换为你的图片路径
              height: 50.0,
              width: 50.0,
            ),
            SizedBox(height: 8.0),
            Text(
              'Flutter',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            print('Button 1 pressed');
          },
          child: Text('Custom Button'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, // 背景颜色
            foregroundColor: Colors.white, // 文字颜色
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0), // 内边距
            shape: RoundedRectangleBorder( // 圆角
              borderRadius: BorderRadius.circular(8.0),
            ),
            elevation: 4.0, // 阴影高度
            shadowColor: Colors.grey.withOpacity(0.5), // 阴影颜色
            side: BorderSide.none, // 边框
            minimumSize: Size(120.0, 48.0), // 最小尺寸
            splashFactory: InkRipple.splashFactory, // 水波纹效果
            overlayColor: MaterialStateColor.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.grey.withOpacity(0.2);
              }
              return Colors.transparent;
            }), // 按下时的颜色覆盖
            textStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold), // 文字样式
            alignment: Alignment.center, // 文字位置
            visualDensity: VisualDensity.compact, // 视觉密度
          ),
        ),
      ]),
    );
  }
}
