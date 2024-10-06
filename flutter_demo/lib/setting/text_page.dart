import 'package:flutter/material.dart';
import 'package:flutter_demo/utils/text_utils.dart';
import 'package:flutter_demo/utils/rich_text_utils.dart';

class TextPage extends StatefulWidget {
  @override
  State<TextPage> createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {


  @override
  Widget build(BuildContext context) {

    String text = "Hello, 文本宽高";
    double fontSize = 24.0;

    // 计算文本宽度、高度
    final textSize = TextSizeUtils.calculateTextSize(text, fontSize);

    final rich_text = 'flutter是最火的跨平台解决方案之一';
    final styles = TextStyle(fontSize: 24.0,color: Colors.red);
    final richText = RichTextUtils.buildRichText(rich_text, 11, 3, styles);

    final text_auto = '这是一个很长的文本，它应该在指定宽度内自动换行，并且如果只有一行，应该垂直居中显示。如果有多行，也应该自动换行。';
    final maxWidth = 200.0;
    final textStyle = TextStyle(fontSize: 15.0, color: Colors.black);

    final autoWrappingText = TextSizeUtils.buildAutoWrappingText(text_auto, maxWidth, textStyle);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Text'),
      ),
      body: Column(children: [
        Text('Text'),
        Text(
          'Text',
          style: TextStyle(
            fontSize: 30,
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            decorationColor: Colors.red,
            decorationStyle: TextDecorationStyle.wavy,
          ),
        ),
        Text(
          'Text',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
        Container(
            width: 100,
            decoration: BoxDecoration(border: Border.all()),
            child: Text(
                overflow: TextOverflow.ellipsis,
                'Hello flutter, how are you?')
        ),
        const Text.rich(
          TextSpan(
            text: '富文本', // default text style
            children: <TextSpan>[
              TextSpan(text: ' beautiful ', style:
              TextStyle(fontStyle: FontStyle.italic,
              color: Colors.red)),
              TextSpan(text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Text(
          text,
          style: TextStyle(fontSize: fontSize),
        ),
        const SizedBox(height: 10),
        Text('计算字符串的宽度值是: ${textSize['width']}'),
        Text('计算字符串的高度值是: ${textSize['height']}'),
        richText,
        Text('文本自动换行：'),
        Container(
          height: 100, // 固定高度
          width: maxWidth,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          ),
          child: autoWrappingText,
        ),
      ]),
    );
  }
}
