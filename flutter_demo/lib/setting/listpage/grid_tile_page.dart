import 'package:flutter/material.dart';

class GridTilePage extends StatefulWidget {
  @override
  State<GridTilePage> createState() => _GridTileState();
}

class _GridTileState extends State<GridTilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridTile'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max, // 添加这一行
        children: [
          Text('GridTile 允许你更灵活地设计每个网格项，通常与 GridView 结合使用'),
          const SizedBox(height: 10),
          Text("使用 Expanded 小部件包裹 GridView.count，确保 GridView 可以占据可用的空间，使其在屏幕中显示得更好"),
          const SizedBox(height: 10),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(10, (index) {
                return GridTile(
                  header: Container(
                    color: Colors.blue,
                    child: Text('Header $index', style: TextStyle(color: Colors.white)),
                  ),
                  child: Container(
                    color: Colors.grey[300],
                    child: Center(
                      child: Text('Item $index'),
                    ),
                  ),
                  footer: Container(
                    color: Colors.blue,
                    child: Text('Footer $index', style: TextStyle(color: Colors.white)),
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
