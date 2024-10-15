import 'package:flutter/material.dart';

class GridExtentPage extends StatefulWidget {
  @override
  State<GridExtentPage> createState() => _GridExtentState();
}

class _GridExtentState extends State<GridExtentPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridViewExtent'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max, // 添加这一行
        children: [
          Text('如果你希望网格项的宽度为固定值，可以使用 GridView.extent。这种方法允许你定义每个项的最大宽度，而 Flutter 会自动计算列数'),
          const SizedBox(height: 10),
          Text("使用 Expanded 小部件包裹 GridView.extent，确保 GridView 可以占据可用的空间，使其在屏幕中显示得更好"),
          const SizedBox(height: 10),
          Expanded(
            child: GridView.extent(
              maxCrossAxisExtent: 200, // 每个项的最大宽度
              childAspectRatio: 1, // 控制每个项的宽高比
              children: List.generate(20, (index) {
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
