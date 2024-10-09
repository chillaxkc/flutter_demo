import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final List<String> items = List.generate(20, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('列表页'),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return CustomListTile(item: items[index]);
        },
      ),
    );
  }
}

class CustomListTile extends StatefulWidget {
  final String item;

  CustomListTile({required this.item});

  @override
  _CustomListTileState createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  bool _isSelected = false;

  void _toggleSelection() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45, // 设置高度
      child: ListTile(
        title: Text(widget.item),
        subtitle: Text('这是子标题'),
        leading: Icon(Icons.person),
        trailing: IconButton(
          icon: Icon(_isSelected ? Icons.check : Icons.arrow_right),
          onPressed: _toggleSelection,
        ),
        onTap: _toggleSelection,
        horizontalTitleGap: 5,
      ),
    );
  }
}
