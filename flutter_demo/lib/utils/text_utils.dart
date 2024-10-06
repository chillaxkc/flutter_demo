import 'package:flutter/material.dart';

/// 用于计算文本大小的工具类
class TextSizeUtils {
  /// 计算给定文本的宽度和高度
  static Map<String, double> calculateTextSize(String text, double fontSize) {
    // 创建 TextPainter 对象
    final textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: TextStyle(fontSize: fontSize, color: Colors.black),
      ),
      textDirection: TextDirection.ltr,
    );

    // 布局文本以获取大小
    textPainter.layout();

    return {
      'width': textPainter.width,
      'height': textPainter.height,
    };
  }

  /// 构建自动换行并垂直居中的文本
  static Widget buildAutoWrappingText(
      String text,
      double maxWidth,
      TextStyle textStyle,
      ) {
    return Container(
      width: maxWidth,
      alignment: Alignment.center,
      child: Text(
        text,
        style: textStyle,
        maxLines: null,
        overflow: TextOverflow.clip,
        textAlign: TextAlign.justify,
        softWrap: true,
        textScaleFactor: 1.0,
      ),
    );
  }
}