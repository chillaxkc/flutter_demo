import 'package:flutter/material.dart';

class ListSecondPage extends StatefulWidget {
  @override
  State<ListSecondPage> createState() => _ListSecondPageState();
}

class _ListSecondPageState extends State<ListSecondPage> {

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
  final String _imageUrl = 'https://images.dog.ceo/breeds/terrier-fox/n02095314_2687.jpg';
  void _toggleSelection() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70, // 设置高度
      child: buildRowWithImage(imageUrl: _imageUrl),
    );
  }

  Widget buildRowWithImage({required String imageUrl}) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0), // 设置圆角半径
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
            width: 50.0,
            height: 50.0,
          ),
        ),
        SizedBox(width: 16),
        Container(
          width: MediaQuery.of(context).size.width - 80,
          color: Colors.grey,
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Text(widget.item),
              SizedBox(height: 8),
              Text('Description'),
            ],
          ),
        )
      ],
    );
  }

}


