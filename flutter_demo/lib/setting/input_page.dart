import 'package:flutter/material.dart';
import 'package:flutter_demo/setting/input_page_keyboard02.dart';
import 'input_page_keyboard01.dart';
import 'input_page_keyboard03.dart';
/*
* 1. 使用 Padding
你可以将 Column 的子组件包裹在 Padding 组件中，从而设置左右间隙。
2. 使用 Expanded 和 Spacer
你可以使用 Expanded 和 Spacer 来实现水平方向的间隙。
* */
class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // GlobalKey 用于在应用程序中全局访问表单状态
  final _formKey = GlobalKey<FormState>();
  String _name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Enter your name',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  print('当前输入内容: $value');
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null; // 返回 null 表示校验通过
                },
                onSaved: (value) {
                  print(" onSaved value: $value");
                  _name = value ?? "";
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // 调用 FormState 的 validate 方法来触发所有 TextFormField 的 validator 校验
                  if (!mounted) return;
                  bool validate = _formKey.currentState?.validate() ?? false;
                  if (mounted && validate ) {
                    _formKey.currentState?.save();
                    print('You entered: $_name');
                  }
                },
                child: Text('Submit'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InputKeyboardOnePage()),
                  );
                },
                child: Text('监听键盘01'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InputKeyboardThreePage()),
                  );
                },
                child: Text('监听键盘02'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
