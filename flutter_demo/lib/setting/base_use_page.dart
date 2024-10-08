
import 'package:flutter/material.dart';
import 'package:flutter_demo/setting/list_page_second.dart';
import 'package:flutter_demo/setting/text_page.dart';
import 'button_page.dart';
import 'image_page.dart';
import 'input_page.dart';
import 'list_page.dart';
class BaseUsePage extends StatefulWidget {

  @override
  State<BaseUsePage> createState() => _BaseUsePageState();
}

class _BaseUsePageState extends State<BaseUsePage> {

  final List<String> _items = [
    '文本',
    '按钮',
    '图片',
    '输入框',
    '列表',
    '列表2',
    '卡片',
    '对话框',
    '进度条',
    '进度指示器',
    '底部导航栏',
    '底部弹出框',
    '底部弹出菜单',
    '底部弹出选项卡',
    '底部弹出选项卡',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('基础使用'),
      ),
      body: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index){
            return ListTile(
              leading: Icon(Icons.settings),
              title: Text('${_items[index]}'),
              subtitle: Text('Subtitle $index'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                _onItemTapped(index);
              },
            );
          }),
    );
  }

  // 上面onTap方法点击不能index跳转不同方法
  void _onItemTapped(int index) {
    print('Setting $index');
    switch (index) {
      case 0:
        pushTextAction(TextPage());
        break;
      case 1:
        pushTextAction(ButtonPage());
        break;
      case 2:
        pushTextAction(ImagePage());
        break;
      case 3:
        pushTextAction(InputPage());
        break;
      case 4:
        pushTextAction(ListPage());
      case 5:
        pushTextAction(ListSecondPage());
        break;
      default:
        print('Setting $index');
    }
  }
  void pushTextAction(Widget page){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}