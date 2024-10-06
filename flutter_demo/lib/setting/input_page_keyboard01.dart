import 'package:flutter/material.dart';

/*
* 1. 使用 MediaQuery 来监听键盘高度变化
通过 MediaQuery.of(context).viewInsets.bottom 可以获取键盘的高度，
* 并在其变化时监听键盘的弹出和收起。
* 可以使用 addListener 监听键盘高度变化*/
class InputKeyboardOnePage extends StatefulWidget {
  @override
  State<InputKeyboardOnePage> createState() => _InputKeyboardOnePageState();
}

class _InputKeyboardOnePageState extends State<InputKeyboardOnePage> with WidgetsBindingObserver{
// 保存键盘是否弹出的状态
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this); // 添加监听器
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this); // 移除监听器
    super.dispose();
  }

  // 当窗口的变化（包括键盘弹出、收起等）时，会回调此方法
  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    // 获取当前的键盘高度
    final bottomInset = WidgetsBinding.instance.window.viewInsets.bottom;
    if (bottomInset > 0.0 && !_isKeyboardVisible) {
      _isKeyboardVisible = true;
      print('键盘弹出');
    } else if (bottomInset == 0.0 && _isKeyboardVisible) {
      _isKeyboardVisible = false;
      print('键盘收起');
    }
    setState(() {}); // 更新UI
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('键盘监听示例'),
      ),
      body: Column(children: [
        Text(_isKeyboardVisible ? "键盘已弹出" : "键盘已收起",
          style: TextStyle(fontSize: 24),),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Enter content',
          ),
          onChanged: (value){
            print('输入内容：$value');
          },
        ),
      ]),
    );
  }
}
