import 'package:flutter/material.dart';

/*
* * CustomScrollView 用于创建更复杂的滚动效果，支持多个 Sliver 子项，
* 如 SliverAppBar 和 SliverList。
* */
class CustomScrollPage extends StatefulWidget {
  @override
  State<CustomScrollPage> createState() => _CustomScrollPageState();
}

class _CustomScrollPageState extends State<CustomScrollPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('CustomScrollView'),
              background: Image.network(
                'https://via.placeholder.com/350x150',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}
