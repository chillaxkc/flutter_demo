import 'package:flutter/material.dart';

class GridViewCountPage extends StatefulWidget {
  @override
  State<GridViewCountPage> createState() => _GridViewCountState();
}

class _GridViewCountState extends State<GridViewCountPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridViewCount'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max, // 添加这一行
        children: [
          Text('GridView.count 创建一个固定数量的列。你可以设置每列的数量，并且 Flutter 会自动计算行数'),
          const SizedBox(height: 10),
          Text("使用 Expanded 小部件包裹 GridView.count，确保 GridView 可以占据可用的空间，使其在屏幕中显示得更好"),
          const SizedBox(height: 10),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2, // 设置每行的列数
              crossAxisSpacing: 10, // 设置横向间距
              mainAxisSpacing: 10, // 设置纵向间距
              children: List.generate(8, (index) { // 修改这里，生成更多项
                return Card(
                  child: Center(
                    child: Text('Item $index'),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
