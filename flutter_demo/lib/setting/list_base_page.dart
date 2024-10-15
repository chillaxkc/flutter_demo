import 'package:flutter/material.dart';
import 'listpage/list_page.dart';
import 'listpage/list_page_second.dart';
import 'listpage/grid_page.dart';
import 'listpage/grid_view_count_page.dart';
import 'listpage/grid_extent_page.dart';
import 'listpage/grid_tile_page.dart';

class ListBasePage extends StatefulWidget {

  @override
  State<ListBasePage> createState() => _ListBasePageState();
}

class _ListBasePageState extends State<ListBasePage> {

  final List<String> _items = [
    '列表',
    '列表2',
    '网格布局GridViewbBuilder',
    '网格布局GridViewCount',
    '网格布局GridExtentPage',
    '网格布局GridTilePage'
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
        pushTextAction(ListPage());
        break;
      case 1:
        pushTextAction(ListSecondPage());
        break;
      case 2:
        pushTextAction(GridPage());
        break;
      case 3:
        pushTextAction(GridViewCountPage());
        break;
      case 4:
        pushTextAction(GridExtentPage());
        break;
      case 5:
        pushTextAction(GridTilePage());
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