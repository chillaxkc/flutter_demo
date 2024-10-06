import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

/*
1. 使用 ClipRRect
ClipRRect 可以用来裁剪其子组件，并设置圆角。
2. 使用 RoundedRectangleBorder
结合 DecoratedBox 或 Container 使用 RoundedRectangleBorder 来设置圆角。
3. 使用 CircleAvatar
对于较小的圆形头像，可以使用 CircleAvatar。
* */

class ImagePage extends StatefulWidget {
  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {

  final String _imageUrl = 'https://images.dog.ceo/breeds/terrier-fox/n02095314_2687.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text'),
      ),
      backgroundColor: Colors.grey[500],
      body: Column(children: [
        Image.asset(
          'assets/images/icon_flutter.png', // 替换为你的图片路径
          fit: BoxFit.cover, // 使图片填充整个容器
          width: 40.0,
          height: 40.0,
        ),
        CachedNetworkImage(
          imageUrl: _imageUrl,
          fit: BoxFit.cover,
          width: 200.0,
          height: 200.0,
          placeholder: (context, url) => CircularProgressIndicator(), // 加载占位符
          errorWidget: (context, url, error) => Icon(Icons.error), // 错误占位符
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0), // 设置圆角半径
          child: Image.network(
            _imageUrl,
            fit: BoxFit.cover,
            width: 100.0,
            height: 100.0,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0), // 设置圆角半径
            image: DecorationImage(
              image: NetworkImage(_imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          width: 150.0,
          height: 150.0,
        ),
        CircleAvatar(
          radius: 100.0, // 设置半径
          backgroundImage: NetworkImage(_imageUrl),
        )
      ]),
    );
  }
}
