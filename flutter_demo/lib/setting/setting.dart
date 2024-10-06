import 'package:flutter/material.dart';
import 'base_use_page.dart';

class SettingsTab extends StatefulWidget {

  // const SettingsTab({super.key, required this.title});
  //
  // final String title;

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {

  final List<String> _items = [
    '基础使用',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
        });
  }

  // 上面onTap方法点击不能index跳转不同方法
  void _onItemTapped(int index) {
    print('Setting $index');
    switch (index) {
      case 0:
        pushTextAction();
        break;
      case 1:
        print('Setting $index');
        break;
      case 2:
        print('Setting $index');
        break;
      default:
        print('Setting $index');
    }
  }
  void pushTextAction(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BaseUsePage()),
    );
  }
}