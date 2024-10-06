// lib/utils/rich_text_utils.dart

import 'package:flutter/material.dart';

/// 用于构建富文本的工具类
class RichTextUtils {
  /// 构建带有不同样式部分的 RichText
  static RichText buildRichText(String text, int startIndex, int length, TextStyle style) {
    List<TextSpan> textSpans = [];

    // 添加普通文本部分
    if (startIndex > 0) {
      textSpans.add(TextSpan(
        text: text.substring(0, startIndex),
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ));
    }

    // 添加特殊样式部分
    textSpans.add(TextSpan(
      text: text.substring(startIndex, startIndex + length),
      style: style,
    ));

    // 添加剩余的普通文本部分
    if (startIndex + length < text.length) {
      textSpans.add(TextSpan(
        text: text.substring(startIndex + length),
        style: TextStyle(fontSize: 16.0, color: Colors.black),
      ));
    }

    return RichText(
      text: TextSpan(
        children: textSpans,
      ),
    );
  }
}
