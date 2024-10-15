import 'package:flutter/material.dart';

class GridPage extends StatefulWidget {
  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('网格布局GridBuild'),
      ),
      body: buildGridView(),
    );
  }

  Widget buildGridView() {
    return GridView.builder(
      padding: const EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      itemCount: 9,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            print('Item $index is clicked'); // 打印被点击的格子索引
          },
          child: Container(
            color: Colors.blue[100 * (index % 9)],
            alignment: Alignment.center,
            child: Text(
              'Item $index',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        );
      },
    );
  }
}
