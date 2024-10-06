import 'package:flutter/material.dart';

// 使用 FocusNode 来监听键盘焦点状态
// ---------目前该方法暂不可用-----------

class InputKeyboardSecondPage extends StatefulWidget {
  @override
  State<InputKeyboardSecondPage> createState() => _InputKeyboardSecondPageState();
}

class _InputKeyboardSecondPageState extends State<InputKeyboardSecondPage> {

  final FocusNode _focusNode = FocusNode();
  bool _isKeyboardVisible = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        _isKeyboardVisible = _focusNode.hasFocus;
      });
      if (_focusNode.hasFocus) {
        print("键盘弹出");
      } else {
        print("键盘收起");
      }
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FocusNode 监听键盘'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              focusNode: _focusNode,
              decoration: InputDecoration(
                labelText: "点击输入框，弹出键盘",
              ),
            ),
            SizedBox(height: 20),
            Text(
              _isKeyboardVisible ? "键盘已弹出" : "键盘已收起",
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
