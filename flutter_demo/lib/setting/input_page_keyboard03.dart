import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class InputKeyboardThreePage extends StatefulWidget {
  @override
  State<InputKeyboardThreePage> createState() => _InputKeyboardThreeState();
}

class _InputKeyboardThreeState extends State<InputKeyboardThreePage> {
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();

    // 使用 KeyboardVisibilityController 监听键盘状态
    KeyboardVisibilityController().onChange.listen((bool visible) {
      setState(() {
        _isKeyboardVisible = visible;
      });
      if (visible) {
        print("键盘弹出");
      } else {
        print("键盘收起");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KeyboardVisibility 监听键盘"),
      ),
      body: Column(children: [
        Text(
          _isKeyboardVisible ? "键盘已弹出" : "键盘已收起",
          style: TextStyle(fontSize: 24),
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Enter content',
          ),
          onChanged: (value) {
            print('输入内容：$value');
          },
        ),
      ]),
    );
  }
}
